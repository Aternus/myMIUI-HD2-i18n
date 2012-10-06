.class Lcom/miui/player/helper/controller/TimeIndicatorController$OnSeekPlayerPositionListener;
.super Ljava/lang/Object;
.source "TimeIndicatorController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/controller/TimeIndicatorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSeekPlayerPositionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/controller/TimeIndicatorController;


# direct methods
.method private constructor <init>(Lcom/miui/player/helper/controller/TimeIndicatorController;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/miui/player/helper/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/helper/controller/TimeIndicatorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/helper/controller/TimeIndicatorController;Lcom/miui/player/helper/controller/TimeIndicatorController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/TimeIndicatorController$OnSeekPlayerPositionListener;-><init>(Lcom/miui/player/helper/controller/TimeIndicatorController;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const-wide/16 v6, 0x3e8

    .line 104
    iget-object v2, p0, Lcom/miui/player/helper/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/helper/controller/TimeIndicatorController;

    #getter for: Lcom/miui/player/helper/controller/TimeIndicatorController;->mDuration:J
    invoke-static {v2}, Lcom/miui/player/helper/controller/TimeIndicatorController;->access$300(Lcom/miui/player/helper/controller/TimeIndicatorController;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/miui/player/helper/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/helper/controller/TimeIndicatorController;

    #getter for: Lcom/miui/player/helper/controller/TimeIndicatorController;->mDuration:J
    invoke-static {v2}, Lcom/miui/player/helper/controller/TimeIndicatorController;->access$300(Lcom/miui/player/helper/controller/TimeIndicatorController;)J

    move-result-wide v2

    int-to-long v4, p2

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    div-long v0, v2, v6

    .line 106
    .local v0, currentTime:J
    iget-object v2, p0, Lcom/miui/player/helper/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/helper/controller/TimeIndicatorController;

    #getter for: Lcom/miui/player/helper/controller/TimeIndicatorController;->mCurrentTimeTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/miui/player/helper/controller/TimeIndicatorController;->access$500(Lcom/miui/player/helper/controller/TimeIndicatorController;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/player/helper/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/helper/controller/TimeIndicatorController;

    #getter for: Lcom/miui/player/helper/controller/TimeIndicatorController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/miui/player/helper/controller/TimeIndicatorController;->access$400(Lcom/miui/player/helper/controller/TimeIndicatorController;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0800e7

    invoke-static {v3, v0, v1, v4}, Lcom/miui/player/MusicUtils;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .end local v0           #currentTime:J
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/helper/controller/TimeIndicatorController;

    const/4 v1, 0x1

    #setter for: Lcom/miui/player/helper/controller/TimeIndicatorController;->mUserTouch:Z
    invoke-static {v0, v1}, Lcom/miui/player/helper/controller/TimeIndicatorController;->access$602(Lcom/miui/player/helper/controller/TimeIndicatorController;Z)Z

    .line 114
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 10
    .parameter "seekBar"

    .prologue
    const-wide/16 v8, 0x3e8

    .line 118
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    .line 119
    .local v3, progress:I
    iget-object v4, p0, Lcom/miui/player/helper/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/helper/controller/TimeIndicatorController;

    const/4 v5, 0x0

    #setter for: Lcom/miui/player/helper/controller/TimeIndicatorController;->mUserTouch:Z
    invoke-static {v4, v5}, Lcom/miui/player/helper/controller/TimeIndicatorController;->access$602(Lcom/miui/player/helper/controller/TimeIndicatorController;Z)Z

    .line 120
    iget-object v4, p0, Lcom/miui/player/helper/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/helper/controller/TimeIndicatorController;

    #getter for: Lcom/miui/player/helper/controller/TimeIndicatorController;->mSeekListener:Lcom/miui/player/helper/controller/TimeIndicatorController$OnProgressSeekListener;
    invoke-static {v4}, Lcom/miui/player/helper/controller/TimeIndicatorController;->access$700(Lcom/miui/player/helper/controller/TimeIndicatorController;)Lcom/miui/player/helper/controller/TimeIndicatorController$OnProgressSeekListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    .line 122
    .local v2, max:I
    iget-object v4, p0, Lcom/miui/player/helper/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/helper/controller/TimeIndicatorController;

    #getter for: Lcom/miui/player/helper/controller/TimeIndicatorController;->mSeekListener:Lcom/miui/player/helper/controller/TimeIndicatorController$OnProgressSeekListener;
    invoke-static {v4}, Lcom/miui/player/helper/controller/TimeIndicatorController;->access$700(Lcom/miui/player/helper/controller/TimeIndicatorController;)Lcom/miui/player/helper/controller/TimeIndicatorController$OnProgressSeekListener;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Lcom/miui/player/helper/controller/TimeIndicatorController$OnProgressSeekListener;->seek(II)V

    .line 125
    .end local v2           #max:I
    :cond_0
    iget-object v4, p0, Lcom/miui/player/helper/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/helper/controller/TimeIndicatorController;

    #getter for: Lcom/miui/player/helper/controller/TimeIndicatorController;->mDuration:J
    invoke-static {v4}, Lcom/miui/player/helper/controller/TimeIndicatorController;->access$300(Lcom/miui/player/helper/controller/TimeIndicatorController;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 126
    iget-object v4, p0, Lcom/miui/player/helper/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/helper/controller/TimeIndicatorController;

    #getter for: Lcom/miui/player/helper/controller/TimeIndicatorController;->mDuration:J
    invoke-static {v4}, Lcom/miui/player/helper/controller/TimeIndicatorController;->access$300(Lcom/miui/player/helper/controller/TimeIndicatorController;)J

    move-result-wide v4

    int-to-long v6, v3

    mul-long/2addr v4, v6

    div-long/2addr v4, v8

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    div-long v0, v4, v8

    .line 127
    .local v0, currentTime:J
    iget-object v4, p0, Lcom/miui/player/helper/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/helper/controller/TimeIndicatorController;

    #getter for: Lcom/miui/player/helper/controller/TimeIndicatorController;->mCurrentTimeTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/miui/player/helper/controller/TimeIndicatorController;->access$500(Lcom/miui/player/helper/controller/TimeIndicatorController;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/player/helper/controller/TimeIndicatorController$OnSeekPlayerPositionListener;->this$0:Lcom/miui/player/helper/controller/TimeIndicatorController;

    #getter for: Lcom/miui/player/helper/controller/TimeIndicatorController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/miui/player/helper/controller/TimeIndicatorController;->access$400(Lcom/miui/player/helper/controller/TimeIndicatorController;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0800e7

    invoke-static {v5, v0, v1, v6}, Lcom/miui/player/MusicUtils;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .end local v0           #currentTime:J
    :cond_1
    return-void
.end method
