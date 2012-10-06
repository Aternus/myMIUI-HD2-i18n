.class Lcom/miui/player/ui/view/AlphabetScroller$OnAlphaScrollScrollListener;
.super Ljava/lang/Object;
.source "AlphabetScroller.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/view/AlphabetScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAlphaScrollScrollListener"
.end annotation


# instance fields
.field private final mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field final synthetic this$0:Lcom/miui/player/ui/view/AlphabetScroller;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/view/AlphabetScroller;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter
    .parameter "l"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/miui/player/ui/view/AlphabetScroller$OnAlphaScrollScrollListener;->this$0:Lcom/miui/player/ui/view/AlphabetScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p2, p0, Lcom/miui/player/ui/view/AlphabetScroller$OnAlphaScrollScrollListener;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 164
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/miui/player/ui/view/AlphabetScroller$OnAlphaScrollScrollListener;->this$0:Lcom/miui/player/ui/view/AlphabetScroller;

    #calls: Lcom/miui/player/ui/view/AlphabetScroller;->refreshAlphabetBgPos(I)V
    invoke-static {v0, p2}, Lcom/miui/player/ui/view/AlphabetScroller;->access$000(Lcom/miui/player/ui/view/AlphabetScroller;I)V

    .line 170
    iget-object v0, p0, Lcom/miui/player/ui/view/AlphabetScroller$OnAlphaScrollScrollListener;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/miui/player/ui/view/AlphabetScroller$OnAlphaScrollScrollListener;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 173
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/miui/player/ui/view/AlphabetScroller$OnAlphaScrollScrollListener;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/miui/player/ui/view/AlphabetScroller$OnAlphaScrollScrollListener;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 180
    :cond_0
    return-void
.end method
