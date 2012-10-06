.class public Lcom/miui/milk/ui/ProgressItemArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ProgressItemArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/miui/milk/storage/ProgressTaskDetail;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private mRes:Landroid/content/res/Resources;

.field private final mResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
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
            "Lcom/miui/milk/storage/ProgressTaskDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Lcom/miui/milk/storage/ProgressTaskDetail;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressItemArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 30
    iput p2, p0, Lcom/miui/milk/ui/ProgressItemArrayAdapter;->mResourceId:I

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressItemArrayAdapter;->mRes:Landroid/content/res/Resources;

    .line 32
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/ProgressItemArrayAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/milk/ui/ProgressItemArrayAdapter;->mResourceId:I

    move v15, v0

    const/16 v16, 0x0

    move-object v0, v14

    move v1, v15

    move-object/from16 v2, p3

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 39
    .local v13, view:Landroid/view/View;
    invoke-virtual/range {p0 .. p1}, Lcom/miui/milk/ui/ProgressItemArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/milk/storage/ProgressTaskDetail;

    .line 41
    .local v11, taskDetail:Lcom/miui/milk/storage/ProgressTaskDetail;
    const v14, 0x1020016

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 42
    .local v12, titleView:Landroid/widget/TextView;
    const v14, 0x7f0a0026

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    .line 43
    .local v9, progressBar:Landroid/widget/ProgressBar;
    const v14, 0x7f0a0027

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 45
    .local v7, infoView:Landroid/widget/TextView;
    const v14, 0x7f0a0029

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 47
    .local v4, imageView:Landroid/widget/ImageView;
    iget-object v14, v11, Lcom/miui/milk/storage/ProgressTaskDetail;->title:Ljava/lang/String;

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget v14, v11, Lcom/miui/milk/storage/ProgressTaskDetail;->status:I

    packed-switch v14, :pswitch_data_0

    .line 107
    :goto_0
    return-object v13

    .line 50
    :pswitch_0
    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 51
    const v14, 0x7f060044

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(I)V

    .line 52
    const/16 v14, 0x8

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 55
    :pswitch_1
    const/4 v8, 0x0

    .line 56
    .local v8, progressAmount:I
    iget v14, v11, Lcom/miui/milk/storage/ProgressTaskDetail;->max:I

    if-lez v14, :cond_0

    iget v14, v11, Lcom/miui/milk/storage/ProgressTaskDetail;->current:I

    if-lez v14, :cond_0

    .line 57
    iget v14, v11, Lcom/miui/milk/storage/ProgressTaskDetail;->current:I

    mul-int/lit8 v14, v14, 0x64

    iget v15, v11, Lcom/miui/milk/storage/ProgressTaskDetail;->max:I

    div-int v8, v14, v15

    .line 60
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v10, sb:Ljava/lang/StringBuilder;
    iget-object v14, v11, Lcom/miui/milk/storage/ProgressTaskDetail;->description:Ljava/lang/String;

    if-eqz v14, :cond_1

    .line 62
    iget-object v14, v11, Lcom/miui/milk/storage/ProgressTaskDetail;->description:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const/16 v14, 0x20

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    :cond_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v14, "% "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 70
    invoke-virtual {v9, v8}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 71
    const/16 v14, 0x8

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 74
    .end local v8           #progressAmount:I
    .end local v10           #sb:Ljava/lang/StringBuilder;
    :pswitch_2
    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 76
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v5, info:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/ProgressItemArrayAdapter;->mRes:Landroid/content/res/Resources;

    move-object v14, v0

    const v15, 0x7f060047

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v14, " "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v14, 0x7f020016

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 92
    .end local v5           #info:Ljava/lang/StringBuffer;
    :pswitch_3
    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 93
    const v14, 0x7f060048

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(I)V

    .line 94
    const/16 v14, 0x8

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 97
    :pswitch_4
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 98
    .local v6, infoBuf:Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/ProgressItemArrayAdapter;->mRes:Landroid/content/res/Resources;

    move-object v14, v0

    const v15, 0x7f060049

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v14, " : "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/ui/ProgressItemArrayAdapter;->mRes:Landroid/content/res/Resources;

    move-object v14, v0

    iget v15, v11, Lcom/miui/milk/storage/ProgressTaskDetail;->statusCode:I

    invoke-static {v14, v15}, Lcom/miui/milk/util/SysHelpers;->getNetworkErrorString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 103
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const/16 v14, 0x8

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
