.class public Lcom/miui/milk/ui/ProgressResultActivity;
.super Landroid/preference/PreferenceActivity;
.source "ProgressResultActivity.java"


# instance fields
.field private mIntentTaskId:J

.field private mNM:Landroid/app/NotificationManager;

.field private mOkButton:Landroid/widget/Button;

.field private mProgressStore:Lcom/miui/milk/storage/ProgressTrackerStore;

.field private mRes:Landroid/content/res/Resources;

.field private mResultBox:Landroid/widget/LinearLayout;

.field private mResultImage:Landroid/widget/ImageView;

.field private mResultSummary:Landroid/widget/TextView;

.field private mResultTitle:Landroid/widget/TextView;

.field private mTaskId:J

.field private mTitle:Landroid/widget/TextView;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private getItemView()Landroid/view/View;
    .locals 5

    .prologue
    .line 190
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 191
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030011

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 192
    .local v1, view:Landroid/view/View;
    return-object v1
.end method

.method private showDetailResult(Lcom/miui/milk/storage/ProgressTask;)V
    .locals 11
    .parameter "task"

    .prologue
    .line 139
    iget-object v8, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mResultBox:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 140
    iget-wide v8, p1, Lcom/miui/milk/storage/ProgressTask;->id:J

    iput-wide v8, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mTaskId:J

    .line 141
    iget-object v8, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mProgressStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    iget-wide v9, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mTaskId:J

    invoke-virtual {v8, v9, v10}, Lcom/miui/milk/storage/ProgressTrackerStore;->getTaskDetails(J)Ljava/util/ArrayList;

    move-result-object v5

    .line 142
    .local v5, taskDetails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/storage/ProgressTaskDetail;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/milk/storage/ProgressTaskDetail;

    .line 143
    .local v4, taskDetail:Lcom/miui/milk/storage/ProgressTaskDetail;
    invoke-direct {p0}, Lcom/miui/milk/ui/ProgressResultActivity;->getItemView()Landroid/view/View;

    move-result-object v7

    .line 144
    .local v7, view:Landroid/view/View;
    const v8, 0x7f0a0032

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 145
    .local v6, title:Landroid/widget/TextView;
    const v8, 0x7f0a0033

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 147
    .local v3, summary:Landroid/widget/TextView;
    iget-object v8, v4, Lcom/miui/milk/storage/ProgressTaskDetail;->title:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const v8, 0x7f060048

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 151
    iget v8, v4, Lcom/miui/milk/storage/ProgressTaskDetail;->status:I

    packed-switch v8, :pswitch_data_0

    .line 185
    :goto_1
    iget-object v8, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mResultBox:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 153
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 154
    .local v1, info:Ljava/lang/StringBuffer;
    iget v8, v4, Lcom/miui/milk/storage/ProgressTaskDetail;->type:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 155
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f06002a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/miui/milk/storage/ProgressTaskDetail;->newCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f06002b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/miui/milk/storage/ProgressTaskDetail;->updateCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f06002c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/miui/milk/storage/ProgressTaskDetail;->deleteCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    :cond_0
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 158
    :cond_1
    iget v8, v4, Lcom/miui/milk/storage/ProgressTaskDetail;->type:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 159
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f06005e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/miui/milk/storage/ProgressTaskDetail;->newCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 164
    .end local v1           #info:Ljava/lang/StringBuffer;
    :pswitch_1
    const v8, 0x7f060048

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 169
    :pswitch_2
    iget-object v8, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mRes:Landroid/content/res/Resources;

    iget v9, v4, Lcom/miui/milk/storage/ProgressTaskDetail;->statusCode:I

    invoke-static {v8, v9}, Lcom/miui/milk/util/SysHelpers;->getNetworkErrorString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, networkErrorString:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .restart local v1       #info:Ljava/lang/StringBuffer;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const-string v8, "("

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    iget v8, v4, Lcom/miui/milk/storage/ProgressTaskDetail;->type:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 174
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f06002a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/miui/milk/storage/ProgressTaskDetail;->newCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f06002c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/miui/milk/storage/ProgressTaskDetail;->deleteCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    :cond_2
    :goto_3
    const-string v8, ")"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {p0}, Lcom/miui/milk/ui/ProgressResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    .line 176
    :cond_3
    iget v8, v4, Lcom/miui/milk/storage/ProgressTaskDetail;->type:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 177
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mRes:Landroid/content/res/Resources;

    const v10, 0x7f06005e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/miui/milk/storage/ProgressTaskDetail;->newCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 187
    .end local v1           #info:Ljava/lang/StringBuffer;
    .end local v2           #networkErrorString:Ljava/lang/String;
    .end local v3           #summary:Landroid/widget/TextView;
    .end local v4           #taskDetail:Lcom/miui/milk/storage/ProgressTaskDetail;
    .end local v6           #title:Landroid/widget/TextView;
    .end local v7           #view:Landroid/view/View;
    :cond_4
    return-void

    .line 151
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private showResultPage()V
    .locals 7

    .prologue
    const v6, 0x7f090002

    const/4 v5, 0x2

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, task:Lcom/miui/milk/storage/ProgressTask;
    iget-wide v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mIntentTaskId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mProgressStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    iget-wide v2, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mIntentTaskId:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/milk/storage/ProgressTrackerStore;->getTaskById(J)Lcom/miui/milk/storage/ProgressTask;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_1

    .line 105
    iget v1, v0, Lcom/miui/milk/storage/ProgressTask;->type:I

    iput v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mType:I

    .line 106
    iget v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 107
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f060031

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget v1, v0, Lcom/miui/milk/storage/ProgressTask;->status:I

    if-ne v1, v5, :cond_2

    .line 109
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mResultImage:Landroid/widget/ImageView;

    const v2, 0x7f020010

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mResultTitle:Landroid/widget/TextView;

    const v2, 0x7f060069

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 111
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mResultTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/milk/ui/ProgressResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 112
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mResultSummary:Landroid/widget/TextView;

    iget-wide v2, v0, Lcom/miui/milk/storage/ProgressTask;->date:J

    invoke-static {p0, v2, v3}, Lcom/miui/backup/BackupUtils;->getShowNameFromDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/milk/ui/ProgressResultActivity;->showDetailResult(Lcom/miui/milk/storage/ProgressTask;)V

    .line 136
    :cond_1
    return-void

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mResultImage:Landroid/widget/ImageView;

    const v2, 0x7f02000f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mResultTitle:Landroid/widget/TextView;

    const v2, 0x7f06006a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mResultTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/milk/ui/ProgressResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 117
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mResultSummary:Landroid/widget/TextView;

    iget-wide v2, v0, Lcom/miui/milk/storage/ProgressTask;->date:J

    invoke-static {p0, v2, v3}, Lcom/miui/backup/BackupUtils;->getShowNameFromDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 119
    :cond_3
    iget v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mType:I

    if-ne v1, v5, :cond_0

    .line 120
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f060032

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 121
    iget v1, v0, Lcom/miui/milk/storage/ProgressTask;->status:I

    if-ne v1, v5, :cond_4

    .line 122
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mResultImage:Landroid/widget/ImageView;

    const v2, 0x7f020013

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mResultTitle:Landroid/widget/TextView;

    const v2, 0x7f06006b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 124
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mResultTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/milk/ui/ProgressResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 125
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mResultSummary:Landroid/widget/TextView;

    iget-wide v2, v0, Lcom/miui/milk/storage/ProgressTask;->date:J

    invoke-static {p0, v2, v3}, Lcom/miui/backup/BackupUtils;->getShowNameFromDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 127
    :cond_4
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mResultImage:Landroid/widget/ImageView;

    const v2, 0x7f020012

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mResultTitle:Landroid/widget/TextView;

    const v2, 0x7f06006c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 129
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mResultTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/milk/ui/ProgressResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 130
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mResultSummary:Landroid/widget/TextView;

    iget-wide v2, v0, Lcom/miui/milk/storage/ProgressTask;->date:J

    invoke-static {p0, v2, v3}, Lcom/miui/backup/BackupUtils;->getShowNameFromDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/ProgressResultActivity;->setContentView(I)V

    .line 54
    const/high16 v0, 0x7f0a

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/ProgressResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mTitle:Landroid/widget/TextView;

    .line 55
    const v0, 0x7f0a0031

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/ProgressResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mResultBox:Landroid/widget/LinearLayout;

    .line 56
    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/ProgressResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mResultImage:Landroid/widget/ImageView;

    .line 57
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/ProgressResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mResultTitle:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0a002f

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/ProgressResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mResultSummary:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0a002c

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/ProgressResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mOkButton:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mOkButton:Landroid/widget/Button;

    new-instance v1, Lcom/miui/milk/ui/ProgressResultActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/milk/ui/ProgressResultActivity$1;-><init>(Lcom/miui/milk/ui/ProgressResultActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    new-instance v0, Lcom/miui/milk/storage/ProgressTrackerStore;

    invoke-direct {v0, p0}, Lcom/miui/milk/storage/ProgressTrackerStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mProgressStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    .line 71
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/ProgressResultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mNM:Landroid/app/NotificationManager;

    .line 72
    invoke-virtual {p0}, Lcom/miui/milk/ui/ProgressResultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mRes:Landroid/content/res/Resources;

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 96
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f06000e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 97
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f06001e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 98
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 86
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f06000c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 87
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f060020

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 88
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f06000e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 89
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f06001e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 90
    invoke-direct {p0}, Lcom/miui/milk/ui/ProgressResultActivity;->showResultPage()V

    .line 91
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 77
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 78
    invoke-virtual {p0}, Lcom/miui/milk/ui/ProgressResultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "TASK_ID"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mIntentTaskId:J

    .line 80
    iput-wide v3, p0, Lcom/miui/milk/ui/ProgressResultActivity;->mTaskId:J

    .line 81
    return-void
.end method
