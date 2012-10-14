.class public Lcom/miui/backup/ui/BaseSelectList;
.super Landroid/app/Activity;
.source "BaseSelectList.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;
    }
.end annotation


# instance fields
.field protected CONTENT_BASE_DIR:Ljava/io/File;

.field private mAppListView:Landroid/widget/ExpandableListView;

.field protected mBackupRestoreDir:Ljava/io/File;

.field private mCheckCount:I

.field private mConnection:Landroid/content/ServiceConnection;

.field protected mContactInfo:Lcom/miui/backup/AppInfo;

.field private mIsBound:Z

.field protected mNextButton:Landroid/widget/Button;

.field private mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

.field private mSelectMode:I

.field protected mService:Lcom/miui/backup/BackupService;

.field protected mSortDescComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/miui/backup/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSysDataCheckCount:I

.field protected mSysDataInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/backup/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUserAppCheckCount:I

.field protected mUserAppInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/backup/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    iput-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mBackupRestoreDir:Ljava/io/File;

    .line 50
    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    .line 66
    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    .line 67
    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I

    .line 68
    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I

    .line 375
    new-instance v0, Lcom/miui/backup/ui/BaseSelectList$5;

    invoke-direct {v0, p0}, Lcom/miui/backup/ui/BaseSelectList$5;-><init>(Lcom/miui/backup/ui/BaseSelectList;)V

    iput-object v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSortDescComparator:Ljava/util/Comparator;

    .line 387
    iput-boolean v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mIsBound:Z

    .line 388
    iput-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mService:Lcom/miui/backup/BackupService;

    .line 389
    new-instance v0, Lcom/miui/backup/ui/BaseSelectList$6;

    invoke-direct {v0, p0}, Lcom/miui/backup/ui/BaseSelectList$6;-><init>(Lcom/miui/backup/ui/BaseSelectList;)V

    iput-object v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mConnection:Landroid/content/ServiceConnection;

    .line 426
    return-void
.end method

.method static synthetic access$000(Lcom/miui/backup/ui/BaseSelectList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/miui/backup/ui/BaseSelectList;->checkFolder()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/backup/ui/BaseSelectList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/backup/ui/BaseSelectList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/backup/ui/BaseSelectList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/miui/backup/ui/BaseSelectList;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/miui/backup/ui/BaseSelectList;->selectAllChanged(ZI)V

    return-void
.end method

.method private checkFolder()V
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/miui/backup/Customization;->MIUI_BASE_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    sget-object v0, Lcom/miui/backup/Customization;->MIUI_BASE_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 141
    :cond_0
    sget-object v0, Lcom/miui/backup/Customization;->APP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    sget-object v0, Lcom/miui/backup/Customization;->APP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 144
    :cond_1
    sget-object v0, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    sget-object v0, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 147
    :cond_2
    return-void
.end method

.method private clickSysDataChild(I)V
    .locals 3
    .parameter "childPosition"

    .prologue
    const/4 v2, 0x1

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, appInfo:Lcom/miui/backup/AppInfo;
    iget-object v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v0, Lcom/miui/backup/AppInfo;

    .line 201
    .restart local v0       #appInfo:Lcom/miui/backup/AppInfo;
    iget-boolean v1, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    .line 202
    iget-boolean v1, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    if-eqz v1, :cond_1

    .line 203
    iget v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    .line 204
    iget v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I

    .line 209
    :goto_1
    return-void

    .line 201
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 206
    :cond_1
    iget v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    .line 207
    iget v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I

    goto :goto_1
.end method

.method private clickUserAppChild(I)V
    .locals 3
    .parameter "childPosition"

    .prologue
    const/4 v2, 0x1

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, appInfo:Lcom/miui/backup/AppInfo;
    iget-object v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v0, Lcom/miui/backup/AppInfo;

    .line 214
    .restart local v0       #appInfo:Lcom/miui/backup/AppInfo;
    iget-boolean v1, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    .line 215
    iget-boolean v1, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    if-eqz v1, :cond_1

    .line 216
    iget v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    .line 217
    iget v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I

    .line 222
    :goto_1
    return-void

    .line 214
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 219
    :cond_1
    iget v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    .line 220
    iget v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I

    goto :goto_1
.end method

.method private notifyNextButton()V
    .locals 2

    .prologue
    .line 322
    iget v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    if-lez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mNextButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mNextButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private selectAllChanged(ZI)V
    .locals 2
    .parameter "selectAll"
    .parameter "groupPosition"

    .prologue
    const/4 v1, 0x1

    .line 286
    iget v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    if-nez v0, :cond_2

    .line 287
    if-nez p2, :cond_1

    .line 288
    invoke-virtual {p0, p1}, Lcom/miui/backup/ui/BaseSelectList;->selectAllSysData(Z)V

    .line 298
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->changeSelectState()V

    .line 299
    return-void

    .line 289
    :cond_1
    if-ne p2, v1, :cond_0

    .line 290
    invoke-virtual {p0, p1}, Lcom/miui/backup/ui/BaseSelectList;->selectAllUserApp(Z)V

    goto :goto_0

    .line 292
    :cond_2
    iget v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    if-ne v0, v1, :cond_3

    .line 293
    invoke-virtual {p0, p1}, Lcom/miui/backup/ui/BaseSelectList;->selectAllSysData(Z)V

    goto :goto_0

    .line 294
    :cond_3
    iget v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 295
    invoke-virtual {p0, p1}, Lcom/miui/backup/ui/BaseSelectList;->selectAllUserApp(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected changeSelectState()V
    .locals 2

    .prologue
    .line 334
    iget v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I

    iget v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    .line 335
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mAppListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;

    invoke-virtual {v0}, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->notifyDataSetChanged()V

    .line 336
    invoke-direct {p0}, Lcom/miui/backup/ui/BaseSelectList;->notifyNextButton()V

    .line 337
    return-void
.end method

.method doBindService(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const-class v2, Lcom/miui/backup/BackupService;

    .line 411
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/backup/BackupService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 412
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/miui/backup/BackupService;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/backup/ui/BaseSelectList;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mIsBound:Z

    .line 413
    return-void
.end method

.method doUnbindService(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mIsBound:Z

    .line 421
    :cond_0
    return-void
.end method

.method protected getBackupRestoreDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getNextButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    const-string v0, ""

    return-object v0
.end method

.method protected getSelectedApps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/backup/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected getTaskType()I
    .locals 1

    .prologue
    .line 366
    const/4 v0, -0x1

    return v0
.end method

.method protected getTitleSecondaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    const-string v0, ""

    return-object v0
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    const-string v0, ""

    return-object v0
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    .line 165
    iget v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    if-nez v0, :cond_2

    .line 166
    if-nez p3, :cond_1

    .line 167
    invoke-direct {p0, p4}, Lcom/miui/backup/ui/BaseSelectList;->clickSysDataChild(I)V

    .line 177
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mAppListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    check-cast v0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;

    invoke-virtual {v0}, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->notifyDataSetChanged()V

    .line 178
    invoke-direct {p0}, Lcom/miui/backup/ui/BaseSelectList;->notifyNextButton()V

    .line 179
    const/4 v0, 0x0

    return v0

    .line 168
    :cond_1
    if-ne p3, v1, :cond_0

    .line 169
    invoke-direct {p0, p4}, Lcom/miui/backup/ui/BaseSelectList;->clickUserAppChild(I)V

    goto :goto_0

    .line 172
    :cond_2
    iget v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    if-ne v0, v1, :cond_3

    .line 173
    invoke-direct {p0, p4}, Lcom/miui/backup/ui/BaseSelectList;->clickSysDataChild(I)V

    goto :goto_0

    .line 174
    :cond_3
    iget v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 175
    invoke-direct {p0, p4}, Lcom/miui/backup/ui/BaseSelectList;->clickUserAppChild(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v3, 0x7f03000b

    invoke-virtual {p0, v3}, Lcom/miui/backup/ui/BaseSelectList;->setContentView(I)V

    .line 78
    const v3, 0x7f0a0020

    invoke-virtual {p0, v3}, Lcom/miui/backup/ui/BaseSelectList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ExpandableListView;

    iput-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mAppListView:Landroid/widget/ExpandableListView;

    .line 79
    iget-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mAppListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 80
    iget-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mAppListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->setContentBaseDir()V

    .line 83
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->getBackupRestoreDir()Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mBackupRestoreDir:Ljava/io/File;

    .line 85
    invoke-static {p0}, Lcom/miui/backup/SDCardMonitor;->getSDCardMonitor(Landroid/content/Context;)Lcom/miui/backup/SDCardMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    .line 86
    iget-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    invoke-virtual {v3, p0}, Lcom/miui/backup/SDCardMonitor;->addSdCardStatusListener(Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;)V

    .line 88
    const/high16 v3, 0x7f0a

    invoke-virtual {p0, v3}, Lcom/miui/backup/ui/BaseSelectList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 89
    .local v1, title:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->getTitleText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v3, 0x7f0a001f

    invoke-virtual {p0, v3}, Lcom/miui/backup/ui/BaseSelectList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 92
    .local v2, titleSec:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->getTitleSecondaryText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iput v5, p0, Lcom/miui/backup/ui/BaseSelectList;->mCheckCount:I

    .line 95
    iput v5, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I

    .line 96
    iput v5, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I

    .line 98
    const v3, 0x7f0a0021

    invoke-virtual {p0, v3}, Lcom/miui/backup/ui/BaseSelectList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mNextButton:Landroid/widget/Button;

    .line 99
    iget-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->getNextButtonText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 101
    iget-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mNextButton:Landroid/widget/Button;

    new-instance v4, Lcom/miui/backup/ui/BaseSelectList$1;

    invoke-direct {v4, p0}, Lcom/miui/backup/ui/BaseSelectList$1;-><init>(Lcom/miui/backup/ui/BaseSelectList;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->prepareAppInfos()V

    .line 121
    iget-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 122
    iput v5, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    .line 129
    :cond_0
    :goto_0
    new-instance v0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;

    const v3, 0x7f03000c

    const v4, 0x7f03000a

    invoke-direct {v0, p0, p0, v3, v4}, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;-><init>(Lcom/miui/backup/ui/BaseSelectList;Landroid/content/Context;II)V

    .line 131
    .local v0, appListAdapter:Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;
    iget-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mAppListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 132
    iget-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mAppListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->getGroupCount()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 134
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->changeSelectState()V

    .line 135
    return-void

    .line 123
    .end local v0           #appListAdapter:Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;
    :cond_1
    iget-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 124
    iput v6, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    goto :goto_0

    .line 125
    :cond_2
    iget-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 126
    const/4 v3, 0x2

    iput v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 228
    packed-switch p1, :pswitch_data_0

    .line 246
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 230
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 231
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f060056

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06000d

    new-instance v3, Lcom/miui/backup/ui/BaseSelectList$3;

    invoke-direct {v3, p0}, Lcom/miui/backup/ui/BaseSelectList$3;-><init>(Lcom/miui/backup/ui/BaseSelectList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060005

    new-instance v3, Lcom/miui/backup/ui/BaseSelectList$2;

    invoke-direct {v3, p0}, Lcom/miui/backup/ui/BaseSelectList$2;-><init>(Lcom/miui/backup/ui/BaseSelectList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    invoke-virtual {v0, p0}, Lcom/miui/backup/SDCardMonitor;->removeSdCardStatusListener(Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;)V

    .line 158
    invoke-virtual {p0, p0}, Lcom/miui/backup/ui/BaseSelectList;->doUnbindService(Landroid/content/Context;)V

    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 160
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 184
    iget v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    .line 187
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSdcardStatusChanged(Z)V
    .locals 2
    .parameter "mount"

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/BaseSelectList;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 194
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->finish()V

    .line 196
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 152
    invoke-virtual {p0, p0}, Lcom/miui/backup/ui/BaseSelectList;->doBindService(Landroid/content/Context;)V

    .line 153
    return-void
.end method

.method protected prepareAppInfos()V
    .locals 1

    .prologue
    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    .line 373
    return-void
.end method

.method protected selectAllSysData(Z)V
    .locals 3
    .parameter "selectAll"

    .prologue
    .line 302
    iget-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 303
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/backup/AppInfo;

    .line 305
    .local v0, app:Lcom/miui/backup/AppInfo;
    iput-boolean p1, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    .end local v0           #app:Lcom/miui/backup/AppInfo;
    :cond_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I

    .line 309
    .end local v1           #i:I
    :cond_1
    return-void

    .line 307
    .restart local v1       #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected selectAllUserApp(Z)V
    .locals 3
    .parameter "selectAll"

    .prologue
    .line 312
    iget-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 313
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/backup/AppInfo;

    .line 315
    .local v0, app:Lcom/miui/backup/AppInfo;
    iput-boolean p1, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v0           #app:Lcom/miui/backup/AppInfo;
    :cond_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I

    .line 319
    .end local v1           #i:I
    :cond_1
    return-void

    .line 317
    .restart local v1       #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected setContentBaseDir()V
    .locals 1

    .prologue
    .line 330
    sget-object v0, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    iput-object v0, p0, Lcom/miui/backup/ui/BaseSelectList;->CONTENT_BASE_DIR:Ljava/io/File;

    .line 331
    return-void
.end method

.method protected startExecution()V
    .locals 7

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->getSelectedApps()Ljava/util/ArrayList;

    move-result-object v0

    .line 252
    .local v0, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/backup/AppInfo;>;"
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList;->mContactInfo:Lcom/miui/backup/AppInfo;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList;->mContactInfo:Lcom/miui/backup/AppInfo;

    iget-boolean v4, v4, Lcom/miui/milk/common/AppInfo;->checked:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->getTaskType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 253
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    .local v2, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f060072

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f02000e

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f060073

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f06000d

    new-instance v6, Lcom/miui/backup/ui/BaseSelectList$4;

    invoke-direct {v6, p0, v0}, Lcom/miui/backup/ui/BaseSelectList$4;-><init>(Lcom/miui/backup/ui/BaseSelectList;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f060005

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 267
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 268
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 276
    .end local v1           #dialog:Landroid/app/Dialog;
    .end local v2           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList;->mBackupRestoreDir:Ljava/io/File;

    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->getTaskType()I

    move-result v5

    invoke-static {p0, v0, v4, v5}, Lcom/miui/backup/BackupRestoreTaskFactory;->createTask(Landroid/content/Context;Ljava/util/ArrayList;Ljava/io/File;I)Lcom/miui/backup/BackupRestoreTask;

    move-result-object v3

    .line 273
    .local v3, task:Lcom/miui/backup/BackupRestoreTask;
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v4, v3}, Lcom/miui/backup/BackupService;->executeTask(Lcom/miui/backup/BackupRestoreTask;)V

    .line 274
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->switchToProgressPage()V

    goto :goto_0
.end method

.method switchToProgressPage()V
    .locals 2

    .prologue
    .line 280
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/BaseSelectList;->startActivity(Landroid/content/Intent;)V

    .line 282
    invoke-virtual {p0}, Lcom/miui/backup/ui/BaseSelectList;->finish()V

    .line 283
    return-void
.end method
