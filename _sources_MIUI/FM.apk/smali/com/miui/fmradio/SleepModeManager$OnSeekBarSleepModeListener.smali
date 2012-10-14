.class Lcom/miui/fmradio/SleepModeManager$OnSeekBarSleepModeListener;
.super Ljava/lang/Object;
.source "SleepModeManager.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/SleepModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSeekBarSleepModeListener"
.end annotation


# instance fields
.field private mPopupTextView:Landroid/widget/TextView;

.field private mSeekBar:Landroid/widget/SeekBar;

.field final synthetic this$0:Lcom/miui/fmradio/SleepModeManager;


# direct methods
.method public constructor <init>(Lcom/miui/fmradio/SleepModeManager;Landroid/widget/SeekBar;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter "seekbar"
    .parameter "popupTextView"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/miui/fmradio/SleepModeManager$OnSeekBarSleepModeListener;->this$0:Lcom/miui/fmradio/SleepModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p3, p0, Lcom/miui/fmradio/SleepModeManager$OnSeekBarSleepModeListener;->mPopupTextView:Landroid/widget/TextView;

    .line 132
    iput-object p2, p0, Lcom/miui/fmradio/SleepModeManager$OnSeekBarSleepModeListener;->mSeekBar:Landroid/widget/SeekBar;

    .line 133
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/miui/fmradio/SleepModeManager$OnSeekBarSleepModeListener;->refreshPopUpTime()V

    .line 138
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/miui/fmradio/SleepModeManager$OnSeekBarSleepModeListener;->refreshPopUpTime()V

    .line 143
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 148
    return-void
.end method

.method public refreshPopUpTime()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 151
    iget-object v4, p0, Lcom/miui/fmradio/SleepModeManager$OnSeekBarSleepModeListener;->this$0:Lcom/miui/fmradio/SleepModeManager;

    iget-object v5, p0, Lcom/miui/fmradio/SleepModeManager$OnSeekBarSleepModeListener;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    #setter for: Lcom/miui/fmradio/SleepModeManager;->mProgress:I
    invoke-static {v4, v5}, Lcom/miui/fmradio/SleepModeManager;->access$002(Lcom/miui/fmradio/SleepModeManager;I)I

    .line 152
    iget-object v4, p0, Lcom/miui/fmradio/SleepModeManager$OnSeekBarSleepModeListener;->this$0:Lcom/miui/fmradio/SleepModeManager;

    #getter for: Lcom/miui/fmradio/SleepModeManager;->mProgress:I
    invoke-static {v4}, Lcom/miui/fmradio/SleepModeManager;->access$000(Lcom/miui/fmradio/SleepModeManager;)I

    move-result v4

    if-nez v4, :cond_0

    .line 153
    iget-object v4, p0, Lcom/miui/fmradio/SleepModeManager$OnSeekBarSleepModeListener;->this$0:Lcom/miui/fmradio/SleepModeManager;

    #setter for: Lcom/miui/fmradio/SleepModeManager;->mProgress:I
    invoke-static {v4, v6}, Lcom/miui/fmradio/SleepModeManager;->access$002(Lcom/miui/fmradio/SleepModeManager;I)I

    .line 155
    :cond_0
    iget-object v4, p0, Lcom/miui/fmradio/SleepModeManager$OnSeekBarSleepModeListener;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 156
    .local v0, context:Landroid/content/Context;
    const v4, 0x7f050041

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, pupupText:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/fmradio/SleepModeManager$OnSeekBarSleepModeListener;->mPopupTextView:Landroid/widget/TextView;

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/miui/fmradio/SleepModeManager$OnSeekBarSleepModeListener;->this$0:Lcom/miui/fmradio/SleepModeManager;

    #getter for: Lcom/miui/fmradio/SleepModeManager;->mProgress:I
    invoke-static {v7}, Lcom/miui/fmradio/SleepModeManager;->access$000(Lcom/miui/fmradio/SleepModeManager;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v4, p0, Lcom/miui/fmradio/SleepModeManager$OnSeekBarSleepModeListener;->mPopupTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 161
    .local v2, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/miui/fmradio/SleepModeManager$OnSeekBarSleepModeListener;->this$0:Lcom/miui/fmradio/SleepModeManager;

    #getter for: Lcom/miui/fmradio/SleepModeManager;->mProgress:I
    invoke-static {v4}, Lcom/miui/fmradio/SleepModeManager;->access$000(Lcom/miui/fmradio/SleepModeManager;)I

    move-result v4

    iget-object v5, p0, Lcom/miui/fmradio/SleepModeManager$OnSeekBarSleepModeListener;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getWidth()I

    move-result v5

    mul-int/2addr v4, v5

    iget-object v5, p0, Lcom/miui/fmradio/SleepModeManager$OnSeekBarSleepModeListener;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    div-int v1, v4, v5

    .line 162
    .local v1, leftMargin:I
    int-to-float v4, v1

    iget-object v5, p0, Lcom/miui/fmradio/SleepModeManager$OnSeekBarSleepModeListener;->this$0:Lcom/miui/fmradio/SleepModeManager;

    #getter for: Lcom/miui/fmradio/SleepModeManager;->mProgress:I
    invoke-static {v5}, Lcom/miui/fmradio/SleepModeManager;->access$000(Lcom/miui/fmradio/SleepModeManager;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x32

    int-to-float v5, v5

    const/high16 v6, 0x42b4

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 163
    iget-object v4, p0, Lcom/miui/fmradio/SleepModeManager$OnSeekBarSleepModeListener;->mPopupTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    return-void
.end method
