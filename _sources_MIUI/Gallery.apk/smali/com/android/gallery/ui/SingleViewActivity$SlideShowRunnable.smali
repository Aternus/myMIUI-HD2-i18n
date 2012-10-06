.class Lcom/android/gallery/ui/SingleViewActivity$SlideShowRunnable;
.super Ljava/lang/Object;
.source "SingleViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/ui/SingleViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideShowRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/SingleViewActivity;


# direct methods
.method private constructor <init>(Lcom/android/gallery/ui/SingleViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/gallery/ui/SingleViewActivity$SlideShowRunnable;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery/ui/SingleViewActivity;Lcom/android/gallery/ui/SingleViewActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 632
    invoke-direct {p0, p1}, Lcom/android/gallery/ui/SingleViewActivity$SlideShowRunnable;-><init>(Lcom/android/gallery/ui/SingleViewActivity;)V

    return-void
.end method


# virtual methods
.method public post()V
    .locals 3

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity$SlideShowRunnable;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery/ui/SingleViewActivity;->access$800(Lcom/android/gallery/ui/SingleViewActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 656
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity$SlideShowRunnable;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery/ui/SingleViewActivity;->access$800(Lcom/android/gallery/ui/SingleViewActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery/ui/SingleViewActivity$SlideShowRunnable;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mSlideshowInterval:I
    invoke-static {v1}, Lcom/android/gallery/ui/SingleViewActivity;->access$1200(Lcom/android/gallery/ui/SingleViewActivity;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 657
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 635
    iget-object v2, p0, Lcom/android/gallery/ui/SingleViewActivity$SlideShowRunnable;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mMode:I
    invoke-static {v2}, Lcom/android/gallery/ui/SingleViewActivity;->access$200(Lcom/android/gallery/ui/SingleViewActivity;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 636
    iget-object v2, p0, Lcom/android/gallery/ui/SingleViewActivity$SlideShowRunnable;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;
    invoke-static {v2}, Lcom/android/gallery/ui/SingleViewActivity;->access$1000(Lcom/android/gallery/ui/SingleViewActivity;)Lcom/android/gallery/view/ImageNavigatorView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery/view/ImageNavigatorView;->getSelectedItemPosition()I

    move-result v1

    .line 637
    .local v1, pos:I
    iget-object v2, p0, Lcom/android/gallery/ui/SingleViewActivity$SlideShowRunnable;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;
    invoke-static {v2}, Lcom/android/gallery/ui/SingleViewActivity;->access$1000(Lcom/android/gallery/ui/SingleViewActivity;)Lcom/android/gallery/view/ImageNavigatorView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery/view/ImageNavigatorView;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 639
    .local v0, adapter:Landroid/widget/BaseAdapter;
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    sub-int/2addr v2, v4

    if-lt v1, v2, :cond_2

    .line 640
    iget-object v2, p0, Lcom/android/gallery/ui/SingleViewActivity$SlideShowRunnable;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mSlideshowRepeatMode:Z
    invoke-static {v2}, Lcom/android/gallery/ui/SingleViewActivity;->access$1100(Lcom/android/gallery/ui/SingleViewActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 641
    iget-object v2, p0, Lcom/android/gallery/ui/SingleViewActivity$SlideShowRunnable;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #calls: Lcom/android/gallery/ui/SingleViewActivity;->setMode(I)V
    invoke-static {v2, v4}, Lcom/android/gallery/ui/SingleViewActivity;->access$700(Lcom/android/gallery/ui/SingleViewActivity;I)V

    .line 652
    .end local v0           #adapter:Landroid/widget/BaseAdapter;
    .end local v1           #pos:I
    :cond_0
    :goto_0
    return-void

    .line 645
    .restart local v0       #adapter:Landroid/widget/BaseAdapter;
    .restart local v1       #pos:I
    :cond_1
    iget-object v2, p0, Lcom/android/gallery/ui/SingleViewActivity$SlideShowRunnable;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;
    invoke-static {v2}, Lcom/android/gallery/ui/SingleViewActivity;->access$1000(Lcom/android/gallery/ui/SingleViewActivity;)Lcom/android/gallery/view/ImageNavigatorView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery/view/ImageNavigatorView;->setSelection(I)V

    .line 650
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery/ui/SingleViewActivity$SlideShowRunnable;->post()V

    goto :goto_0

    .line 648
    :cond_2
    iget-object v2, p0, Lcom/android/gallery/ui/SingleViewActivity$SlideShowRunnable;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mFullImageGallery:Lcom/android/gallery/view/ImageNavigatorView;
    invoke-static {v2}, Lcom/android/gallery/ui/SingleViewActivity;->access$1000(Lcom/android/gallery/ui/SingleViewActivity;)Lcom/android/gallery/view/ImageNavigatorView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery/view/ImageNavigatorView;->flingToNextScreen()Z

    goto :goto_1
.end method
