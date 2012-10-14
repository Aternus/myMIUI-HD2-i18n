.class Lcom/android/gallery/view/MovieViewControl$4;
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


# direct methods
.method constructor <init>(Lcom/android/gallery/view/MovieViewControl;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/gallery/view/MovieViewControl$4;->this$0:Lcom/android/gallery/view/MovieViewControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/gallery/view/MovieViewControl$4;->this$0:Lcom/android/gallery/view/MovieViewControl;

    #getter for: Lcom/android/gallery/view/MovieViewControl;->mVideoView:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/android/gallery/view/MovieViewControl;->access$000(Lcom/android/gallery/view/MovieViewControl;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 141
    return-void
.end method
