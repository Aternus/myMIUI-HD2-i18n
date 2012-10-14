.class Lnet/cactii/flash2/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/cactii/flash2/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/cactii/flash2/MainActivity;

.field final synthetic val$strStrobeLabel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/cactii/flash2/MainActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lnet/cactii/flash2/MainActivity$2;->this$0:Lnet/cactii/flash2/MainActivity;

    iput-object p2, p0, Lnet/cactii/flash2/MainActivity$2;->val$strStrobeLabel:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/16 v3, 0x14

    .line 154
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity$2;->this$0:Lnet/cactii/flash2/MainActivity;

    const/16 v2, 0x191

    sub-int/2addr v2, p2

    #setter for: Lnet/cactii/flash2/MainActivity;->strobeperiod:I
    invoke-static {v1, v2}, Lnet/cactii/flash2/MainActivity;->access$402(Lnet/cactii/flash2/MainActivity;I)I

    .line 155
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity$2;->this$0:Lnet/cactii/flash2/MainActivity;

    #getter for: Lnet/cactii/flash2/MainActivity;->strobeperiod:I
    invoke-static {v1}, Lnet/cactii/flash2/MainActivity;->access$400(Lnet/cactii/flash2/MainActivity;)I

    move-result v1

    if-ge v1, v3, :cond_0

    .line 156
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity$2;->this$0:Lnet/cactii/flash2/MainActivity;

    #setter for: Lnet/cactii/flash2/MainActivity;->strobeperiod:I
    invoke-static {v1, v3}, Lnet/cactii/flash2/MainActivity;->access$402(Lnet/cactii/flash2/MainActivity;I)I

    .line 158
    :cond_0
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity$2;->this$0:Lnet/cactii/flash2/MainActivity;

    #getter for: Lnet/cactii/flash2/MainActivity;->strobeLabel:Landroid/widget/TextView;
    invoke-static {v1}, Lnet/cactii/flash2/MainActivity;->access$500(Lnet/cactii/flash2/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/cactii/flash2/MainActivity$2;->val$strStrobeLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29a

    iget-object v4, p0, Lnet/cactii/flash2/MainActivity$2;->this$0:Lnet/cactii/flash2/MainActivity;

    #getter for: Lnet/cactii/flash2/MainActivity;->strobeperiod:I
    invoke-static {v4}, Lnet/cactii/flash2/MainActivity;->access$400(Lnet/cactii/flash2/MainActivity;)I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Hz / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x9c40

    iget-object v4, p0, Lnet/cactii/flash2/MainActivity$2;->this$0:Lnet/cactii/flash2/MainActivity;

    #getter for: Lnet/cactii/flash2/MainActivity;->strobeperiod:I
    invoke-static {v4}, Lnet/cactii/flash2/MainActivity;->access$400(Lnet/cactii/flash2/MainActivity;)I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BPM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.cactii.flash2.SET_STROBE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "period"

    iget-object v2, p0, Lnet/cactii/flash2/MainActivity$2;->this$0:Lnet/cactii/flash2/MainActivity;

    #getter for: Lnet/cactii/flash2/MainActivity;->strobeperiod:I
    invoke-static {v2}, Lnet/cactii/flash2/MainActivity;->access$400(Lnet/cactii/flash2/MainActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    iget-object v1, p0, Lnet/cactii/flash2/MainActivity$2;->this$0:Lnet/cactii/flash2/MainActivity;

    invoke-virtual {v1, v0}, Lnet/cactii/flash2/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 164
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 168
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 172
    return-void
.end method
