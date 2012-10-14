.class Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnInternalIndexerClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1737
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1737
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    .line 1741
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mIsAnimationPlaying:Z
    invoke-static {v5}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$3200(Lcom/miui/player/ui/MediaPlaybackActivity;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mIsLyricProgressModify:Z
    invoke-static {v5}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2200(Lcom/miui/player/ui/MediaPlaybackActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1779
    :cond_0
    :goto_0
    return-void

    .line 1744
    :cond_1
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v5}, Lcom/miui/player/ui/MediaPlaybackActivity;->getNextIndexerWhenInternalClick()I

    move-result v2

    .line 1745
    .local v2, newIndexer:I
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mControllers:[Lcom/miui/player/helper/controller/MediaPlaybackController;
    invoke-static {v5}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$3300(Lcom/miui/player/ui/MediaPlaybackActivity;)[Lcom/miui/player/helper/controller/MediaPlaybackController;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I
    invoke-static {v6}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$3000(Lcom/miui/player/ui/MediaPlaybackActivity;)I

    move-result v6

    aget-object v1, v5, v6

    .line 1746
    .local v1, current:Lcom/miui/player/helper/controller/MediaPlaybackController;
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mControllers:[Lcom/miui/player/helper/controller/MediaPlaybackController;
    invoke-static {v5}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$3300(Lcom/miui/player/ui/MediaPlaybackActivity;)[Lcom/miui/player/helper/controller/MediaPlaybackController;

    move-result-object v5

    aget-object v3, v5, v2

    .line 1747
    .local v3, next:Lcom/miui/player/helper/controller/MediaPlaybackController;
    if-eq v1, v3, :cond_2

    .line 1748
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mTimeIndicatorController:Lcom/miui/player/helper/controller/TimeIndicatorController;
    invoke-static {v5}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2700(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/helper/controller/TimeIndicatorController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/player/helper/controller/TimeIndicatorController;->getView()Landroid/view/View;

    move-result-object v4

    .line 1749
    .local v4, timeView:Landroid/view/View;
    const/4 v0, 0x0

    .line 1750
    .local v0, anim:Landroid/view/animation/Animation;
    if-ne v2, v7, :cond_3

    .line 1751
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const v6, 0x7f040004

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1752
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1757
    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1759
    new-instance v5, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick$1;

    invoke-direct {v5, p0, v2, v3}, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick$1;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;ILcom/miui/player/helper/controller/MediaPlaybackController;)V

    invoke-virtual {v1, v5}, Lcom/miui/player/helper/controller/MediaPlaybackController;->startLeaveAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1778
    .end local v0           #anim:Landroid/view/animation/Animation;
    .end local v4           #timeView:Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v5, v7}, Lcom/miui/player/ui/MediaPlaybackActivity;->setAnimationPlaying(Z)V

    goto :goto_0

    .line 1754
    .restart local v0       #anim:Landroid/view/animation/Animation;
    .restart local v4       #timeView:Landroid/view/View;
    :cond_3
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const v6, 0x7f040005

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1755
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
