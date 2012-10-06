.class Lcom/miui/uac/LogActivity$LogAdapter;
.super Landroid/widget/BaseAdapter;
.source "LogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/uac/LogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/miui/uac/LogActivity;


# direct methods
.method public constructor <init>(Lcom/miui/uac/LogActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/miui/uac/LogActivity$LogAdapter;->this$0:Lcom/miui/uac/LogActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 125
    iput-object p2, p0, Lcom/miui/uac/LogActivity$LogAdapter;->mContext:Landroid/content/Context;

    .line 126
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/miui/uac/LogActivity$LogAdapter;->this$0:Lcom/miui/uac/LogActivity;

    #getter for: Lcom/miui/uac/LogActivity;->mLogList:Ljava/util/List;
    invoke-static {v0}, Lcom/miui/uac/LogActivity;->access$200(Lcom/miui/uac/LogActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 135
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/uac/LogActivity$LogAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LogAdapter tried to get a view out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/miui/uac/LogActivity$LogAdapter;->this$0:Lcom/miui/uac/LogActivity;

    #getter for: Lcom/miui/uac/LogActivity;->mLogList:Ljava/util/List;
    invoke-static {v0}, Lcom/miui/uac/LogActivity;->access$200(Lcom/miui/uac/LogActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 144
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 149
    if-ltz p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/uac/LogActivity$LogAdapter;->getCount()I

    move-result v8

    move/from16 v0, p1

    move v1, v8

    if-lt v0, v1, :cond_1

    .line 150
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "PermissionDetailAdapter tried to get a view out of range"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 155
    :cond_1
    if-nez p2, :cond_5

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/LogActivity$LogAdapter;->mContext:Landroid/content/Context;

    move-object v8, v0

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030004

    const/4 v10, 0x0

    move-object v0, v8

    move v1, v9

    move-object/from16 v2, p3

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 157
    new-instance v7, Lcom/miui/uac/AppDetailsActivity$ViewHolder;

    invoke-direct {v7}, Lcom/miui/uac/AppDetailsActivity$ViewHolder;-><init>()V

    .line 158
    .local v7, viewHolder:Lcom/miui/uac/AppDetailsActivity$ViewHolder;
    const v8, 0x7f090008

    move-object/from16 v0, p2

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/widget/TextView;

    move-object/from16 v0, p3

    move-object v1, v7

    iput-object v0, v1, Lcom/miui/uac/AppDetailsActivity$ViewHolder;->primaryItem:Landroid/widget/TextView;

    .line 159
    const v8, 0x7f09000b

    move-object/from16 v0, p2

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    move-object/from16 v0, p3

    move-object v1, v7

    iput-object v0, v1, Lcom/miui/uac/AppDetailsActivity$ViewHolder;->secondaryItem:Landroid/widget/TextView;

    .line 160
    const v8, 0x7f090009

    move-object/from16 v0, p2

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    move-object/from16 v0, p3

    move-object v1, v7

    iput-object v0, v1, Lcom/miui/uac/AppDetailsActivity$ViewHolder;->valuse:Landroid/widget/TextView;

    .line 161
    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 166
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/LogActivity$LogAdapter;->this$0:Lcom/miui/uac/LogActivity;

    move-object v8, v0

    #getter for: Lcom/miui/uac/LogActivity;->mLogList:Ljava/util/List;
    invoke-static {v8}, Lcom/miui/uac/LogActivity;->access$200(Lcom/miui/uac/LogActivity;)Ljava/util/List;

    move-result-object v8

    move-object v0, v8

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/uac/LogActivity$LogItem;

    .line 167
    .local v4, item:Lcom/miui/uac/LogActivity$LogItem;
    const v8, 0x7f090012

    move-object/from16 v0, p2

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 168
    .local v6, timeTitle:Landroid/widget/TextView;
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/LogActivity$LogAdapter;->mContext:Landroid/content/Context;

    move-object v8, v0

    iget-wide v9, v4, Lcom/miui/uac/LogActivity$LogItem;->mUpdateTime:J

    invoke-static {v8, v9, v10}, Lcom/miui/uac/Util;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/LogActivity$LogAdapter;->mContext:Landroid/content/Context;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/LogActivity$LogAdapter;->this$0:Lcom/miui/uac/LogActivity;

    move-object v10, v0

    #getter for: Lcom/miui/uac/LogActivity;->mLogList:Ljava/util/List;
    invoke-static {v10}, Lcom/miui/uac/LogActivity;->access$200(Lcom/miui/uac/LogActivity;)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    sub-int v11, p1, v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/miui/uac/LogActivity$LogItem;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/miui/uac/LogActivity$LogItem;->mUpdateTime:J

    move-wide v10, v0

    invoke-static {v9, v10, v11}, Lcom/miui/uac/Util;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 171
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/LogActivity$LogAdapter;->mContext:Landroid/content/Context;

    move-object v8, v0

    iget-wide v9, v4, Lcom/miui/uac/LogActivity$LogItem;->mUpdateTime:J

    invoke-static {v8, v9, v10}, Lcom/miui/uac/Util;->formatDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_3
    iget-object v8, v7, Lcom/miui/uac/AppDetailsActivity$ViewHolder;->primaryItem:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/LogActivity$LogAdapter;->mContext:Landroid/content/Context;

    move-object v9, v0

    iget-object v10, v4, Lcom/miui/uac/LogActivity$LogItem;->mPackageName:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/miui/uac/Util;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v8, v4, Lcom/miui/uac/LogActivity$LogItem;->mPermission:Ljava/lang/String;

    invoke-static {v8}, Lcom/miui/uac/Util;->getPermissionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, permissionKey:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 177
    iget-object v8, v7, Lcom/miui/uac/AppDetailsActivity$ViewHolder;->secondaryItem:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/LogActivity$LogAdapter;->mContext:Landroid/content/Context;

    move-object v9, v0

    const v10, 0x7f06002f

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/LogActivity$LogAdapter;->mContext:Landroid/content/Context;

    move-object v14, v0

    iget v15, v4, Lcom/miui/uac/LogActivity$LogItem;->mAllowId:I

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    const v15, 0x7f06000d

    :goto_1
    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/LogActivity$LogAdapter;->mContext:Landroid/content/Context;

    move-object v14, v0

    sget-object v15, Lcom/miui/uac/Util;->PERMISSION_LABELS_MAP:Ljava/util/HashMap;

    invoke-virtual {v15, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    :cond_4
    iget-object v8, v7, Lcom/miui/uac/AppDetailsActivity$ViewHolder;->valuse:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/LogActivity$LogAdapter;->mContext:Landroid/content/Context;

    move-object v9, v0

    iget-wide v10, v4, Lcom/miui/uac/LogActivity$LogItem;->mUpdateTime:J

    invoke-static {v9, v10, v11}, Lcom/miui/uac/Util;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    return-object p2

    .line 163
    .end local v4           #item:Lcom/miui/uac/LogActivity$LogItem;
    .end local v5           #permissionKey:Ljava/lang/String;
    .end local v6           #timeTitle:Landroid/widget/TextView;
    .end local v7           #viewHolder:Lcom/miui/uac/AppDetailsActivity$ViewHolder;
    .restart local p1
    .restart local p3
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/uac/AppDetailsActivity$ViewHolder;

    .restart local v7       #viewHolder:Lcom/miui/uac/AppDetailsActivity$ViewHolder;
    goto/16 :goto_0

    .line 177
    .end local p1
    .end local p3
    .restart local v4       #item:Lcom/miui/uac/LogActivity$LogItem;
    .restart local v5       #permissionKey:Ljava/lang/String;
    .restart local v6       #timeTitle:Landroid/widget/TextView;
    :cond_6
    const v15, 0x7f06002d

    goto :goto_1
.end method
