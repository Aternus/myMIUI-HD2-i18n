.class Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/uac/AppDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PermissionDetailAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/miui/uac/AppDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/miui/uac/AppDetailsActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;->this$0:Lcom/miui/uac/AppDetailsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 223
    iput-object p2, p0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;->mContext:Landroid/content/Context;

    .line 224
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;->this$0:Lcom/miui/uac/AppDetailsActivity;

    #getter for: Lcom/miui/uac/AppDetailsActivity;->mPermissionDetailList:Ljava/util/List;
    invoke-static {v0}, Lcom/miui/uac/AppDetailsActivity;->access$300(Lcom/miui/uac/AppDetailsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 233
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PermissionDetailAdapter tried to get a view out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;->this$0:Lcom/miui/uac/AppDetailsActivity;

    #getter for: Lcom/miui/uac/AppDetailsActivity;->mPermissionDetailList:Ljava/util/List;
    invoke-static {v0}, Lcom/miui/uac/AppDetailsActivity;->access$300(Lcom/miui/uac/AppDetailsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 242
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 247
    if-ltz p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;->getCount()I

    move-result v11

    move/from16 v0, p1

    move v1, v11

    if-lt v0, v1, :cond_1

    .line 248
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "PermissionDetailAdapter tried to get a view out of range"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 253
    :cond_1
    if-nez p2, :cond_3

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;->mContext:Landroid/content/Context;

    move-object v11, v0

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f030001

    const/4 v13, 0x0

    move-object v0, v11

    move v1, v12

    move-object/from16 v2, p3

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 255
    new-instance v10, Lcom/miui/uac/AppDetailsActivity$ViewHolder;

    invoke-direct {v10}, Lcom/miui/uac/AppDetailsActivity$ViewHolder;-><init>()V

    .line 256
    .local v10, viewHolder:Lcom/miui/uac/AppDetailsActivity$ViewHolder;
    const v11, 0x7f090008

    move-object/from16 v0, p2

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/widget/TextView;

    move-object/from16 v0, p3

    move-object v1, v10

    iput-object v0, v1, Lcom/miui/uac/AppDetailsActivity$ViewHolder;->primaryItem:Landroid/widget/TextView;

    .line 257
    const v11, 0x7f09000b

    move-object/from16 v0, p2

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    move-object/from16 v0, p3

    move-object v1, v10

    iput-object v0, v1, Lcom/miui/uac/AppDetailsActivity$ViewHolder;->secondaryItem:Landroid/widget/TextView;

    .line 258
    const v11, 0x7f090009

    move-object/from16 v0, p2

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    move-object/from16 v0, p3

    move-object v1, v10

    iput-object v0, v1, Lcom/miui/uac/AppDetailsActivity$ViewHolder;->valuse:Landroid/widget/TextView;

    .line 259
    move-object/from16 v0, p2

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 264
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;->this$0:Lcom/miui/uac/AppDetailsActivity;

    move-object v11, v0

    #getter for: Lcom/miui/uac/AppDetailsActivity;->mPermissionDetailList:Ljava/util/List;
    invoke-static {v11}, Lcom/miui/uac/AppDetailsActivity;->access$300(Lcom/miui/uac/AppDetailsActivity;)Ljava/util/List;

    move-result-object v11

    move-object v0, v11

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;

    .line 265
    .local v7, detailItem:Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;
    const v11, 0x7f090006

    move-object/from16 v0, p2

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 266
    .local v4, category:Landroid/widget/TextView;
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    if-nez p1, :cond_4

    .line 268
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    const v11, 0x7f06002c

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(I)V

    .line 275
    :cond_2
    :goto_1
    const v11, 0x7f090007

    move-object/from16 v0, p2

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 276
    .local v5, categoryItem:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;->this$0:Lcom/miui/uac/AppDetailsActivity;

    move-object v11, v0

    #getter for: Lcom/miui/uac/AppDetailsActivity;->mPermissionNum:I
    invoke-static {v11}, Lcom/miui/uac/AppDetailsActivity;->access$200(Lcom/miui/uac/AppDetailsActivity;)I

    move-result v11

    move/from16 v0, p1

    move v1, v11

    if-ge v0, v1, :cond_8

    .line 277
    iget-object v11, v10, Lcom/miui/uac/AppDetailsActivity$ViewHolder;->primaryItem:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;->mContext:Landroid/content/Context;

    move-object v12, v0

    sget-object v13, Lcom/miui/uac/Util;->PERMISSION_LABELS_MAP:Ljava/util/HashMap;

    iget-object v14, v7, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;->mPermission:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v11, v10, Lcom/miui/uac/AppDetailsActivity$ViewHolder;->secondaryItem:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;->mContext:Landroid/content/Context;

    move-object v12, v0

    sget-object v13, Lcom/miui/uac/Util;->PERMISSION_SUMMARY_MAP:Ljava/util/HashMap;

    iget-object v14, v7, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;->mPermission:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    const/4 v9, 0x0

    .line 282
    .local v9, res:I
    iget v11, v7, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;->mAllowdId:I

    packed-switch v11, :pswitch_data_0

    .line 293
    :goto_2
    iget-object v11, v10, Lcom/miui/uac/AppDetailsActivity$ViewHolder;->valuse:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(I)V

    .line 294
    iget-object v11, v10, Lcom/miui/uac/AppDetailsActivity$ViewHolder;->valuse:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    const v11, 0x7f09000a

    move-object/from16 v0, p2

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const/4 v11, 0x0

    move-object/from16 v0, p3

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    if-nez p1, :cond_6

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;->this$0:Lcom/miui/uac/AppDetailsActivity;

    move-object v11, v0

    #getter for: Lcom/miui/uac/AppDetailsActivity;->mPermissionNum:I
    invoke-static {v11}, Lcom/miui/uac/AppDetailsActivity;->access$200(Lcom/miui/uac/AppDetailsActivity;)I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_5

    .line 299
    const v11, 0x1080530

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 332
    .end local v9           #res:I
    :goto_3
    return-object p2

    .line 261
    .end local v4           #category:Landroid/widget/TextView;
    .end local v5           #categoryItem:Landroid/widget/LinearLayout;
    .end local v7           #detailItem:Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;
    .end local v10           #viewHolder:Lcom/miui/uac/AppDetailsActivity$ViewHolder;
    .restart local p3
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/uac/AppDetailsActivity$ViewHolder;

    .restart local v10       #viewHolder:Lcom/miui/uac/AppDetailsActivity$ViewHolder;
    goto/16 :goto_0

    .line 270
    .end local p3
    .restart local v4       #category:Landroid/widget/TextView;
    .restart local v7       #detailItem:Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;->this$0:Lcom/miui/uac/AppDetailsActivity;

    move-object v11, v0

    #getter for: Lcom/miui/uac/AppDetailsActivity;->mPermissionNum:I
    invoke-static {v11}, Lcom/miui/uac/AppDetailsActivity;->access$200(Lcom/miui/uac/AppDetailsActivity;)I

    move-result v11

    move/from16 v0, p1

    move v1, v11

    if-ne v0, v1, :cond_2

    .line 271
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    const v11, 0x7f060019

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 284
    .restart local v5       #categoryItem:Landroid/widget/LinearLayout;
    .restart local v9       #res:I
    :pswitch_0
    const v9, 0x7f06000d

    .line 285
    goto :goto_2

    .line 287
    :pswitch_1
    const v9, 0x7f06002e

    .line 288
    goto :goto_2

    .line 290
    :pswitch_2
    const v9, 0x7f06002d

    goto :goto_2

    .line 301
    :cond_5
    const v11, 0x1080534

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 303
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;->this$0:Lcom/miui/uac/AppDetailsActivity;

    move-object v11, v0

    #getter for: Lcom/miui/uac/AppDetailsActivity;->mPermissionNum:I
    invoke-static {v11}, Lcom/miui/uac/AppDetailsActivity;->access$200(Lcom/miui/uac/AppDetailsActivity;)I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    move/from16 v0, p1

    move v1, v11

    if-ne v0, v1, :cond_7

    .line 304
    const v11, 0x1080532

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 306
    :cond_7
    const v11, 0x1080531

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 309
    .end local v9           #res:I
    :cond_8
    iget-object v11, v10, Lcom/miui/uac/AppDetailsActivity$ViewHolder;->primaryItem:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;->mContext:Landroid/content/Context;

    move-object v12, v0

    iget-wide v13, v7, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;->mUpdateTime:J

    invoke-static {v12, v13, v14}, Lcom/miui/uac/Util;->formatDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v11, v7, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;->mPermission:Ljava/lang/String;

    invoke-static {v11}, Lcom/miui/uac/Util;->getPermissionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 311
    .local v8, permissionKey:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 312
    iget-object v11, v10, Lcom/miui/uac/AppDetailsActivity$ViewHolder;->secondaryItem:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;->mContext:Landroid/content/Context;

    move-object v12, v0

    const v13, 0x7f06002f

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object v0, v7

    iget v0, v0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailItem;->mAllowdId:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    const v18, 0x7f06000d

    :goto_4
    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    sget-object v18, Lcom/miui/uac/Util;->PERMISSION_LABELS_MAP:Ljava/util/HashMap;

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    :cond_9
    iget-object v11, v10, Lcom/miui/uac/AppDetailsActivity$ViewHolder;->valuse:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    const v11, 0x7f09000a

    move-object/from16 v0, p2

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const/16 v11, 0x8

    move-object/from16 v0, p3

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;->getCount()I

    move-result v6

    .line 320
    .local v6, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;->this$0:Lcom/miui/uac/AppDetailsActivity;

    move-object v11, v0

    #getter for: Lcom/miui/uac/AppDetailsActivity;->mPermissionNum:I
    invoke-static {v11}, Lcom/miui/uac/AppDetailsActivity;->access$200(Lcom/miui/uac/AppDetailsActivity;)I

    move-result v11

    move/from16 v0, p1

    move v1, v11

    if-ne v0, v1, :cond_c

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/AppDetailsActivity$PermissionDetailAdapter;->this$0:Lcom/miui/uac/AppDetailsActivity;

    move-object v11, v0

    #getter for: Lcom/miui/uac/AppDetailsActivity;->mPermissionNum:I
    invoke-static {v11}, Lcom/miui/uac/AppDetailsActivity;->access$200(Lcom/miui/uac/AppDetailsActivity;)I

    move-result v11

    sub-int v11, v6, v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_b

    .line 322
    const v11, 0x1080530

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 312
    .end local v6           #count:I
    :cond_a
    const v18, 0x7f06002d

    goto :goto_4

    .line 324
    .restart local v6       #count:I
    :cond_b
    const v11, 0x1080534

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 326
    :cond_c
    const/4 v11, 0x1

    sub-int v11, v6, v11

    move/from16 v0, p1

    move v1, v11

    if-ne v0, v1, :cond_d

    .line 327
    const v11, 0x1080532

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 329
    :cond_d
    const v11, 0x1080531

    invoke-virtual {v5, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 282
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
