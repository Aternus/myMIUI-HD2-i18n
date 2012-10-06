.class public Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;
.super Landroid/widget/SimpleAdapter;
.source "LocalBackupMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/ui/LocalBackupMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BackupAdapter"
.end annotation


# instance fields
.field private mBatchDeleteMode:Z

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/miui/backup/ui/LocalBackupMain;


# direct methods
.method public constructor <init>(Lcom/miui/backup/ui/LocalBackupMain;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "context"
    .parameter
    .parameter "resource"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 559
    .local p3, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object p1, p0, Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 560
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;->mBatchDeleteMode:Z

    .line 561
    iput-object p2, p0, Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;->mContext:Landroid/content/Context;

    .line 562
    return-void
.end method


# virtual methods
.method public getBatchDeleteMode()Z
    .locals 1

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;->mBatchDeleteMode:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 566
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 568
    .local v7, view:Landroid/view/View;
    iget-object v8, p0, Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    iget-object v8, v8, Lcom/miui/backup/ui/LocalBackupMain;->mBackupList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    .line 570
    .local v3, item:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    const v8, 0x7f0a0016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 571
    .local v5, target:Landroid/widget/ImageView;
    const v8, 0x7f0a0017

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 572
    .local v0, cbView:Landroid/widget/CheckBox;
    const-string v8, "checked"

    invoke-virtual {v3, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 574
    const-string v8, "failed"

    invoke-virtual {v3, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 576
    .local v2, isFailed:Ljava/lang/Boolean;
    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 577
    .local v6, title:Landroid/widget/TextView;
    const-string v8, "title"

    invoke-virtual {v3, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 579
    .local v1, fileName:Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    invoke-static {v8, v1}, Lcom/miui/backup/BackupUtils;->getShowNameFromFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 583
    :goto_0
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    const v8, 0x1020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 586
    .local v4, summary:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_3

    .line 587
    :cond_0
    iget-object v8, p0, Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;->mContext:Landroid/content/Context;

    const v9, 0x10300b3

    invoke-virtual {v4, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 592
    :goto_1
    iget-boolean v8, p0, Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;->mBatchDeleteMode:Z

    if-eqz v8, :cond_4

    .line 593
    if-eqz v5, :cond_1

    .line 594
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 596
    :cond_1
    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 605
    :cond_2
    :goto_2
    return-object v7

    .line 589
    :cond_3
    iget-object v8, p0, Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f080001

    invoke-virtual {v4, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_1

    .line 598
    :cond_4
    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 599
    if-eqz v5, :cond_2

    .line 600
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 580
    .end local v4           #summary:Landroid/widget/TextView;
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public setBatchDeleteMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 609
    iput-boolean p1, p0, Lcom/miui/backup/ui/LocalBackupMain$BackupAdapter;->mBatchDeleteMode:Z

    .line 610
    return-void
.end method
