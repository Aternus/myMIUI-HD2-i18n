.class Lcom/miui/player/ui/view/BatchSelectionTrackView$2;
.super Ljava/lang/Object;
.source "BatchSelectionTrackView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/view/BatchSelectionTrackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/view/BatchSelectionTrackView;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/view/BatchSelectionTrackView;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/miui/player/ui/view/BatchSelectionTrackView$2;->this$0:Lcom/miui/player/ui/view/BatchSelectionTrackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/player/ui/view/BatchSelectionTrackView$2;->this$0:Lcom/miui/player/ui/view/BatchSelectionTrackView;

    invoke-virtual {v0}, Lcom/miui/player/ui/view/BatchSelectionTrackView;->getCurrCheckState()Landroid/widget/EditableListView$EditableListViewCheckable;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/EditableListView$EditableListViewCheckable;->checkNothing()V

    .line 55
    return-void
.end method
