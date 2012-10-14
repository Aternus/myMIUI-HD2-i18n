.class public Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "BaseSelectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/ui/BaseSelectList;
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

.field final synthetic this$0:Lcom/miui/backup/ui/BaseSelectList;


# direct methods
.method public constructor <init>(Lcom/miui/backup/ui/BaseSelectList;Landroid/content/Context;II)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "groupResourceId"
    .parameter "childResourceId"

    .prologue
    .line 433
    iput-object p1, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 434
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 435
    iput p3, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mGroupResourceId:I

    .line 436
    iput p4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mChildResourceId:I

    .line 437
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mPaint:Landroid/graphics/Paint;

    .line 438
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 439
    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const/4 v1, 0x1

    .line 443
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    if-nez v0, :cond_1

    .line 444
    if-nez p1, :cond_0

    .line 445
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 454
    :goto_0
    return-object v0

    .line 446
    :cond_0
    if-ne p1, v1, :cond_3

    .line 447
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 450
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 451
    :cond_2
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 452
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 454
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 459
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 467
    if-nez p4, :cond_1

    .line 468
    iget-object v10, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v11, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mChildResourceId:I

    const/4 v12, 0x0

    move-object v0, v10

    move v1, v11

    move-object/from16 v2, p5

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 473
    .local v9, view:Landroid/view/View;
    :goto_0
    const/4 v5, 0x0

    .line 474
    .local v5, appInfo:Lcom/miui/backup/AppInfo;
    iget-object v10, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v10}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v10

    if-nez v10, :cond_3

    .line 475
    if-nez p1, :cond_2

    .line 476
    iget-object v10, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v10, v10, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    move-object v0, v10

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v5, Lcom/miui/backup/AppInfo;

    .line 486
    .restart local v5       #appInfo:Lcom/miui/backup/AppInfo;
    :cond_0
    :goto_1
    const v10, 0x1020016

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 487
    .local v7, appTitle:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mPaint:Landroid/graphics/Paint;

    iget-object v11, v5, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    const/4 v12, 0x1

    const/high16 v13, 0x4334

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v8

    .line 488
    .local v8, count:I
    iget-object v10, v5, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v8, :cond_5

    .line 489
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v5, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    :goto_2
    const v10, 0x1020010

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 495
    .local v6, appSummary:Landroid/widget/TextView;
    iget-object v10, v5, Lcom/miui/milk/common/AppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    const v10, 0x1020001

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 498
    .local v4, appCheck:Landroid/widget/CheckBox;
    iget-boolean v10, v5, Lcom/miui/milk/common/AppInfo;->checked:Z

    invoke-virtual {v4, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 499
    return-object v9

    .line 470
    .end local v4           #appCheck:Landroid/widget/CheckBox;
    .end local v5           #appInfo:Lcom/miui/backup/AppInfo;
    .end local v6           #appSummary:Landroid/widget/TextView;
    .end local v7           #appTitle:Landroid/widget/TextView;
    .end local v8           #count:I
    .end local v9           #view:Landroid/view/View;
    :cond_1
    move-object/from16 v9, p4

    .restart local v9       #view:Landroid/view/View;
    goto :goto_0

    .line 477
    .restart local v5       #appInfo:Lcom/miui/backup/AppInfo;
    :cond_2
    const/4 v10, 0x1

    move/from16 v0, p1

    move v1, v10

    if-ne v0, v1, :cond_0

    .line 478
    iget-object v10, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v10, v10, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    move-object v0, v10

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v5, Lcom/miui/backup/AppInfo;

    .restart local v5       #appInfo:Lcom/miui/backup/AppInfo;
    goto :goto_1

    .line 480
    :cond_3
    iget-object v10, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v10}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 481
    iget-object v10, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v10, v10, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    move-object v0, v10

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v5, Lcom/miui/backup/AppInfo;

    .restart local v5       #appInfo:Lcom/miui/backup/AppInfo;
    goto/16 :goto_1

    .line 482
    :cond_4
    iget-object v10, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v10}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 483
    iget-object v10, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v10, v10, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    move-object v0, v10

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #appInfo:Lcom/miui/backup/AppInfo;
    check-cast v5, Lcom/miui/backup/AppInfo;

    .restart local v5       #appInfo:Lcom/miui/backup/AppInfo;
    goto/16 :goto_1

    .line 491
    .restart local v7       #appTitle:Landroid/widget/TextView;
    .restart local v8       #count:I
    :cond_5
    iget-object v10, v5, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public getChildrenCount(I)I
    .locals 2
    .parameter "groupPosition"

    .prologue
    const/4 v1, 0x1

    .line 504
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    if-nez v0, :cond_1

    .line 505
    if-nez p1, :cond_0

    .line 506
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 515
    :goto_0
    return v0

    .line 507
    :cond_0
    if-ne p1, v1, :cond_3

    .line 508
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 511
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 512
    :cond_2
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 513
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 515
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 2
    .parameter "groupPosition"

    .prologue
    const/4 v1, 0x1

    .line 520
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    if-nez v0, :cond_1

    .line 521
    if-nez p1, :cond_0

    .line 522
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    .line 531
    :goto_0
    return-object v0

    .line 523
    :cond_0
    if-ne p1, v1, :cond_3

    .line 524
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 527
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 529
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 531
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v0

    if-nez v0, :cond_0

    .line 537
    const/4 v0, 0x2

    .line 539
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
    .line 544
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
    const v10, 0x7f060077

    const v9, 0x7f060076

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 550
    move v1, p1

    .line 553
    .local v1, gPosition:I
    if-nez p3, :cond_1

    .line 554
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->mGroupResourceId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 559
    .local v3, view:Landroid/view/View;
    :goto_0
    const v4, 0x1020016

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 560
    .local v2, title:Landroid/widget/TextView;
    const v4, 0x1020001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 562
    .local v0, checkAll:Landroid/widget/CheckBox;
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    if-nez v4, :cond_5

    .line 563
    if-nez p1, :cond_3

    .line 564
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 565
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I
    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$200(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I
    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$200(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v5, v5, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 566
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 594
    :cond_0
    :goto_1
    new-instance v4, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter$1;

    invoke-direct {v4, p0, v1}, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter$1;-><init>(Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;I)V

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    return-object v3

    .line 556
    .end local v0           #checkAll:Landroid/widget/CheckBox;
    .end local v2           #title:Landroid/widget/TextView;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    move-object v3, p3

    .restart local v3       #view:Landroid/view/View;
    goto :goto_0

    .line 568
    .restart local v0       #checkAll:Landroid/widget/CheckBox;
    .restart local v2       #title:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 570
    :cond_3
    if-ne p1, v7, :cond_0

    .line 571
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(I)V

    .line 572
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I
    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$300(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I
    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$300(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v5, v5, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 573
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 575
    :cond_4
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 578
    :cond_5
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    if-ne v4, v7, :cond_7

    .line 579
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 580
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I
    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$200(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSysDataCheckCount:I
    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$200(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v5, v5, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 581
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 583
    :cond_6
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 585
    :cond_7
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mSelectMode:I
    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$100(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 586
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(I)V

    .line 587
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I
    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$300(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    if-lez v4, :cond_8

    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #getter for: Lcom/miui/backup/ui/BaseSelectList;->mUserAppCheckCount:I
    invoke-static {v4}, Lcom/miui/backup/ui/BaseSelectList;->access$300(Lcom/miui/backup/ui/BaseSelectList;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/backup/ui/BaseSelectList$AppExpandableListAdapter;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v5, v5, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 588
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 590
    :cond_8
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 612
    const/4 v0, 0x1

    return v0
.end method
