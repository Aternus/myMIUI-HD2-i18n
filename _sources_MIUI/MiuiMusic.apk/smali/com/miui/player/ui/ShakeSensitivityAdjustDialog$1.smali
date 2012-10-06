.class Lcom/miui/player/ui/ShakeSensitivityAdjustDialog$1;
.super Ljava/lang/Object;
.source "ShakeSensitivityAdjustDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog$1;->this$0:Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 52
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 53
    const/4 p2, 0x1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog$1;->this$0:Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;

    iget-object v1, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog$1;->this$0:Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;

    #getter for: Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->MIN_SENSITIVITY:I
    invoke-static {v1}, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->access$100(Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog$1;->this$0:Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;

    #getter for: Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->MAX_SENSITIVITY:I
    invoke-static {v2}, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->access$200(Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog$1;->this$0:Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;

    #getter for: Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->MIN_SENSITIVITY:I
    invoke-static {v3}, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->access$100(Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;)I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/2addr v2, p2

    div-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    #setter for: Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->mProgress:I
    invoke-static {v0, v1}, Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;->access$002(Lcom/miui/player/ui/ShakeSensitivityAdjustDialog;I)I

    .line 56
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 61
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 66
    return-void
.end method
