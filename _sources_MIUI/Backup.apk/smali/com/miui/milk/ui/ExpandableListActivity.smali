.class public Lcom/miui/milk/ui/ExpandableListActivity;
.super Lcom/miui/milk/ui/CloudBaseActivity;
.source "ExpandableListActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;,
        Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;
    }
.end annotation


# instance fields
.field protected CONTENT_BASE_DIR:Ljava/io/File;

.field protected mAccountBackupItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountDataCheckCount:I

.field protected mAccountDataInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/backup/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mAppListAdapter:Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;

.field protected mBackupRestoreDir:Ljava/io/File;

.field private mCheckCount:I

.field protected mContactInfo:Lcom/miui/backup/AppInfo;

.field protected mDataListView:Landroid/widget/ExpandableListView;

.field private mSelectMode:I

.field protected mSimBackupItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSimDataCheckCount:I

.field protected mSimDataInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/backup/AppInfo;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/miui/milk/ui/CloudBaseActivity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mBackupRestoreDir:Ljava/io/File;

    .line 51
    iput v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I

    .line 67
    iput v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mCheckCount:I

    .line 68
    iput v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataCheckCount:I

    .line 69
    iput v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataCheckCount:I

    .line 244
    new-instance v0, Lcom/miui/milk/ui/ExpandableListActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/milk/ui/ExpandableListActivity$1;-><init>(Lcom/miui/milk/ui/ExpandableListActivity;)V

    iput-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSortDescComparator:Ljava/util/Comparator;

    .line 427
    return-void
.end method

.method static synthetic access$000(Lcom/miui/milk/ui/ExpandableListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/milk/ui/ExpandableListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataCheckCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/miui/milk/ui/ExpandableListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataCheckCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/milk/ui/ExpandableListActivity;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/miui/milk/ui/ExpandableListActivity;->selectAllChanged(ZI)V

    return-void
.end method

.method private clickAccountDataChild(I)V
    .locals 3
    .parameter "childPosition"

    .prologue
    const/4 v2, 0x1

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, appInfo:Lcom/miui/backup/AppInfo;
    iget-object v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v0, Lcom/miui/backup/AppInfo;

    .line 122
    .restart local v0       #appInfo:Lcom/miui/backup/AppInfo;
    iget-boolean v1, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    .line 123
    iget-boolean v1, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    if-eqz v1, :cond_1

    .line 124
    iget v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mCheckCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mCheckCount:I

    .line 125
    iget v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataCheckCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataCheckCount:I

    .line 130
    :goto_1
    return-void

    .line 122
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 127
    :cond_1
    iget v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mCheckCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mCheckCount:I

    .line 128
    iget v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataCheckCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataCheckCount:I

    goto :goto_1
.end method

.method private clickSimDataChild(I)V
    .locals 3
    .parameter "childPosition"

    .prologue
    const/4 v2, 0x1

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, appInfo:Lcom/miui/backup/AppInfo;
    iget-object v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v0, Lcom/miui/backup/AppInfo;

    .line 135
    .restart local v0       #appInfo:Lcom/miui/backup/AppInfo;
    iget-boolean v1, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    .line 136
    iget-boolean v1, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    if-eqz v1, :cond_1

    .line 137
    iget v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mCheckCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mCheckCount:I

    .line 138
    iget v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataCheckCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataCheckCount:I

    .line 143
    :goto_1
    return-void

    .line 135
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 140
    :cond_1
    iget v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mCheckCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mCheckCount:I

    .line 141
    iget v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataCheckCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataCheckCount:I

    goto :goto_1
.end method

.method private selectAllChanged(ZI)V
    .locals 2
    .parameter "selectAll"
    .parameter "groupPosition"

    .prologue
    const/4 v1, 0x1

    .line 146
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I

    if-ne v0, v1, :cond_3

    .line 148
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/milk/ui/ExpandableListActivity;->selectAllAccountData(Z)V

    .line 153
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/miui/milk/ui/ExpandableListActivity;->changeSelectState()V

    .line 154
    return-void

    .line 149
    :cond_3
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I

    if-nez v0, :cond_4

    if-eq p2, v1, :cond_5

    :cond_4
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 151
    :cond_5
    invoke-virtual {p0, p1}, Lcom/miui/milk/ui/ExpandableListActivity;->selectAllSimData(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected changeSelectState()V
    .locals 2

    .prologue
    .line 189
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataCheckCount:I

    iget v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataCheckCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mCheckCount:I

    .line 190
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAppListAdapter:Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;

    invoke-virtual {v0}, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->notifyDataSetChanged()V

    .line 191
    invoke-virtual {p0}, Lcom/miui/milk/ui/ExpandableListActivity;->enableBottomButton()Z

    .line 192
    return-void
.end method

.method protected enableBottomButton()Z
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mCheckCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBackupRestoreDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

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

    .line 98
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I

    if-ne v0, v1, :cond_3

    .line 100
    :cond_1
    invoke-direct {p0, p4}, Lcom/miui/milk/ui/ExpandableListActivity;->clickAccountDataChild(I)V

    .line 106
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAppListAdapter:Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;

    invoke-virtual {v0}, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->notifyDataSetChanged()V

    .line 107
    invoke-virtual {p0}, Lcom/miui/milk/ui/ExpandableListActivity;->enableBottomButton()Z

    .line 108
    const/4 v0, 0x0

    return v0

    .line 101
    :cond_3
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I

    if-nez v0, :cond_4

    if-eq p3, v1, :cond_5

    :cond_4
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 103
    :cond_5
    invoke-direct {p0, p4}, Lcom/miui/milk/ui/ExpandableListActivity;->clickSimDataChild(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-super {p0, p1}, Lcom/miui/milk/ui/CloudBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/miui/milk/ui/ExpandableListActivity;->setContentBaseDir()V

    .line 78
    invoke-virtual {p0}, Lcom/miui/milk/ui/ExpandableListActivity;->getBackupRestoreDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mBackupRestoreDir:Ljava/io/File;

    .line 80
    iput v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mCheckCount:I

    .line 81
    iput v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataCheckCount:I

    .line 82
    iput v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataCheckCount:I

    .line 84
    invoke-virtual {p0}, Lcom/miui/milk/ui/ExpandableListActivity;->prepareAppInfos()V

    .line 86
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 87
    iput v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 91
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I

    goto :goto_0
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 113
    iget v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    .line 116
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepareAppInfos()V
    .locals 9

    .prologue
    const v7, 0x7f060024

    const/4 v6, 0x2

    const-string v8, "SETTING"

    .line 201
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataInfos:Ljava/util/ArrayList;

    .line 202
    invoke-virtual {p0}, Lcom/miui/milk/ui/ExpandableListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, accountPackageLabel:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v4, Lcom/miui/backup/Customization;->CLOUD_ACCOUNT_DATA:[Lcom/miui/backup/SystemData;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 205
    new-instance v1, Lcom/miui/backup/AppInfo;

    invoke-direct {v1}, Lcom/miui/backup/AppInfo;-><init>()V

    .line 206
    .local v1, appInfo:Lcom/miui/backup/AppInfo;
    aget-object v4, v0, v2

    check-cast v4, Ljava/lang/String;

    iput-object v4, v1, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    .line 207
    iput v6, v1, Lcom/miui/milk/common/AppInfo;->type:I

    .line 208
    sget-object v4, Lcom/miui/backup/Customization;->CLOUD_ACCOUNT_DATA:[Lcom/miui/backup/SystemData;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/miui/backup/SystemData;->mPackageName:Ljava/lang/String;

    iput-object v4, v1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    .line 209
    sget-object v4, Lcom/miui/backup/Customization;->CLOUD_ACCOUNT_DATA:[Lcom/miui/backup/SystemData;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/miui/backup/SystemData;->mFilePath:Ljava/lang/String;

    iput-object v4, v1, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    .line 210
    sget-object v4, Lcom/miui/backup/Customization;->CLOUD_ACCOUNT_DATA:[Lcom/miui/backup/SystemData;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/miui/backup/SystemData;->mFileName:Ljava/lang/String;

    iput-object v4, v1, Lcom/miui/milk/common/AppInfo;->packagePath:Ljava/lang/String;

    .line 211
    invoke-virtual {v1, p0}, Lcom/miui/backup/AppInfo;->genSummary(Landroid/content/Context;)V

    .line 212
    invoke-virtual {v1, p0}, Lcom/miui/backup/AppInfo;->genDisplay(Landroid/content/Context;)V

    .line 213
    iget-object v4, v1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    const-string v5, "SETTING"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/miui/milk/common/AppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v7}, Lcom/miui/milk/ui/ExpandableListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/miui/milk/common/AppInfo;->summary:Ljava/lang/String;

    .line 217
    :cond_0
    const-string v4, "ADDRESSBOOK"

    iget-object v5, v1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 218
    iput-object v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mContactInfo:Lcom/miui/backup/AppInfo;

    .line 220
    :cond_1
    iget-object v4, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    .end local v1           #appInfo:Lcom/miui/backup/AppInfo;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataInfos:Ljava/util/ArrayList;

    .line 225
    invoke-virtual {p0}, Lcom/miui/milk/ui/ExpandableListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, simDataLabel:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    :goto_1
    sget-object v4, Lcom/miui/backup/Customization;->CLOUD_SIM_DATA:[Lcom/miui/backup/SystemData;

    array-length v4, v4

    if-ge v2, v4, :cond_4

    .line 229
    new-instance v1, Lcom/miui/backup/AppInfo;

    invoke-direct {v1}, Lcom/miui/backup/AppInfo;-><init>()V

    .line 230
    .restart local v1       #appInfo:Lcom/miui/backup/AppInfo;
    aget-object v4, v3, v2

    check-cast v4, Ljava/lang/String;

    iput-object v4, v1, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    .line 231
    iput v6, v1, Lcom/miui/milk/common/AppInfo;->type:I

    .line 232
    sget-object v4, Lcom/miui/backup/Customization;->CLOUD_SIM_DATA:[Lcom/miui/backup/SystemData;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/miui/backup/SystemData;->mPackageName:Ljava/lang/String;

    iput-object v4, v1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    .line 233
    sget-object v4, Lcom/miui/backup/Customization;->CLOUD_SIM_DATA:[Lcom/miui/backup/SystemData;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/miui/backup/SystemData;->mFilePath:Ljava/lang/String;

    iput-object v4, v1, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    .line 234
    sget-object v4, Lcom/miui/backup/Customization;->CLOUD_SIM_DATA:[Lcom/miui/backup/SystemData;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/miui/backup/SystemData;->mFileName:Ljava/lang/String;

    iput-object v4, v1, Lcom/miui/milk/common/AppInfo;->packagePath:Ljava/lang/String;

    .line 235
    invoke-virtual {v1, p0}, Lcom/miui/backup/AppInfo;->genSummary(Landroid/content/Context;)V

    .line 236
    invoke-virtual {v1, p0}, Lcom/miui/backup/AppInfo;->genDisplay(Landroid/content/Context;)V

    .line 237
    iget-object v4, v1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    const-string v5, "SETTING"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/miui/milk/common/AppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v7}, Lcom/miui/milk/ui/ExpandableListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/miui/milk/common/AppInfo;->summary:Ljava/lang/String;

    .line 240
    :cond_3
    iget-object v4, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 242
    .end local v1           #appInfo:Lcom/miui/backup/AppInfo;
    :cond_4
    return-void
.end method

.method protected selectAllAccountData(Z)V
    .locals 3
    .parameter "selectAll"

    .prologue
    .line 157
    iget-object v2, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 158
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/backup/AppInfo;

    .line 160
    .local v0, app:Lcom/miui/backup/AppInfo;
    iput-boolean p1, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v0           #app:Lcom/miui/backup/AppInfo;
    :cond_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataCheckCount:I

    .line 164
    .end local v1           #i:I
    :cond_1
    return-void

    .line 162
    .restart local v1       #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected selectAllSimData(Z)V
    .locals 3
    .parameter "selectAll"

    .prologue
    .line 167
    iget-object v2, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataInfos:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 168
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/backup/AppInfo;

    .line 170
    .local v0, app:Lcom/miui/backup/AppInfo;
    iput-boolean p1, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v0           #app:Lcom/miui/backup/AppInfo;
    :cond_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataCheckCount:I

    .line 174
    .end local v1           #i:I
    :cond_1
    return-void

    .line 172
    .restart local v1       #i:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected setContentBaseDir()V
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/miui/backup/Customization;->BACKUP_BASE_DIR:Ljava/io/File;

    iput-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->CONTENT_BASE_DIR:Ljava/io/File;

    .line 186
    return-void
.end method
