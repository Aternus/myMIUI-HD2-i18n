.class Lcom/android/gallery/view/MovieViewControl$1;
.super Ljava/lang/Object;
.source "MovieViewControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/view/MovieViewControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/view/MovieViewControl;


# direct methods
.method constructor <init>(Lcom/android/gallery/view/MovieViewControl;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/gallery/view/MovieViewControl$1;->this$0:Lcom/android/gallery/view/MovieViewControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/gallery/view/MovieViewControl$1;->this$0:Lcom/android/gallery/view/MovieViewControl;

    #getter for: Lcom/android/gallery/view/MovieViewControl;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/android/gallery/view/MovieViewControl;->access$000(Lcom/android/gallery/view/MovieViewControl;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/gallery/view/MovieViewControl$1;->this$0:Lcom/android/gallery/view/MovieViewControl;

    #getter for: Lcom/android/gallery/view/MovieViewControl;->mProgressView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/gallery/view/MovieViewControl;->access$100(Lcom/android/gallery/view/MovieViewControl;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/gallery/view/MovieViewControl$1;->this$0:Lcom/android/gallery/view/MovieViewControl;

    iget-object v0, v0, Lcom/android/gallery/view/MovieViewControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/gallery/view/MovieViewControl$1;->this$0:Lcom/android/gallery/view/MovieViewControl;

    iget-object v1, v1, Lcom/android/gallery/view/MovieViewControl;->mPlayingChecker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
