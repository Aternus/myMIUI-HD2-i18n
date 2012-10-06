.class public Lcom/miui/milk/ui/CloudBackupMain;
.super Lcom/miui/milk/ui/ExpandableListActivity;
.source "CloudBackupMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sNeedRefresh:Z


# instance fields
.field private mBackupNow:Landroid/widget/Button;

.field private mCloudDataLabel:[Ljava/lang/CharSequence;

.field private mRestoreData:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/miui/milk/ui/ExpandableListActivity;-><init>()V

    return-void
.end method

.method private backup()V
    .locals 13

    .prologue
    .line 256
    invoke-static {p0}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 257
    const v11, 0x7f06008e

    invoke-virtual {p0, v11}, Lcom/miui/milk/ui/CloudBackupMain;->showToast(I)V

    .line 333
    :goto_0
    return-void

    .line 260
    :cond_0
    const/4 v7, 0x0

    .line 261
    .local v7, needNamed:Z
    const/4 v6, 0x0

    .line 262
    .local v6, namedCount:I
    const/4 v5, 0x0

    .line 263
    .local v5, lastSimNumber:Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v0, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/common/AppInfo;>;"
    iget-object v11, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 265
    iget-object v11, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 267
    sget-object v11, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    if-eqz v11, :cond_6

    sget-object v11, Lcom/miui/milk/ui/CloudBackupInfo;->currentIMSI:Ljava/lang/String;

    if-eqz v11, :cond_6

    .line 268
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v9, numberIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v10, numberNamed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .line 271
    .local v2, currentSimFound:Z
    const/4 v3, 0x0

    .line 272
    .local v3, currentSimNamed:Z
    sget-object v11, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    invoke-virtual {v11}, Lcom/miui/milk/model/MetadataProtos$Metadata;->getContainerList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/milk/model/MetadataProtos$Container;

    .line 273
    .local v1, container:Lcom/miui/milk/model/MetadataProtos$Container;
    invoke-virtual {v1}, Lcom/miui/milk/model/MetadataProtos$Container;->getType()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 274
    invoke-virtual {v1}, Lcom/miui/milk/model/MetadataProtos$Container;->getResourceId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v11, Lcom/miui/milk/ui/CloudBackupInfo;->currentIMSI:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/miui/milk/model/MetadataProtos$Container;->getResourceId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 276
    const/4 v2, 0x1

    .line 278
    :cond_2
    invoke-virtual {v1}, Lcom/miui/milk/model/MetadataProtos$Container;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v1}, Lcom/miui/milk/model/MetadataProtos$Container;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 279
    new-instance v11, Ljava/lang/Boolean;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v11, Lcom/miui/milk/ui/CloudBackupInfo;->currentIMSI:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/miui/milk/model/MetadataProtos$Container;->getResourceId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 281
    const/4 v3, 0x1

    goto :goto_1

    .line 284
    :cond_3
    new-instance v11, Ljava/lang/Boolean;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 288
    .end local v1           #container:Lcom/miui/milk/model/MetadataProtos$Container;
    :cond_4
    if-nez v2, :cond_5

    .line 289
    sget-object v11, Lcom/miui/milk/ui/CloudBackupInfo;->currentIMSI:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v11, Ljava/lang/Boolean;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_5
    if-eqz v3, :cond_7

    .line 295
    const/4 v7, 0x0

    .line 332
    .end local v2           #currentSimFound:Z
    .end local v3           #currentSimNamed:Z
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v9           #numberIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #numberNamed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_6
    :goto_2
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBackupMain;->doBackup(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 297
    .restart local v2       #currentSimFound:Z
    .restart local v3       #currentSimNamed:Z
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v9       #numberIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #numberNamed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    .line 299
    const/4 v7, 0x0

    goto :goto_2

    .line 300
    :cond_8
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_a

    .line 302
    const/4 v7, 0x1

    .line 303
    const/4 v6, 0x2

    .line 304
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 305
    .local v8, number:Ljava/lang/String;
    sget-object v11, Lcom/miui/milk/ui/CloudBackupInfo;->currentIMSI:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 306
    move-object v5, v8

    goto :goto_3

    .line 309
    .end local v8           #number:Ljava/lang/String;
    :cond_a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x2

    if-le v11, v12, :cond_6

    .line 311
    const/4 v7, 0x1

    .line 312
    const/4 v6, 0x1

    goto :goto_2
.end method

.method private canRestore()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 336
    sget-object v4, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    if-nez v4, :cond_0

    move v4, v8

    .line 346
    :goto_0
    return v4

    .line 340
    :cond_0
    sget-object v4, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    invoke-virtual {v4}, Lcom/miui/milk/model/MetadataProtos$Metadata;->getContainerList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/model/MetadataProtos$Container;

    .line 341
    .local v0, container:Lcom/miui/milk/model/MetadataProtos$Container;
    invoke-virtual {v0}, Lcom/miui/milk/model/MetadataProtos$Container;->getResourceList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/model/MetadataProtos$Resource;

    .line 342
    .local v3, res:Lcom/miui/milk/model/MetadataProtos$Resource;
    invoke-virtual {v3}, Lcom/miui/milk/model/MetadataProtos$Resource;->getCounts()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 343
    const/4 v4, 0x1

    goto :goto_0

    .end local v0           #container:Lcom/miui/milk/model/MetadataProtos$Container;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #res:Lcom/miui/milk/model/MetadataProtos$Resource;
    :cond_3
    move v4, v8

    .line 346
    goto :goto_0
.end method

.method private getBackupItem(Ljava/lang/String;IZJJ)Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;
    .locals 4
    .parameter "titleRes"
    .parameter "localsize"
    .parameter "unknown"
    .parameter "cloudsize"
    .parameter "backupTime"

    .prologue
    const v3, 0x7f060042

    .line 100
    new-instance v0, Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;

    invoke-direct {v0, p0}, Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;-><init>(Lcom/miui/milk/ui/ExpandableListActivity;)V

    .line 101
    .local v0, item:Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;
    iput-object p1, v0, Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;->title:Ljava/lang/String;

    .line 103
    const-wide/16 v1, 0x0

    cmp-long v1, p6, v1

    if-lez v1, :cond_1

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f060087

    invoke-virtual {p0, v2}, Lcom/miui/milk/ui/CloudBackupMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, p6, p7}, Lcom/miui/backup/BackupUtils;->getShowNameFromDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;->backupTime:Ljava/lang/String;

    .line 111
    :cond_0
    :goto_0
    if-eqz p3, :cond_3

    .line 112
    invoke-virtual {p0, v3}, Lcom/miui/milk/ui/CloudBackupMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;->cloudCount:Ljava/lang/String;

    .line 113
    invoke-virtual {p0, v3}, Lcom/miui/milk/ui/CloudBackupMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;->localCount:Ljava/lang/String;

    .line 118
    :goto_1
    return-object v0

    .line 105
    :cond_1
    sget-object v1, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    if-nez v1, :cond_2

    .line 106
    const v1, 0x7f060088

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/CloudBackupMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;->backupTime:Ljava/lang/String;

    goto :goto_0

    .line 107
    :cond_2
    sget-object v1, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    if-eqz v1, :cond_0

    .line 108
    const v1, 0x7f060089

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/CloudBackupMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;->backupTime:Ljava/lang/String;

    goto :goto_0

    .line 115
    :cond_3
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;->cloudCount:Ljava/lang/String;

    .line 116
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;->localCount:Ljava/lang/String;

    goto :goto_1
.end method

.method private resetBackupInfo(Z)V
    .locals 12
    .parameter "unKnown"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    .line 86
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountBackupItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimBackupItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    iget-object v8, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountBackupItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupMain;->mCloudDataLabel:[Ljava/lang/CharSequence;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    aget v2, v0, v2

    move-object v0, p0

    move v3, p1

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/miui/milk/ui/CloudBackupMain;->getBackupItem(Ljava/lang/String;IZJJ)Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v8, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountBackupItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupMain;->mCloudDataLabel:[Ljava/lang/CharSequence;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    aget v2, v0, v11

    move-object v0, p0

    move v3, p1

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/miui/milk/ui/CloudBackupMain;->getBackupItem(Ljava/lang/String;IZJJ)Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v8, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountBackupItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupMain;->mCloudDataLabel:[Ljava/lang/CharSequence;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    const/4 v2, 0x4

    aget v2, v0, v2

    move-object v0, p0

    move v3, p1

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/miui/milk/ui/CloudBackupMain;->getBackupItem(Ljava/lang/String;IZJJ)Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v8, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimBackupItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupMain;->mCloudDataLabel:[Ljava/lang/CharSequence;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    aget v2, v0, v9

    move-object v0, p0

    move v3, p1

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/miui/milk/ui/CloudBackupMain;->getBackupItem(Ljava/lang/String;IZJJ)Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v8, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimBackupItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupMain;->mCloudDataLabel:[Ljava/lang/CharSequence;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    aget v2, v0, v10

    move-object v0, p0

    move v3, p1

    move-wide v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/miui/milk/ui/CloudBackupMain;->getBackupItem(Ljava/lang/String;IZJJ)Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public static setNeedRefresh(Z)V
    .locals 0
    .parameter "needRefresh"

    .prologue
    .line 96
    sput-boolean p0, Lcom/miui/milk/ui/CloudBackupMain;->sNeedRefresh:Z

    .line 97
    return-void
.end method


# virtual methods
.method public doRestore()V
    .locals 2

    .prologue
    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v0, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/common/AppInfo;>;"
    iget-object v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 353
    iget-object v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 354
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBackupMain;->doRestore(Ljava/util/ArrayList;)V

    .line 355
    return-void
.end method

.method protected enableBottomButton()Z
    .locals 3

    .prologue
    .line 168
    invoke-super {p0}, Lcom/miui/milk/ui/ExpandableListActivity;->enableBottomButton()Z

    move-result v0

    .line 169
    .local v0, isEnable:Z
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBackupMain;->mBackupNow:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 170
    iget-object v1, p0, Lcom/miui/milk/ui/CloudBackupMain;->mRestoreData:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/milk/ui/CloudBackupMain;->canRestore()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 171
    return v0

    .line 170
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public leave()V
    .locals 2

    .prologue
    .line 176
    invoke-static {}, Lcom/miui/milk/ui/CloudBackupInfo;->reset()V

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/backup/BackupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBackupMain;->startActivity(Landroid/content/Intent;)V

    .line 180
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 230
    const-wide/32 v0, 0x100000

    invoke-static {v0, v1}, Lcom/miui/backup/SysUtils;->enoughSpaceOnData(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/backup/ui/ExceptionAlertActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    const-string v1, "exception_message"

    const v2, 0x7f060053

    invoke-virtual {p0, v2}, Lcom/miui/milk/ui/CloudBackupMain;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBackupMain;->startActivity(Landroid/content/Intent;)V

    .line 253
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-static {p0}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v0

    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 239
    :pswitch_0
    iget-object v0, v0, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 240
    invoke-static {p0, p0}, Lcom/miui/milk/util/AccountUtil;->addAccount(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    goto :goto_0

    .line 242
    :cond_1
    invoke-direct {p0}, Lcom/miui/milk/ui/CloudBackupMain;->backup()V

    goto :goto_0

    .line 246
    :pswitch_1
    iget-object v0, v0, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 247
    invoke-static {p0, p0}, Lcom/miui/milk/util/AccountUtil;->addAccount(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    goto :goto_0

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mContactInfo:Lcom/miui/backup/AppInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mContactInfo:Lcom/miui/backup/AppInfo;

    iget-boolean v0, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBackupMain;->restore(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0007
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 41
    invoke-super {p0, p1}, Lcom/miui/milk/ui/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBackupMain;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBackupMain;->mCloudDataLabel:[Ljava/lang/CharSequence;

    .line 44
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBackupMain;->setContentView(I)V

    .line 45
    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBackupMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mLoginLayout:Landroid/view/View;

    .line 46
    const v0, 0x7f0a0003

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBackupMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBaseActivity;->mLogoutLayout:Landroid/view/View;

    .line 47
    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBackupMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/milk/ui/CloudBackupMain$1;

    invoke-direct {v1, p0}, Lcom/miui/milk/ui/CloudBackupMain$1;-><init>(Lcom/miui/milk/ui/CloudBackupMain;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBackupMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBackupMain;->mBackupNow:Landroid/widget/Button;

    .line 55
    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBackupMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/milk/ui/CloudBackupMain;->mRestoreData:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupMain;->mBackupNow:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/miui/milk/ui/CloudBackupMain;->mRestoreData:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountBackupItems:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimBackupItems:Ljava/util/ArrayList;

    .line 61
    invoke-direct {p0, v3}, Lcom/miui/milk/ui/CloudBackupMain;->resetBackupInfo(Z)V

    .line 63
    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBackupMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mDataListView:Landroid/widget/ExpandableListView;

    .line 64
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mDataListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mDataListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 66
    new-instance v0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;

    const v1, 0x7f03000c

    const v2, 0x7f030003

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;-><init>(Lcom/miui/milk/ui/ExpandableListActivity;Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAppListAdapter:Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;

    .line 68
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mDataListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mAppListAdapter:Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 69
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mDataListView:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 70
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity;->mDataListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 72
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBackupMain;->changeSelectState()V

    .line 73
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBackupMain;->retryComputeBackupInfo()Z

    .line 74
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const v1, 0x7f06008e

    const/4 v2, 0x1

    .line 138
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 162
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 140
    :pswitch_0
    invoke-static {p0, p0}, Lcom/miui/milk/util/AccountUtil;->addAccount(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V

    move v0, v2

    .line 141
    goto :goto_0

    .line 143
    :pswitch_1
    invoke-static {p0}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/CloudBackupMain;->showToast(I)V

    move v0, v2

    .line 145
    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBackupMain;->retryComputeBackupInfo()Z

    move v0, v2

    .line 148
    goto :goto_0

    .line 150
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/milk/ui/AutoBackupPreference;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBackupMain;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 152
    goto :goto_0

    .line 154
    :pswitch_3
    invoke-static {p0}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/CloudBackupMain;->showToast(I)V

    move v0, v2

    .line 156
    goto :goto_0

    .line 158
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/milk/ui/FindlostContactSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/CloudBackupMain;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 160
    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 124
    invoke-static {p0}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v0

    .line 125
    .local v0, accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    iget-object v1, v0, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 126
    const v1, 0x7f060036

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 132
    :goto_0
    return v4

    .line 128
    :cond_0
    const/4 v1, 0x4

    const v2, 0x7f060092

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 129
    const/4 v1, 0x2

    const v2, 0x7f060039

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 130
    const/4 v1, 0x3

    const v2, 0x7f06002d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/miui/milk/ui/ExpandableListActivity;->onResume()V

    .line 79
    sget-boolean v0, Lcom/miui/milk/ui/CloudBackupMain;->sNeedRefresh:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/miui/milk/ui/CloudBackupMain;->retryComputeBackupInfo()Z

    .line 82
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/milk/ui/CloudBackupMain;->sNeedRefresh:Z

    .line 83
    return-void
.end method

.method public refreshUI(Z)Z
    .locals 19
    .parameter "requestError"

    .prologue
    .line 184
    invoke-static/range {p0 .. p0}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v10

    .line 185
    .local v10, accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    iget-object v2, v10, Lcom/miui/milk/util/AccountUtil$AccountInfo;->nickname:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/CloudBaseActivity;->mLogoutLayout:Landroid/view/View;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/CloudBaseActivity;->mLoginLayout:Landroid/view/View;

    move-object v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 189
    new-instance v15, Lcom/miui/milk/storage/ProgressTrackerStore;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/miui/milk/storage/ProgressTrackerStore;-><init>(Landroid/content/Context;)V

    .line 190
    .local v15, progressStore:Lcom/miui/milk/storage/ProgressTrackerStore;
    invoke-virtual {v15}, Lcom/miui/milk/storage/ProgressTrackerStore;->cleanup()V

    .line 191
    invoke-virtual {v15}, Lcom/miui/milk/storage/ProgressTrackerStore;->close()V

    .line 192
    const/4 v2, 0x0

    .line 225
    .end local v15           #progressStore:Lcom/miui/milk/storage/ProgressTrackerStore;
    :goto_0
    return v2

    .line 194
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/CloudBaseActivity;->mLogoutLayout:Landroid/view/View;

    move-object v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/CloudBaseActivity;->mLoginLayout:Landroid/view/View;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 198
    invoke-super/range {p0 .. p1}, Lcom/miui/milk/ui/ExpandableListActivity;->refreshUI(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    const/4 v2, 0x0

    goto :goto_0

    .line 202
    :cond_1
    const/4 v5, 0x1

    .line 203
    .local v5, unknown:Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v1, v2

    invoke-direct {v0, v1}, Lcom/miui/milk/ui/CloudBackupMain;->resetBackupInfo(Z)V

    .line 204
    const/4 v5, 0x0

    .line 205
    sget-object v18, Lcom/miui/milk/ui/CloudBackupInfo;->chooseNumber:Ljava/lang/String;

    .line 206
    .local v18, showNumberId:Ljava/lang/String;
    sget-object v2, Lcom/miui/milk/ui/CloudBackupInfo;->metadata:Lcom/miui/milk/model/MetadataProtos$Metadata;

    invoke-virtual {v2}, Lcom/miui/milk/model/MetadataProtos$Metadata;->getContainerList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/milk/model/MetadataProtos$Container;

    .line 207
    .local v12, container:Lcom/miui/milk/model/MetadataProtos$Container;
    const/4 v11, 0x0

    .line 208
    .local v11, backupItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;>;"
    invoke-virtual {v12}, Lcom/miui/milk/model/MetadataProtos$Container;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountBackupItems:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountBackupItems:Ljava/util/ArrayList;

    move-object v11, v0

    .line 215
    :cond_3
    :goto_1
    if-eqz v11, :cond_2

    .line 216
    invoke-virtual {v12}, Lcom/miui/milk/model/MetadataProtos$Container;->getResourceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/miui/milk/model/MetadataProtos$Resource;

    .line 217
    .local v16, res:Lcom/miui/milk/model/MetadataProtos$Resource;
    invoke-virtual/range {v16 .. v16}, Lcom/miui/milk/model/MetadataProtos$Resource;->getType()I

    move-result v17

    .line 218
    .local v17, resType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/CloudBackupMain;->mCloudDataLabel:[Ljava/lang/CharSequence;

    move-object v2, v0

    const/4 v3, 0x1

    sub-int v3, v17, v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/miui/milk/ui/CloudBackupInfo;->localResourceCount:[I

    const/4 v4, 0x1

    sub-int v4, v17, v4

    aget v4, v2, v4

    invoke-virtual/range {v16 .. v16}, Lcom/miui/milk/model/MetadataProtos$Resource;->getCounts()J

    move-result-wide v6

    invoke-virtual/range {v16 .. v16}, Lcom/miui/milk/model/MetadataProtos$Resource;->getLastDate()J

    move-result-wide v8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/miui/milk/ui/CloudBackupMain;->getBackupItem(Ljava/lang/String;IZJJ)Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 211
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #res:Lcom/miui/milk/model/MetadataProtos$Resource;
    .end local v17           #resType:I
    :cond_4
    invoke-virtual {v12}, Lcom/miui/milk/model/MetadataProtos$Container;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    invoke-virtual {v12}, Lcom/miui/milk/model/MetadataProtos$Container;->getResourceId()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimBackupItems:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimBackupItems:Ljava/util/ArrayList;

    move-object v11, v0

    goto :goto_1

    .line 224
    .end local v11           #backupItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;>;"
    .end local v12           #container:Lcom/miui/milk/model/MetadataProtos$Container;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity;->mAppListAdapter:Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->notifyDataSetChanged()V

    .line 225
    const/4 v2, 0x1

    goto/16 :goto_0
.end method
