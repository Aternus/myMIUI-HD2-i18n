.class Lcom/miui/player/ui/MediaPlaybackActivity$RotateSwitchCallback;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcom/miui/player/helper/RotateSwitchAnimationChain$SwitchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotateSwitchCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1837
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$RotateSwitchCallback;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1837
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity$RotateSwitchCallback;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    return-void
.end method


# virtual methods
.method public onFirstAnimationStart(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 1846
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$RotateSwitchCallback;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #setter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mIsRotateAnimationPlaying:Z
    invoke-static {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$3602(Lcom/miui/player/ui/MediaPlaybackActivity;Z)Z

    .line 1847
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$RotateSwitchCallback;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->setAnimationPlaying(Z)V

    .line 1848
    return-void
.end method

.method public onLastAnimationEnd(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 1852
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$RotateSwitchCallback;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #setter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mIsRotateAnimationPlaying:Z
    invoke-static {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$3602(Lcom/miui/player/ui/MediaPlaybackActivity;Z)Z

    .line 1853
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$RotateSwitchCallback;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->setAnimationPlaying(Z)V

    .line 1854
    return-void
.end method

.method public onSwitch(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1840
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$RotateSwitchCallback;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->getNextIndexerWhenExternalClick()I

    move-result v0

    .line 1841
    .local v0, newIndexer:I
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$RotateSwitchCallback;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v1, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->changeActiveIndexer(I)V

    .line 1842
    return-void
.end method
