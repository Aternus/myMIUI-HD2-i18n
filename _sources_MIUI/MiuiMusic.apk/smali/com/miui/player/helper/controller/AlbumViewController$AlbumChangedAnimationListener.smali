.class Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener;
.super Ljava/lang/Object;
.source "AlbumViewController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/controller/AlbumViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumChangedAnimationListener"
.end annotation


# instance fields
.field private final mNewBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/miui/player/helper/controller/AlbumViewController;


# direct methods
.method public constructor <init>(Lcom/miui/player/helper/controller/AlbumViewController;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter "bm"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener;->this$0:Lcom/miui/player/helper/controller/AlbumViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p2, p0, Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener;->mNewBitmap:Landroid/graphics/Bitmap;

    .line 221
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 224
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener;->this$0:Lcom/miui/player/helper/controller/AlbumViewController;

    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener;->mNewBitmap:Landroid/graphics/Bitmap;

    #calls: Lcom/miui/player/helper/controller/AlbumViewController;->setImageBitmap(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v2}, Lcom/miui/player/helper/controller/AlbumViewController;->access$000(Lcom/miui/player/helper/controller/AlbumViewController;Landroid/graphics/Bitmap;)V

    .line 225
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener;->this$0:Lcom/miui/player/helper/controller/AlbumViewController;

    invoke-virtual {v1}, Lcom/miui/player/helper/controller/AlbumViewController;->downloadRefresh()V

    .line 226
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener;->this$0:Lcom/miui/player/helper/controller/AlbumViewController;

    #getter for: Lcom/miui/player/helper/controller/AlbumViewController;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/miui/player/helper/controller/AlbumViewController;->access$100(Lcom/miui/player/helper/controller/AlbumViewController;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 227
    .local v0, fadeIn:Landroid/view/animation/Animation;
    new-instance v1, Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener$1;

    invoke-direct {v1, p0}, Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener$1;-><init>(Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 245
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener;->this$0:Lcom/miui/player/helper/controller/AlbumViewController;

    #getter for: Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumFrame:Landroid/view/View;
    invoke-static {v1}, Lcom/miui/player/helper/controller/AlbumViewController;->access$300(Lcom/miui/player/helper/controller/AlbumViewController;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 246
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 250
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 254
    return-void
.end method
