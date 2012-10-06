.class Lcom/android/gallery/ui/MovieView$1;
.super Lcom/android/gallery/view/MovieViewControl;
.source "MovieView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/ui/MovieView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/ui/MovieView;


# direct methods
.method constructor <init>(Lcom/android/gallery/ui/MovieView;Landroid/view/View;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/gallery/ui/MovieView$1;->this$0:Lcom/android/gallery/ui/MovieView;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/gallery/view/MovieViewControl;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/gallery/ui/MovieView$1;->this$0:Lcom/android/gallery/ui/MovieView;

    #getter for: Lcom/android/gallery/ui/MovieView;->mFinishOnCompletion:Z
    invoke-static {v0}, Lcom/android/gallery/ui/MovieView;->access$000(Lcom/android/gallery/ui/MovieView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/gallery/ui/MovieView$1;->this$0:Lcom/android/gallery/ui/MovieView;

    invoke-virtual {v0}, Lcom/android/gallery/ui/MovieView;->finish()V

    .line 64
    :cond_0
    return-void
.end method

.method public onVisibleChanged(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 68
    iget-object v2, p0, Lcom/android/gallery/ui/MovieView$1;->this$0:Lcom/android/gallery/ui/MovieView;

    invoke-virtual {v2}, Lcom/android/gallery/ui/MovieView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 69
    .local v0, win:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 70
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    const/high16 v2, -0x4080

    :goto_0
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    .line 72
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 73
    return-void

    .line 70
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
