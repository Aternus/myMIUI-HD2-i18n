.class Lcom/miui/player/helper/controller/LyricMovementController$OnLyricScrollListener;
.super Ljava/lang/Object;
.source "LyricMovementController.java"

# interfaces
.implements Lcom/miui/player/helper/controller/ExtendScroller$OnExtendScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/controller/LyricMovementController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnLyricScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/controller/LyricMovementController;


# direct methods
.method private constructor <init>(Lcom/miui/player/helper/controller/LyricMovementController;)V
    .locals 0
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/miui/player/helper/controller/LyricMovementController$OnLyricScrollListener;->this$0:Lcom/miui/player/helper/controller/LyricMovementController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/helper/controller/LyricMovementController;Lcom/miui/player/helper/controller/LyricMovementController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/LyricMovementController$OnLyricScrollListener;-><init>(Lcom/miui/player/helper/controller/LyricMovementController;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricMovementController$OnLyricScrollListener;->this$0:Lcom/miui/player/helper/controller/LyricMovementController;

    invoke-virtual {v0, p1}, Lcom/miui/player/helper/controller/LyricMovementController;->onVerticalScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 433
    const/4 v0, 0x0

    return v0
.end method
