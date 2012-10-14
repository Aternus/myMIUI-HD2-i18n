.class Lcom/android/monitor/Traffic$TrafficSettingClickListener$1;
.super Ljava/lang/Object;
.source "Traffic.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/monitor/Traffic$TrafficSettingClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/monitor/Traffic$TrafficSettingClickListener;


# direct methods
.method constructor <init>(Lcom/android/monitor/Traffic$TrafficSettingClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/monitor/Traffic$TrafficSettingClickListener$1;->this$1:Lcom/android/monitor/Traffic$TrafficSettingClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 241
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 247
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 251
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    div-int/lit8 v0, v2, 0x14

    .line 252
    .local v0, interval:I
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x14

    div-int/lit8 v1, v2, 0x2

    .line 253
    .local v1, middle:I
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-lt v2, v1, :cond_0

    .line 254
    add-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x14

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    mul-int/lit8 v2, v0, 0x14

    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
