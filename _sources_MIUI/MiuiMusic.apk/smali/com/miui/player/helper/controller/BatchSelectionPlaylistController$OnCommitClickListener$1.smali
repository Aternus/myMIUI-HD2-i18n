.class Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener$1;
.super Ljava/lang/Object;
.source "BatchSelectionPlaylistController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener;

.field final synthetic val$selectionSet:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener$1;->this$1:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener;

    iput-object p2, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener$1;->val$selectionSet:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener$1;->this$1:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener;

    iget-object v0, v0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mBatchSelectionCallback:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;
    invoke-static {v0}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$500(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnCommitClickListener$1;->val$selectionSet:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;->onEndBatchSelection(ZLjava/util/Set;)V

    .line 229
    return-void
.end method
