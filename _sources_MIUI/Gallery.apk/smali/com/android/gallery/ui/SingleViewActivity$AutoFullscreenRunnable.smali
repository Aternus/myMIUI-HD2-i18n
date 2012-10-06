.class Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;
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
    name = "AutoFullscreenRunnable"
.end annotation


# instance fields
.field private mIsPosted:Z

.field final synthetic this$0:Lcom/android/gallery/ui/SingleViewActivity;


# direct methods
.method private constructor <init>(Lcom/android/gallery/ui/SingleViewActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;->mIsPosted:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery/ui/SingleViewActivity;Lcom/android/gallery/ui/SingleViewActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 605
    invoke-direct {p0, p1}, Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;-><init>(Lcom/android/gallery/ui/SingleViewActivity;)V

    return-void
.end method


# virtual methods
.method public isPosted()Z
    .locals 1

    .prologue
    .line 627
    iget-boolean v0, p0, Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;->mIsPosted:Z

    return v0
.end method

.method public post()V
    .locals 3

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery/ui/SingleViewActivity;->access$800(Lcom/android/gallery/ui/SingleViewActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 617
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery/ui/SingleViewActivity;->access$800(Lcom/android/gallery/ui/SingleViewActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;->mIsPosted:Z

    .line 619
    return-void
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/gallery/ui/SingleViewActivity;->access$800(Lcom/android/gallery/ui/SingleViewActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 623
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;->mIsPosted:Z

    .line 624
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 609
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mMode:I
    invoke-static {v0}, Lcom/android/gallery/ui/SingleViewActivity;->access$200(Lcom/android/gallery/ui/SingleViewActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/gallery/ui/SingleViewActivity;->access$600(Lcom/android/gallery/ui/SingleViewActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #getter for: Lcom/android/gallery/ui/SingleViewActivity;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/gallery/ui/SingleViewActivity;->access$600(Lcom/android/gallery/ui/SingleViewActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;->this$0:Lcom/android/gallery/ui/SingleViewActivity;

    #calls: Lcom/android/gallery/ui/SingleViewActivity;->setMode(I)V
    invoke-static {v0, v2}, Lcom/android/gallery/ui/SingleViewActivity;->access$700(Lcom/android/gallery/ui/SingleViewActivity;I)V

    .line 612
    :cond_1
    iput-boolean v2, p0, Lcom/android/gallery/ui/SingleViewActivity$AutoFullscreenRunnable;->mIsPosted:Z

    .line 613
    return-void
.end method
