.class public Lcom/miui/milk/ui/CloudRestoreMain;
.super Lcom/miui/milk/ui/CloudBaseActivity;
.source "CloudRestoreMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAppInfo:Lcom/miui/milk/common/AppInfo;

.field private mGuideImage:Landroid/widget/ImageView;

.field private mGuideLayout:Landroid/view/View;

.field private mGuideText:Landroid/widget/TextView;

.field private mLastBackupInfo:Landroid/widget/TextView;

.field private mPaddingView:Landroid/view/View;

.field private mResourceType:I

.field private mRestoreContact:Z

.field private mRestoreData:Landroid/widget/Button;

.field private mRestoreGuide:Landroid/widget/TextView;

.field private mRestoreRes:Lcom/miui/milk/model/MetadataProtos$Resource;

.field private mRestoreType:Landroid/widget/TextView;

.field private mReturn:Landroid/widget/Button;

.field private mStep:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/miui/milk/ui/CloudBaseActivity;-><init>()V

    return-void
.end method

.method private canRestore()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 266
    sget-object v0, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    if-nez v0, :cond_0

    move v0, v4

    .line 273
    :goto_0
    return v0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreRes:Lcom/miui/milk/model/MetadataProtos$Resource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreRes:Lcom/miui/milk/model/MetadataProtos$Resource;

    invoke-virtual {v0}, Lcom/miui/milk/model/MetadataProtos$Resource;->getCounts()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 271
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 273
    goto :goto_0
.end method

.method private prepareAppInfos(Ljava/lang/String;)Z
    .locals 9
    .parameter "packageName"

    .prologue
    const v7, 0x7f060024

    const/4 v5, 0x2

    const/4 v6, 0x1

    const-string v8, "SETTING"

    .line 90
    const-string v3, "ADDRESSBOOK"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    iput-boolean v6, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreContact:Z

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudRestoreMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, accountPackageLabel:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/miui/backup/Customization;->CLOUD_ACCOUNT_DATA:[Lcom/miui/backup/SystemData;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 95
    sget-object v3, Lcom/miui/backup/Customization;->CLOUD_ACCOUNT_DATA:[Lcom/miui/backup/SystemData;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/miui/backup/SystemData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    new-instance v3, Lcom/miui/milk/common/AppInfo;

    invoke-direct {v3}, Lcom/miui/milk/common/AppInfo;-><init>()V

    iput-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    .line 97
    iget-object v4, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    aget-object v3, v0, v1

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    .line 98
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    sget-object v4, Lcom/miui/backup/Customization;->CLOUD_ACCOUNT_DATA:[Lcom/miui/backup/SystemData;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/miui/backup/SystemData;->mPackageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    .line 99
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    sget-object v4, Lcom/miui/backup/Customization;->CLOUD_ACCOUNT_DATA:[Lcom/miui/backup/SystemData;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/miui/backup/SystemData;->mFilePath:Ljava/lang/String;

    iput-object v4, v3, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    .line 100
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    sget-object v4, Lcom/miui/backup/Customization;->CLOUD_ACCOUNT_DATA:[Lcom/miui/backup/SystemData;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/miui/backup/SystemData;->mFileName:Ljava/lang/String;

    iput-object v4, v3, Lcom/miui/milk/common/AppInfo;->packagePath:Ljava/lang/String;

    .line 101
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    iput-boolean v6, v3, Lcom/miui/milk/common/AppInfo;->checked:Z

    .line 102
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    iput v5, v3, Lcom/miui/milk/common/AppInfo;->type:I

    .line 103
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    iget-object v3, v3, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    const-string v4, "SETTING"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    iget-object v5, v4, Lcom/miui/milk/common/AppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v7}, Lcom/miui/milk/ui/CloudRestoreMain;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/miui/milk/common/AppInfo;->summary:Ljava/lang/String;

    .line 106
    :cond_1
    sget-object v3, Lcom/miui/backup/Customization;->CLOUD_ACCOUNT_DATA:[Lcom/miui/backup/SystemData;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/miui/backup/SystemData;->mResourceType:I

    iput v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mResourceType:I

    move v3, v6

    .line 128
    :goto_1
    return v3

    .line 94
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudRestoreMain;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, simDataLabel:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    :goto_2
    sget-object v3, Lcom/miui/backup/Customization;->CLOUD_SIM_DATA:[Lcom/miui/backup/SystemData;

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 113
    sget-object v3, Lcom/miui/backup/Customization;->CLOUD_SIM_DATA:[Lcom/miui/backup/SystemData;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/miui/backup/SystemData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 114
    new-instance v3, Lcom/miui/milk/common/AppInfo;

    invoke-direct {v3}, Lcom/miui/milk/common/AppInfo;-><init>()V

    iput-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    .line 115
    iget-object v4, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    aget-object v3, v2, v1

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    .line 116
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    iput v5, v3, Lcom/miui/milk/common/AppInfo;->type:I

    .line 117
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    iput-boolean v6, v3, Lcom/miui/milk/common/AppInfo;->checked:Z

    .line 118
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    sget-object v4, Lcom/miui/backup/Customization;->CLOUD_SIM_DATA:[Lcom/miui/backup/SystemData;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/miui/backup/SystemData;->mPackageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    .line 119
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    sget-object v4, Lcom/miui/backup/Customization;->CLOUD_SIM_DATA:[Lcom/miui/backup/SystemData;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/miui/backup/SystemData;->mFilePath:Ljava/lang/String;

    iput-object v4, v3, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    .line 120
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    sget-object v4, Lcom/miui/backup/Customization;->CLOUD_SIM_DATA:[Lcom/miui/backup/SystemData;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/miui/backup/SystemData;->mFileName:Ljava/lang/String;

    iput-object v4, v3, Lcom/miui/milk/common/AppInfo;->packagePath:Ljava/lang/String;

    .line 121
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    iget-object v3, v3, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    const-string v4, "SETTING"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    iget-object v5, v4, Lcom/miui/milk/common/AppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v7}, Lcom/miui/milk/ui/CloudRestoreMain;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/miui/milk/common/AppInfo;->summary:Ljava/lang/String;

    .line 124
    :cond_4
    sget-object v3, Lcom/miui/backup/Customization;->CLOUD_SIM_DATA:[Lcom/miui/backup/SystemData;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/miui/backup/SystemData;->mResourceType:I

    iput v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mResourceType:I

    move v3, v6

    .line 125
    goto/16 :goto_1

    .line 112
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 128
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public doRestore()V
    .locals 2

    .prologue
    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v0, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/common/AppInfo;>;"
    iget-object v1, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudRestoreMain;->doRestore(Ljava/util/ArrayList;)V

    .line 281
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudRestoreMain;->leave()V

    .line 282
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 224
    const-wide/32 v0, 0x100000

    invoke-static {v0, v1}, Lcom/miui/backup/SysUtils;->enoughSpaceOnData(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/backup/ui/ExceptionAlertActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    const-string v1, "exception_message"

    const v2, 0x7f060053

    invoke-virtual {p0, v2}, Lcom/miui/milk/ui/CloudRestoreMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudRestoreMain;->startActivity(Landroid/content/Intent;)V

    .line 263
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 232
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudRestoreMain;->leave()V

    goto :goto_0

    .line 235
    :pswitch_1
    invoke-static {p0}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v0

    .line 236
    iget-object v0, v0, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 237
    iput v2, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mStep:I

    .line 240
    :cond_1
    iget v0, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mStep:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 242
    :pswitch_2
    invoke-static {p0, p0}, Lcom/miui/milk/util/AccountUtil;->addAccount(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    goto :goto_0

    .line 247
    :pswitch_3
    iget v0, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mStep:I

    .line 248
    new-instance v0, Lcom/miui/milk/ui/ComputeBackupInfoTask;

    invoke-direct {v0, p0, p0}, Lcom/miui/milk/ui/ComputeBackupInfoTask;-><init>(Landroid/app/Activity;Lcom/miui/milk/ui/ComputeBackupInfoTask$RefreshBackupInfo;)V

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    .line 249
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mComputeBackupInfoTask:Lcom/miui/milk/ui/ComputeBackupInfoTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/milk/ui/ComputeBackupInfoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 254
    :pswitch_4
    invoke-direct {p0}, Lcom/miui/milk/ui/CloudRestoreMain;->canRestore()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    iget-boolean v0, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreContact:Z

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudRestoreMain;->restore(Z)V

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudRestoreMain;->leave()V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x7f0a0010
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 240
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/miui/milk/ui/CloudBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v3, 0x7f030005

    invoke-virtual {p0, v3}, Lcom/miui/milk/ui/CloudRestoreMain;->setContentView(I)V

    .line 54
    const v3, 0x7f0a0005

    invoke-virtual {p0, v3}, Lcom/miui/milk/ui/CloudRestoreMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mLoginLayout:Landroid/view/View;

    .line 55
    const v3, 0x7f0a0003

    invoke-virtual {p0, v3}, Lcom/miui/milk/ui/CloudRestoreMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mLogoutLayout:Landroid/view/View;

    .line 56
    const v3, 0x7f0a000e

    invoke-virtual {p0, v3}, Lcom/miui/milk/ui/CloudRestoreMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mGuideLayout:Landroid/view/View;

    .line 57
    const v3, 0x7f0a0009

    invoke-virtual {p0, v3}, Lcom/miui/milk/ui/CloudRestoreMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mGuideImage:Landroid/widget/ImageView;

    .line 58
    const v3, 0x7f0a000a

    invoke-virtual {p0, v3}, Lcom/miui/milk/ui/CloudRestoreMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mGuideText:Landroid/widget/TextView;

    .line 59
    const v3, 0x7f0a000c

    invoke-virtual {p0, v3}, Lcom/miui/milk/ui/CloudRestoreMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mLastBackupInfo:Landroid/widget/TextView;

    .line 60
    const v3, 0x7f0a000b

    invoke-virtual {p0, v3}, Lcom/miui/milk/ui/CloudRestoreMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreType:Landroid/widget/TextView;

    .line 61
    const v3, 0x7f0a000d

    invoke-virtual {p0, v3}, Lcom/miui/milk/ui/CloudRestoreMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreGuide:Landroid/widget/TextView;

    .line 62
    const v3, 0x7f0a000f

    invoke-virtual {p0, v3}, Lcom/miui/milk/ui/CloudRestoreMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mPaddingView:Landroid/view/View;

    .line 63
    const v3, 0x7f0a0004

    invoke-virtual {p0, v3}, Lcom/miui/milk/ui/CloudRestoreMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/miui/milk/ui/CloudRestoreMain$1;

    invoke-direct {v4, p0}, Lcom/miui/milk/ui/CloudRestoreMain$1;-><init>(Lcom/miui/milk/ui/CloudRestoreMain;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v3, 0x7f0a0010

    invoke-virtual {p0, v3}, Lcom/miui/milk/ui/CloudRestoreMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mReturn:Landroid/widget/Button;

    .line 71
    const v3, 0x7f0a0011

    invoke-virtual {p0, v3}, Lcom/miui/milk/ui/CloudRestoreMain;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreData:Landroid/widget/Button;

    .line 72
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mReturn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreData:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudRestoreMain;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 76
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "cloud_restore_type"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, packageName:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/miui/milk/ui/CloudRestoreMain;->prepareAppInfos(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudRestoreMain;->finish()V

    .line 87
    :cond_1
    :goto_0
    return-void

    .line 80
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreType:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    iget-object v4, v4, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreGuide:Landroid/widget/TextView;

    const v4, 0x7f060095

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mAppInfo:Lcom/miui/milk/common/AppInfo;

    iget-object v7, v7, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/miui/milk/ui/CloudRestoreMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-static {p0}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v0

    .line 83
    .local v0, accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    iget-object v3, v0, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 84
    const/4 v3, 0x3

    iput v3, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mStep:I

    goto :goto_0
.end method

.method public refreshUI(Z)Z
    .locals 15
    .parameter "requestError"

    .prologue
    .line 133
    invoke-static {p0}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v0

    .line 134
    .local v0, accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    iget-object v10, v0, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-nez v10, :cond_0

    .line 135
    const/4 v10, 0x0

    iput v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mStep:I

    .line 138
    :cond_0
    iget-object v10, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mLogoutLayout:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 139
    iget-object v10, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mLoginLayout:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mGuideLayout:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mPaddingView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mStep:I

    packed-switch v10, :pswitch_data_0

    .line 189
    :goto_0
    invoke-super/range {p0 .. p1}, Lcom/miui/milk/ui/CloudBaseActivity;->refreshUI(Z)Z

    move-result v10

    if-nez v10, :cond_1

    .line 190
    const/4 v10, 0x0

    .line 219
    :goto_1
    return v10

    .line 144
    :pswitch_0
    iget-object v10, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mLogoutLayout:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mGuideImage:Landroid/widget/ImageView;

    const v11, 0x7f020005

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 146
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mGuideText:Landroid/widget/TextView;

    const/high16 v11, 0x7f02

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 147
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mGuideText:Landroid/widget/TextView;

    const v11, 0x7f060037

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreData:Landroid/widget/Button;

    const v11, 0x7f06006e

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 149
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreData:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 150
    const/4 v10, 0x0

    goto :goto_1

    .line 153
    :pswitch_1
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mGuideLayout:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 154
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mPaddingView:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 155
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreData:Landroid/widget/Button;

    const v11, 0x7f06006e

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 156
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreData:Landroid/widget/Button;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 157
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mGuideImage:Landroid/widget/ImageView;

    const v11, 0x7f020002

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mGuideText:Landroid/widget/TextView;

    const/high16 v11, 0x7f02

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 159
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mGuideText:Landroid/widget/TextView;

    const v11, 0x7f060098

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 160
    const/4 v10, 0x0

    goto :goto_1

    .line 163
    :pswitch_2
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mGuideLayout:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mPaddingView:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreData:Landroid/widget/Button;

    const v11, 0x7f06006e

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    .line 166
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreData:Landroid/widget/Button;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 167
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mGuideImage:Landroid/widget/ImageView;

    const v11, 0x7f020006

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mGuideText:Landroid/widget/TextView;

    const v11, 0x7f020001

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 169
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mGuideText:Landroid/widget/TextView;

    const v11, 0x7f060098

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 170
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 173
    :pswitch_3
    iget-object v10, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mLoginLayout:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mGuideImage:Landroid/widget/ImageView;

    const v11, 0x7f020003

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mGuideText:Landroid/widget/TextView;

    const v11, 0x7f020001

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 176
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mGuideText:Landroid/widget/TextView;

    const v11, 0x7f060033

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 177
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreData:Landroid/widget/Button;

    const v11, 0x7f06001a

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 181
    :pswitch_4
    iget-object v10, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mLoginLayout:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mGuideImage:Landroid/widget/ImageView;

    const v11, 0x7f020007

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mGuideText:Landroid/widget/TextView;

    const v11, 0x7f020004

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 184
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mGuideText:Landroid/widget/TextView;

    const v11, 0x7f060033

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 185
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreData:Landroid/widget/Button;

    const v11, 0x7f06001a

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 193
    :cond_1
    sget-object v8, Lcom/miui/milk/ui/CloudBackupInfo;->chooseNumber:Ljava/lang/String;

    .line 194
    .local v8, showNumberId:Ljava/lang/String;
    sget-object v10, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    invoke-virtual {v10}, Lcom/miui/milk/model/MetadataProtos$Metadata;->getContainerList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/milk/model/MetadataProtos$Container;

    .line 195
    .local v1, container:Lcom/miui/milk/model/MetadataProtos$Container;
    invoke-virtual {v1}, Lcom/miui/milk/model/MetadataProtos$Container;->getType()I

    move-result v2

    .line 196
    .local v2, containerType:I
    const/4 v10, 0x1

    if-eq v2, v10, :cond_3

    const/4 v10, 0x2

    if-ne v2, v10, :cond_2

    invoke-virtual {v1}, Lcom/miui/milk/model/MetadataProtos$Container;->getResourceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 198
    :cond_3
    invoke-virtual {v1}, Lcom/miui/milk/model/MetadataProtos$Container;->getResourceList()Ljava/util/List;

    move-result-object v7

    .line 199
    .local v7, resList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/milk/model/MetadataProtos$Resource;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/milk/model/MetadataProtos$Resource;

    .line 200
    .local v6, res:Lcom/miui/milk/model/MetadataProtos$Resource;
    invoke-virtual {v6}, Lcom/miui/milk/model/MetadataProtos$Resource;->getType()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mResourceType:I

    if-ne v10, v11, :cond_4

    .line 201
    iput-object v6, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreRes:Lcom/miui/milk/model/MetadataProtos$Resource;

    goto :goto_2

    .line 207
    .end local v1           #container:Lcom/miui/milk/model/MetadataProtos$Container;
    .end local v2           #containerType:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #res:Lcom/miui/milk/model/MetadataProtos$Resource;
    .end local v7           #resList:Ljava/util/List;,"Ljava/util/List<Lcom/miui/milk/model/MetadataProtos$Resource;>;"
    :cond_5
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreRes:Lcom/miui/milk/model/MetadataProtos$Resource;

    if-eqz v10, :cond_7

    .line 208
    const v10, 0x7f060094

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreRes:Lcom/miui/milk/model/MetadataProtos$Resource;

    invoke-virtual {v13}, Lcom/miui/milk/model/MetadataProtos$Resource;->getCounts()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/miui/milk/ui/CloudRestoreMain;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 209
    .local v9, totalNum:Ljava/lang/String;
    const v10, 0x7f060089

    invoke-virtual {p0, v10}, Lcom/miui/milk/ui/CloudRestoreMain;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, date:Ljava/lang/String;
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreData:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 211
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreRes:Lcom/miui/milk/model/MetadataProtos$Resource;

    invoke-virtual {v10}, Lcom/miui/milk/model/MetadataProtos$Resource;->getLastDate()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_8

    .line 212
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreRes:Lcom/miui/milk/model/MetadataProtos$Resource;

    invoke-virtual {v10}, Lcom/miui/milk/model/MetadataProtos$Resource;->getLastDate()J

    move-result-wide v10

    invoke-static {p0, v10, v11}, Lcom/miui/backup/BackupUtils;->getShowNameFromDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 213
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mRestoreData:Landroid/widget/Button;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 217
    :cond_6
    :goto_3
    iget-object v10, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mLastBackupInfo:Landroid/widget/TextView;

    const-string v11, "%s %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    const/4 v13, 0x1

    aput-object v9, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    .end local v3           #date:Ljava/lang/String;
    .end local v9           #totalNum:Ljava/lang/String;
    :cond_7
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 214
    .restart local v3       #date:Ljava/lang/String;
    .restart local v9       #totalNum:Ljava/lang/String;
    :cond_8
    sget-object v10, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    if-nez v10, :cond_6

    .line 215
    const v10, 0x7f060088

    invoke-virtual {p0, v10}, Lcom/miui/milk/ui/CloudRestoreMain;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-static {p0}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v0

    .line 288
    .local v0, accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    iget-object v1, v0, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 289
    const/4 v1, 0x1

    iput v1, p0, Lcom/miui/milk/ui/CloudRestoreMain;->mStep:I

    .line 290
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/CloudRestoreMain;->refreshUI(Z)Z

    .line 293
    .end local v0           #accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    :cond_0
    return-void
.end method
