.class Lcom/android/gallery/view/MovieViewControl$3;
.super Ljava/lang/Object;
.source "MovieViewControl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery/view/MovieViewControl;-><init>(Landroid/view/View;Landroid/content/Context;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery/view/MovieViewControl;

.field final synthetic val$bookmark:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/android/gallery/view/MovieViewControl;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/gallery/view/MovieViewControl$3;->this$0:Lcom/android/gallery/view/MovieViewControl;

    iput-object p2, p0, Lcom/android/gallery/view/MovieViewControl$3;->val$bookmark:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/gallery/view/MovieViewControl$3;->this$0:Lcom/android/gallery/view/MovieViewControl;

    #getter for: Lcom/android/gallery/view/MovieViewControl;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/android/gallery/view/MovieViewControl;->access$000(Lcom/android/gallery/view/MovieViewControl;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery/view/MovieViewControl$3;->val$bookmark:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 134
    iget-object v0, p0, Lcom/android/gallery/view/MovieViewControl$3;->this$0:Lcom/android/gallery/view/MovieViewControl;

    #getter for: Lcom/android/gallery/view/MovieViewControl;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/android/gallery/view/MovieViewControl;->access$000(Lcom/android/gallery/view/MovieViewControl;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 135
    return-void
.end method
