.class Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener;
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
    name = "OnCommitClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;


# direct methods
.method private constructor <init>(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener;-><init>(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const v6, 0x7f080097

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 209
    iget-object v4, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mConfirmView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$1000(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Landroid/widget/TextView;

    move-result-object v4

    if-ne p1, v4, :cond_1

    .line 210
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 211
    .local v2, selectionSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectionSet:Ljava/util/Set;
    invoke-static {v4}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$400(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 212
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 213
    .local v1, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectionSet:Ljava/util/Set;
    invoke-static {v4}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$400(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v3

    .line 214
    .local v3, size:I
    const/4 v0, 0x0

    .line 215
    .local v0, confirmWarning:Ljava/lang/String;
    if-ne v3, v7, :cond_0

    .line 216
    const v4, 0x7f080051

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 221
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080043

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080042

    new-instance v6, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener$1;

    invoke-direct {v6, p0, v2}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener$1;-><init>(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener;Ljava/util/Set;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 236
    .end local v0           #confirmWarning:Ljava/lang/String;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #selectionSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v3           #size:I
    :goto_1
    iget-object v4, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #calls: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->clear()V
    invoke-static {v4}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$600(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)V

    .line 237
    iget-object v4, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mBatchSelectionCallback:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;
    invoke-static {v4}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$500(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;->refreshByBatchSelection()V

    .line 239
    return-void

    .line 218
    .restart local v0       #confirmWarning:Ljava/lang/String;
    .restart local v1       #context:Landroid/content/Context;
    .restart local v2       #selectionSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v3       #size:I
    :cond_0
    const v4, 0x7f080050

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 234
    .end local v0           #confirmWarning:Ljava/lang/String;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #selectionSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v3           #size:I
    :cond_1
    iget-object v4, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mBatchSelectionCallback:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;
    invoke-static {v4}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$500(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectionSet:Ljava/util/Set;
    invoke-static {v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$400(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v8, v5}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;->onEndBatchSelection(ZLjava/util/Set;)V

    goto :goto_1
.end method
