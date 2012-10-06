.class Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;
.super Ljava/lang/Object;
.source "BatchSelectionPlaylistController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSelectChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;


# direct methods
.method private constructor <init>(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;-><init>(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v7, 0x0

    .line 132
    iget-object v5, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mBatchSelectionCallback:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;
    invoke-static {v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$500(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;->allowBatchSelect()Z

    move-result v5

    if-nez v5, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 136
    .local v4, tag:Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_0

    .line 140
    check-cast v4, Ljava/lang/Long;

    .end local v4           #tag:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 141
    .local v1, id:J
    iget-object v5, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectionSet:Ljava/util/Set;
    invoke-static {v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$400(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    iget-object v5, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectionSet:Ljava/util/Set;
    invoke-static {v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$400(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 147
    :goto_1
    iget-object v5, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectionSet:Ljava/util/Set;
    invoke-static {v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$400(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v3

    .line 148
    .local v3, numSelected:I
    if-nez v3, :cond_4

    .line 149
    iget-object v5, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mBatchSelectionCallback:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;
    invoke-static {v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$500(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectionSet:Ljava/util/Set;
    invoke-static {v6}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$400(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;->onEndBatchSelection(ZLjava/util/Set;)V

    .line 150
    iget-object v5, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #calls: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->clear()V
    invoke-static {v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$600(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)V

    .line 151
    iget-object v5, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mBatchSelectionCallback:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;
    invoke-static {v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$500(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;->refreshByBatchSelection()V

    .line 167
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mConfirmView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$1000(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mConfirm:Ljava/lang/String;
    invoke-static {v7}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$900(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 144
    .end local v3           #numSelected:I
    :cond_3
    iget-object v5, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectionSet:Ljava/util/Set;
    invoke-static {v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$400(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 153
    .restart local v3       #numSelected:I
    :cond_4
    iget-object v5, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mBatchSelectionCallback:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;
    invoke-static {v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$500(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;->getTotalItemCount()I

    move-result v5

    if-ne v3, v5, :cond_5

    .line 154
    iget-object v5, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectAllView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$700(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f08009b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 159
    :goto_3
    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    iget-object v5, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mCommitView:Landroid/view/View;
    invoke-static {v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$800(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    .line 160
    iget-object v5, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mBatchSelectionCallback:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;
    invoke-static {v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$500(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;

    move-result-object v5

    invoke-interface {v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;->onStartBatchSelection()V

    .line 161
    iget-object v5, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mCommitView:Landroid/view/View;
    invoke-static {v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$800(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x7f04

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 162
    .local v0, anim:Landroid/view/animation/Animation;
    iget-object v5, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mCommitView:Landroid/view/View;
    invoke-static {v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$800(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 163
    iget-object v5, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mCommitView:Landroid/view/View;
    invoke-static {v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$800(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 156
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_5
    iget-object v5, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectChangeListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectAllView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$700(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f08009a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3
.end method
