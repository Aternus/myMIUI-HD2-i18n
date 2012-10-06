.class Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick$1;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;

.field final synthetic val$newIndexer:I

.field final synthetic val$next:Lcom/miui/player/helper/controller/MediaPlaybackController;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;ILcom/miui/player/helper/controller/MediaPlaybackController;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1759
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;

    iput p2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick$1;->val$newIndexer:I

    iput-object p3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick$1;->val$next:Lcom/miui/player/helper/controller/MediaPlaybackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick$1;->val$newIndexer:I

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->changeActiveIndexer(I)V

    .line 1764
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick$1;->val$next:Lcom/miui/player/helper/controller/MediaPlaybackController;

    new-instance v1, Lcom/miui/player/ui/MediaPlaybackActivity$OnIndexerChangeAnimationListener;

    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;

    iget-object v2, v2, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/miui/player/ui/MediaPlaybackActivity$OnIndexerChangeAnimationListener;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/controller/MediaPlaybackController;->startEnterAnimation(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1765
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1769
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1773
    return-void
.end method
