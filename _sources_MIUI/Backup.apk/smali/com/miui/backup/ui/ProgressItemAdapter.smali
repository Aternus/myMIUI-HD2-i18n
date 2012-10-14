.class public Lcom/miui/backup/ui/ProgressItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ProgressItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/miui/backup/CmdRunningInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResourceId:I


# direct methods
.method constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/miui/backup/CmdRunningInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/miui/backup/CmdRunningInfo;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/backup/ui/ProgressItemAdapter;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/ui/ProgressItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 27
    iput p2, p0, Lcom/miui/backup/ui/ProgressItemAdapter;->mResourceId:I

    .line 28
    iput-object p1, p0, Lcom/miui/backup/ui/ProgressItemAdapter;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private getFinishedSizeDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "finishedSize"

    .prologue
    .line 134
    invoke-static {p1}, Lcom/miui/backup/BackupUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getProgressDisplay(I)Ljava/lang/String;
    .locals 2
    .parameter "progress"

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 33
    iget-object v7, p0, Lcom/miui/backup/ui/ProgressItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v8, p0, Lcom/miui/backup/ui/ProgressItemAdapter;->mResourceId:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 35
    .local v6, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/miui/backup/ui/ProgressItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/backup/CmdRunningInfo;

    .line 37
    .local v4, runningInfo:Lcom/miui/backup/CmdRunningInfo;
    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 38
    .local v5, titleView:Landroid/widget/TextView;
    iget-object v7, v4, Lcom/miui/backup/CmdRunningInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    const v7, 0x7f0a0026

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 41
    .local v3, progressBar:Landroid/widget/ProgressBar;
    const v7, 0x7f0a0027

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 42
    .local v2, infoView:Landroid/widget/TextView;
    const v7, 0x7f0a0029

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 44
    .local v0, imageView:Landroid/widget/ImageView;
    const-string v1, ""

    .line 45
    .local v1, info:Ljava/lang/String;
    iget v7, v4, Lcom/miui/backup/CmdRunningInfo;->status:I

    packed-switch v7, :pswitch_data_0

    .line 126
    :goto_0
    return-object v6

    .line 47
    :pswitch_0
    iget-object v7, p0, Lcom/miui/backup/ui/ProgressItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x10300b3

    invoke-virtual {v2, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 48
    const v7, 0x7f060044

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 49
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 50
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v7, p0, Lcom/miui/backup/ui/ProgressItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x10300b3

    invoke-virtual {v2, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 55
    iget-object v7, v4, Lcom/miui/backup/CmdRunningInfo;->finishedSize:Ljava/lang/String;

    invoke-static {v7}, Lcom/miui/backup/BackupUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 56
    iget-object v7, p0, Lcom/miui/backup/ui/ProgressItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060045

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 63
    iget v7, v4, Lcom/miui/backup/CmdRunningInfo;->progress:I

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 64
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 58
    :cond_0
    iget v7, v4, Lcom/miui/backup/CmdRunningInfo;->progress:I

    invoke-direct {p0, v7}, Lcom/miui/backup/ui/ProgressItemAdapter;->getProgressDisplay(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/miui/backup/CmdRunningInfo;->finishedSize:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/miui/backup/ui/ProgressItemAdapter;->getFinishedSizeDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 68
    :pswitch_2
    iget-object v7, p0, Lcom/miui/backup/ui/ProgressItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x10300b3

    invoke-virtual {v2, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 69
    iget-object v7, p0, Lcom/miui/backup/ui/ProgressItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060046

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 71
    iget v7, v4, Lcom/miui/backup/CmdRunningInfo;->progress:I

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 72
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 76
    :pswitch_3
    iget-object v7, p0, Lcom/miui/backup/ui/ProgressItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x10300b3

    invoke-virtual {v2, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 77
    iget v7, v4, Lcom/miui/backup/CmdRunningInfo;->progress:I

    invoke-direct {p0, v7}, Lcom/miui/backup/ui/ProgressItemAdapter;->getProgressDisplay(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/miui/backup/CmdRunningInfo;->finishedSize:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/miui/backup/ui/ProgressItemAdapter;->getFinishedSizeDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 81
    iget v7, v4, Lcom/miui/backup/CmdRunningInfo;->progress:I

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 82
    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 86
    :pswitch_4
    iget-object v7, p0, Lcom/miui/backup/ui/ProgressItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x10300b3

    invoke-virtual {v2, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 87
    iget-boolean v7, v4, Lcom/miui/backup/CmdRunningInfo;->isBackup:Z

    if-eqz v7, :cond_1

    .line 88
    iget-object v7, p0, Lcom/miui/backup/ui/ProgressItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f06004e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/miui/backup/CmdRunningInfo;->finishedSize:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/miui/backup/ui/ProgressItemAdapter;->getFinishedSizeDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 95
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    const v7, 0x7f020016

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 90
    :cond_1
    iget-object v7, p0, Lcom/miui/backup/ui/ProgressItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f06004f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 100
    :pswitch_5
    iget-object v7, p0, Lcom/miui/backup/ui/ProgressItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x10300b3

    invoke-virtual {v2, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 101
    iget v7, v4, Lcom/miui/backup/CmdRunningInfo;->progress:I

    if-nez v7, :cond_2

    .line 102
    const v7, 0x7f06004b

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 107
    :goto_3
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 108
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    const v7, 0x7f020011

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 104
    :cond_2
    iget-object v7, p0, Lcom/miui/backup/ui/ProgressItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f06004a

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v4, Lcom/miui/backup/CmdRunningInfo;->progress:I

    invoke-direct {p0, v11}, Lcom/miui/backup/ui/ProgressItemAdapter;->getProgressDisplay(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 113
    :pswitch_6
    iget-object v7, p0, Lcom/miui/backup/ui/ProgressItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f080001

    invoke-virtual {v2, v7, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 114
    iget v7, v4, Lcom/miui/backup/CmdRunningInfo;->progress:I

    if-nez v7, :cond_3

    .line 115
    const v7, 0x7f06004d

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 120
    :goto_4
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 121
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    const v7, 0x7f020011

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 117
    :cond_3
    iget-object v7, p0, Lcom/miui/backup/ui/ProgressItemAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f06004c

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, v4, Lcom/miui/backup/CmdRunningInfo;->progress:I

    invoke-direct {p0, v11}, Lcom/miui/backup/ui/ProgressItemAdapter;->getProgressDisplay(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
