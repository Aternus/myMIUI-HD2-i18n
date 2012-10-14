.class Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$HeaderSlideAnimation;
.super Landroid/view/animation/Animation;
.source "OnDrawerTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderSlideAnimation"
.end annotation


# instance fields
.field private mHeaderEnd:I

.field private mHeaderStart:I

.field private mOffsetToHeader:I

.field final synthetic this$0:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;


# direct methods
.method public constructor <init>(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;II)V
    .locals 2
    .parameter
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v0, 0x0

    .line 204
    iput-object p1, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$HeaderSlideAnimation;->this$0:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 198
    iput v0, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$HeaderSlideAnimation;->mHeaderStart:I

    .line 200
    iput v0, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$HeaderSlideAnimation;->mHeaderEnd:I

    .line 205
    iput p2, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$HeaderSlideAnimation;->mHeaderStart:I

    .line 206
    iput p3, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$HeaderSlideAnimation;->mHeaderEnd:I

    .line 207
    #getter for: Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mContentView:Landroid/view/ViewGroup;
    invoke-static {p1}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->access$400(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->getMarginTop(Landroid/view/ViewGroup;)I

    move-result v0

    #getter for: Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mHeaderView:Landroid/view/ViewGroup;
    invoke-static {p1}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->access$100(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->getMarginTop(Landroid/view/ViewGroup;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$HeaderSlideAnimation;->mOffsetToHeader:I

    .line 208
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 212
    iget v1, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$HeaderSlideAnimation;->mHeaderStart:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$HeaderSlideAnimation;->mHeaderEnd:I

    iget v3, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$HeaderSlideAnimation;->mHeaderStart:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 214
    .local v0, marginTop:I
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$HeaderSlideAnimation;->this$0:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

    #getter for: Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mHeaderView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->access$100(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->setMarginTop(Landroid/view/ViewGroup;I)V

    .line 215
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$HeaderSlideAnimation;->this$0:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

    #getter for: Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mContentView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->access$400(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;)Landroid/view/ViewGroup;

    move-result-object v1

    iget v2, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$HeaderSlideAnimation;->mOffsetToHeader:I

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->setMarginTop(Landroid/view/ViewGroup;I)V

    .line 217
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$HeaderSlideAnimation;->this$0:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

    #getter for: Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mMoveListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$MoveListener;
    invoke-static {v1}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->access$500(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;)Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$MoveListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$HeaderSlideAnimation;->this$0:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

    #getter for: Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mMoveListener:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$MoveListener;
    invoke-static {v1}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->access$500(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;)Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$MoveListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$HeaderSlideAnimation;->this$0:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

    #getter for: Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTopOpen:I
    invoke-static {v2}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->access$600(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;)I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$HeaderSlideAnimation;->this$0:Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;

    #getter for: Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->mDrawBarMarginTopClose:I
    invoke-static {v3}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;->access$700(Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/miui/player/drawerActivityGroup/OnDrawerTouchListener$MoveListener;->move(II)V

    .line 220
    :cond_0
    return-void
.end method
