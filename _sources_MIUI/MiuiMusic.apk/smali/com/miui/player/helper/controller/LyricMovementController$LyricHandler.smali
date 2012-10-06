.class Lcom/miui/player/helper/controller/LyricMovementController$LyricHandler;
.super Landroid/os/Handler;
.source "LyricMovementController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/controller/LyricMovementController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyricHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/controller/LyricMovementController;


# direct methods
.method private constructor <init>(Lcom/miui/player/helper/controller/LyricMovementController;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/miui/player/helper/controller/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/helper/controller/LyricMovementController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/helper/controller/LyricMovementController;Lcom/miui/player/helper/controller/LyricMovementController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/LyricMovementController$LyricHandler;-><init>(Lcom/miui/player/helper/controller/LyricMovementController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    .line 174
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v7, :cond_0

    iget-object v2, p0, Lcom/miui/player/helper/controller/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/helper/controller/LyricMovementController;

    #getter for: Lcom/miui/player/helper/controller/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;
    invoke-static {v2}, Lcom/miui/player/helper/controller/LyricMovementController;->access$200(Lcom/miui/player/helper/controller/LyricMovementController;)Lcom/miui/player/helper/LyricParser$Lyric;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/miui/player/helper/controller/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/helper/controller/LyricMovementController;

    const/4 v3, 0x2

    #setter for: Lcom/miui/player/helper/controller/LyricMovementController;->mLyricStatus:I
    invoke-static {v2, v3}, Lcom/miui/player/helper/controller/LyricMovementController;->access$302(Lcom/miui/player/helper/controller/LyricMovementController;I)I

    .line 176
    iget-object v2, p0, Lcom/miui/player/helper/controller/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/helper/controller/LyricMovementController;

    #getter for: Lcom/miui/player/helper/controller/LyricMovementController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;
    invoke-static {v2}, Lcom/miui/player/helper/controller/LyricMovementController;->access$200(Lcom/miui/player/helper/controller/LyricMovementController;)Lcom/miui/player/helper/LyricParser$Lyric;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/player/helper/controller/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/helper/controller/LyricMovementController;

    #getter for: Lcom/miui/player/helper/controller/LyricMovementController;->mLastPosition:J
    invoke-static {v3}, Lcom/miui/player/helper/controller/LyricMovementController;->access$400(Lcom/miui/player/helper/controller/LyricMovementController;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/miui/player/helper/LyricParser$Lyric;->getLyricShot(J)Lcom/miui/player/helper/LyricParser$LyricShot;

    move-result-object v1

    .line 177
    .local v1, lyricShot:Lcom/miui/player/helper/LyricParser$LyricShot;
    iget-object v2, p0, Lcom/miui/player/helper/controller/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/helper/controller/LyricMovementController;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/miui/player/helper/controller/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/helper/controller/LyricMovementController;

    #getter for: Lcom/miui/player/helper/controller/LyricMovementController;->mLyricView:Lcom/miui/player/helper/controller/LyricMovementController$LyricView;
    invoke-static {v4}, Lcom/miui/player/helper/controller/LyricMovementController;->access$500(Lcom/miui/player/helper/controller/LyricMovementController;)Lcom/miui/player/helper/controller/LyricMovementController$LyricView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/player/helper/controller/LyricMovementController$LyricView;->getAccurateLineHeight()F

    move-result v4

    #calls: Lcom/miui/player/helper/controller/LyricMovementController;->getScrollOffset(Lcom/miui/player/helper/LyricParser$LyricShot;IF)I
    invoke-static {v2, v1, v3, v4}, Lcom/miui/player/helper/controller/LyricMovementController;->access$600(Lcom/miui/player/helper/controller/LyricMovementController;Lcom/miui/player/helper/LyricParser$LyricShot;IF)I

    move-result v0

    .line 179
    .local v0, end:I
    iget-object v2, p0, Lcom/miui/player/helper/controller/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/helper/controller/LyricMovementController;

    #getter for: Lcom/miui/player/helper/controller/LyricMovementController;->mSlideAnimation:Lcom/miui/player/helper/VerticalSlideAnimation;
    invoke-static {v2}, Lcom/miui/player/helper/controller/LyricMovementController;->access$700(Lcom/miui/player/helper/controller/LyricMovementController;)Lcom/miui/player/helper/VerticalSlideAnimation;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/player/helper/VerticalSlideAnimation;->slideTo(I)V

    .line 180
    iget-object v2, p0, Lcom/miui/player/helper/controller/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/helper/controller/LyricMovementController;

    iget-object v3, p0, Lcom/miui/player/helper/controller/LyricMovementController$LyricHandler;->this$0:Lcom/miui/player/helper/controller/LyricMovementController;

    #getter for: Lcom/miui/player/helper/controller/LyricMovementController;->mLastPosition:J
    invoke-static {v3}, Lcom/miui/player/helper/controller/LyricMovementController;->access$400(Lcom/miui/player/helper/controller/LyricMovementController;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v7}, Lcom/miui/player/helper/controller/LyricMovementController;->refreshLyric(JZ)V

    .line 182
    .end local v0           #end:I
    .end local v1           #lyricShot:Lcom/miui/player/helper/LyricParser$LyricShot;
    :cond_0
    return-void
.end method
