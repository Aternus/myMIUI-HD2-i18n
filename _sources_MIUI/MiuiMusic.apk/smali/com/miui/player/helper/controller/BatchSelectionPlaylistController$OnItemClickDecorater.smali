.class Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnItemClickDecorater;
.super Ljava/lang/Object;
.source "BatchSelectionPlaylistController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemClickDecorater"
.end annotation


# instance fields
.field private final mListener:Landroid/widget/AdapterView$OnItemClickListener;

.field final synthetic this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;


# direct methods
.method public constructor <init>(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter
    .parameter "l"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnItemClickDecorater;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p2, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnItemClickDecorater;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 108
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnItemClickDecorater;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectionSet:Ljava/util/Set;
    invoke-static {v0}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$400(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnItemClickDecorater;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnItemClickDecorater;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const v0, 0x1020001

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 119
    .local v6, selectBox:Landroid/widget/CheckBox;
    if-eqz v6, :cond_0

    .line 122
    iget-object v0, p0, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$OnItemClickDecorater;->this$0:Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;

    #getter for: Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->mSelectionSet:Ljava/util/Set;
    invoke-static {v0}, Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;->access$400(Lcom/miui/player/helper/controller/BatchSelectionPlaylistController;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
