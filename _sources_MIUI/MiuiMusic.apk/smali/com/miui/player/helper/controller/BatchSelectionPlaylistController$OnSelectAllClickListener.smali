.class Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectAllClickListener;
.super Ljava/lang/Object;
.source "BatchSelectionPlaylistController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSelectAllClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;


# direct methods
.method private constructor <init>(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectAllClickListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectAllClickListener;-><init>(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 189
    iget-object v1, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectAllClickListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectionSet:Ljava/util/Set;
    invoke-static {v1}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$400(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .line 190
    .local v0, numSelected:I
    iget-object v1, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectAllClickListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mBatchSelectionCallback:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;
    invoke-static {v1}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$500(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;->getTotalItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectAllClickListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mBatchSelectionCallback:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;
    invoke-static {v1}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$500(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectAllClickListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectionSet:Ljava/util/Set;
    invoke-static {v3}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$400(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;->onEndBatchSelection(ZLjava/util/Set;)V

    .line 192
    iget-object v1, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectAllClickListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #calls: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->clear()V
    invoke-static {v1}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$600(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)V

    .line 198
    :goto_0
    iget-object v1, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectAllClickListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectionSet:Ljava/util/Set;
    invoke-static {v1}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$400(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .line 199
    iget-object v1, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectAllClickListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mConfirmView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$1000(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectAllClickListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mConfirm:Ljava/lang/String;
    invoke-static {v3}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$900(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v1, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectAllClickListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mBatchSelectionCallback:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;
    invoke-static {v1}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$500(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;->refreshByBatchSelection()V

    .line 201
    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectAllClickListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mBatchSelectionCallback:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;
    invoke-static {v1}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$500(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectAllClickListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectionSet:Ljava/util/Set;
    invoke-static {v2}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$400(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;->getAllItemIds(Ljava/util/Set;)V

    .line 195
    iget-object v1, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnSelectAllClickListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectAllView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$700(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f08009b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
