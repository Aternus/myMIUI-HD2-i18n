.class public Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ExpandableListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/ui/ExpandableListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AppExpandableListAdapter"
.end annotation


# instance fields
.field private final mChildResourceId:I

.field private final mGroupResourceId:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/miui/milk/ui/ExpandableListActivity;


# direct methods
.method public constructor <init>(Lcom/miui/milk/ui/ExpandableListActivity;Landroid/content/Context;II)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "groupResourceId"
    .parameter "childResourceId"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 264
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 265
    iput p3, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->mGroupResourceId:I

    .line 266
    iput p4, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->mChildResourceId:I

    .line 267
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->mPaint:Landroid/graphics/Paint;

    .line 268
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 269
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const/4 v1, 0x1

    .line 273
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListActivity;->access$000(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListActivity;->access$000(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListActivity;->access$000(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v0

    if-nez v0, :cond_3

    if-eq p1, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListActivity;->access$000(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 278
    :cond_4
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 285
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 293
    if-nez p4, :cond_3

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->mChildResourceId:I

    move v14, v0

    const/4 v15, 0x0

    move-object v0, v13

    move v1, v14

    move-object/from16 v2, p5

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 299
    .local v12, view:Landroid/view/View;
    :goto_0
    const/4 v5, 0x0

    .line 300
    .local v5, appInfo:Lcom/miui/backup/AppInfo;
    const/4 v8, 0x0

    .line 301
    .local v8, backupItem:Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    move-object v13, v0

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I
    invoke-static {v13}, Lcom/miui/milk/ui/ExpandableListActivity;->access$000(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v13

    if-nez v13, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    move-object v13, v0

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I
    invoke-static {v13}, Lcom/miui/milk/ui/ExpandableListActivity;->access$000(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    .line 303
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataInfos:Ljava/util/ArrayList;

    move-object v0, v13

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v5, Lcom/miui/backup/AppInfo;

    .line 304
    .restart local v5       #appInfo:Lcom/miui/backup/AppInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountBackupItems:Ljava/util/ArrayList;

    move-object v0, v13

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #backupItem:Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;
    check-cast v8, Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;

    .line 311
    .restart local v8       #backupItem:Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;
    :cond_2
    :goto_1
    const v13, 0x1020016

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 312
    .local v7, appTitle:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->mPaint:Landroid/graphics/Paint;

    move-object v13, v0

    iget-object v14, v5, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    const/4 v15, 0x1

    const/high16 v16, 0x4334

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v9

    .line 313
    .local v9, count:I
    iget-object v13, v5, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v9, :cond_7

    .line 314
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v5, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "..."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :goto_2
    const v13, 0x1020010

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 320
    .local v6, appSummary:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    move-object v13, v0

    const v14, 0x7f060093

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object v0, v8

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;->localCount:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object v0, v8

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;->cloudCount:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/miui/milk/ui/ExpandableListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 321
    .local v11, sumary:Ljava/lang/String;
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    const v13, 0x7f0a0002

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 324
    .local v10, date:Landroid/widget/TextView;
    iget-object v13, v8, Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;->backupTime:Ljava/lang/String;

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    const v13, 0x1020001

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 327
    .local v4, appCheck:Landroid/widget/CheckBox;
    iget-boolean v13, v5, Lcom/miui/milk/common/AppInfo;->checked:Z

    invoke-virtual {v4, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 328
    return-object v12

    .line 296
    .end local v4           #appCheck:Landroid/widget/CheckBox;
    .end local v5           #appInfo:Lcom/miui/backup/AppInfo;
    .end local v6           #appSummary:Landroid/widget/TextView;
    .end local v7           #appTitle:Landroid/widget/TextView;
    .end local v8           #backupItem:Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;
    .end local v9           #count:I
    .end local v10           #date:Landroid/widget/TextView;
    .end local v11           #sumary:Ljava/lang/String;
    .end local v12           #view:Landroid/view/View;
    :cond_3
    move-object/from16 v12, p4

    .restart local v12       #view:Landroid/view/View;
    goto/16 :goto_0

    .line 305
    .restart local v5       #appInfo:Lcom/miui/backup/AppInfo;
    .restart local v8       #backupItem:Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    move-object v13, v0

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I
    invoke-static {v13}, Lcom/miui/milk/ui/ExpandableListActivity;->access$000(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v13

    if-nez v13, :cond_5

    const/4 v13, 0x1

    move/from16 v0, p1

    move v1, v13

    if-eq v0, v1, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    move-object v13, v0

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I
    invoke-static {v13}, Lcom/miui/milk/ui/ExpandableListActivity;->access$000(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    .line 307
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataInfos:Ljava/util/ArrayList;

    move-object v0, v13

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v5, Lcom/miui/backup/AppInfo;

    .line 308
    .restart local v5       #appInfo:Lcom/miui/backup/AppInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    move-object v13, v0

    iget-object v13, v13, Lcom/miui/milk/ui/ExpandableListActivity;->mSimBackupItems:Ljava/util/ArrayList;

    move-object v0, v13

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #backupItem:Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;
    check-cast v8, Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;

    .restart local v8       #backupItem:Lcom/miui/milk/ui/ExpandableListActivity$BackupItem;
    goto/16 :goto_1

    .line 316
    .restart local v7       #appTitle:Landroid/widget/TextView;
    .restart local v9       #count:I
    :cond_7
    iget-object v13, v5, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public getChildrenCount(I)I
    .locals 2
    .parameter "groupPosition"

    .prologue
    const/4 v1, 0x1

    .line 333
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListActivity;->access$000(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListActivity;->access$000(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 340
    :goto_0
    return v0

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListActivity;->access$000(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v0

    if-nez v0, :cond_3

    if-eq p1, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListActivity;->access$000(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 338
    :cond_4
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 340
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 2
    .parameter "groupPosition"

    .prologue
    const/4 v1, 0x1

    .line 345
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListActivity;->access$000(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListActivity;->access$000(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataInfos:Ljava/util/ArrayList;

    .line 352
    :goto_0
    return-object v0

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListActivity;->access$000(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v0

    if-nez v0, :cond_3

    if-eq p1, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListActivity;->access$000(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 350
    :cond_4
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    iget-object v0, v0, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 352
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/milk/ui/ExpandableListActivity;->access$000(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 358
    const/4 v0, 0x2

    .line 360
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 365
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 372
    move v3, p1

    .line 375
    .local v3, gPosition:I
    if-nez p3, :cond_3

    .line 376
    iget-object v6, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->mGroupResourceId:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 381
    .local v5, view:Landroid/view/View;
    :goto_0
    const v6, 0x1020016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 382
    .local v4, title:Landroid/widget/TextView;
    const v6, 0x1020001

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 384
    .local v2, checkAll:Landroid/widget/CheckBox;
    iget-object v6, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I
    invoke-static {v6}, Lcom/miui/milk/ui/ExpandableListActivity;->access$000(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v6

    if-nez v6, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I
    invoke-static {v6}, Lcom/miui/milk/ui/ExpandableListActivity;->access$000(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 386
    :cond_1
    iget-object v6, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    invoke-static {v6}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v0

    .line 387
    .local v0, accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    iget-object v6, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    const v7, 0x7f06008a

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/miui/milk/util/AccountUtil$AccountInfo;->nickname:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/miui/milk/ui/ExpandableListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, accountText:Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v6, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataCheckCount:I
    invoke-static {v6}, Lcom/miui/milk/ui/ExpandableListActivity;->access$100(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataCheckCount:I
    invoke-static {v6}, Lcom/miui/milk/ui/ExpandableListActivity;->access$100(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    iget-object v7, v7, Lcom/miui/milk/ui/ExpandableListActivity;->mAccountDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 390
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 403
    .end local v0           #accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    .end local v1           #accountText:Ljava/lang/String;
    :cond_2
    :goto_1
    new-instance v6, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter$1;

    invoke-direct {v6, p0, v3}, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter$1;-><init>(Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;I)V

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    return-object v5

    .line 378
    .end local v2           #checkAll:Landroid/widget/CheckBox;
    .end local v4           #title:Landroid/widget/TextView;
    .end local v5           #view:Landroid/view/View;
    :cond_3
    move-object v5, p3

    .restart local v5       #view:Landroid/view/View;
    goto :goto_0

    .line 392
    .restart local v0       #accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    .restart local v1       #accountText:Ljava/lang/String;
    .restart local v2       #checkAll:Landroid/widget/CheckBox;
    .restart local v4       #title:Landroid/widget/TextView;
    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 394
    .end local v0           #accountInfo:Lcom/miui/milk/util/AccountUtil$AccountInfo;
    .end local v1           #accountText:Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I
    invoke-static {v6}, Lcom/miui/milk/ui/ExpandableListActivity;->access$000(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x1

    if-eq p1, v6, :cond_7

    :cond_6
    iget-object v6, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mSelectMode:I
    invoke-static {v6}, Lcom/miui/milk/ui/ExpandableListActivity;->access$000(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 396
    :cond_7
    const v6, 0x7f06008b

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 397
    iget-object v6, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataCheckCount:I
    invoke-static {v6}, Lcom/miui/milk/ui/ExpandableListActivity;->access$200(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v6

    if-lez v6, :cond_8

    iget-object v6, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    #getter for: Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataCheckCount:I
    invoke-static {v6}, Lcom/miui/milk/ui/ExpandableListActivity;->access$200(Lcom/miui/milk/ui/ExpandableListActivity;)I

    move-result v6

    iget-object v7, p0, Lcom/miui/milk/ui/ExpandableListActivity$AppExpandableListAdapter;->this$0:Lcom/miui/milk/ui/ExpandableListActivity;

    iget-object v7, v7, Lcom/miui/milk/ui/ExpandableListActivity;->mSimDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_8

    .line 398
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 400
    :cond_8
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 422
    const/4 v0, 0x1

    return v0
.end method
