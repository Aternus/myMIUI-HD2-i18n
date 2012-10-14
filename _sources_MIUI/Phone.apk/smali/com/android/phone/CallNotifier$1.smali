.class Lcom/android/phone/CallNotifier$1;
.super Ljava/lang/Object;
.source "CallNotifier.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 188
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const/4 v3, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/high16 v7, 0x401a

    const-wide/high16 v5, -0x3fde

    .line 192
    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$000(Lcom/android/phone/CallNotifier;)Lcom/android/phone/Ringer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->isNowVibrating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$104(Lcom/android/phone/CallNotifier;)I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mSensorCount:I
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$100(Lcom/android/phone/CallNotifier;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 198
    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    #setter for: Lcom/android/phone/CallNotifier;->mStartZ:F
    invoke-static {v1, v2}, Lcom/android/phone/CallNotifier;->access$202(Lcom/android/phone/CallNotifier;F)F

    .line 200
    :cond_2
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v1, v3

    .line 201
    .local v0, z:F
    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mTurnoverMuteEnable:Z
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$300(Lcom/android/phone/CallNotifier;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mTurnoverTriggered:Z
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mStartZ:F
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;)F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v7

    if-lez v1, :cond_5

    float-to-double v1, v0

    cmpg-double v1, v1, v5

    if-gez v1, :cond_5

    .line 208
    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$504(Lcom/android/phone/CallNotifier;)I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    .line 209
    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 210
    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    #setter for: Lcom/android/phone/CallNotifier;->mTurnoverTriggered:Z
    invoke-static {v1, v10}, Lcom/android/phone/CallNotifier;->access$402(Lcom/android/phone/CallNotifier;Z)Z

    .line 215
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mHandonRingerEnable:Z
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mHandonTriggered:Z
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$700(Lcom/android/phone/CallNotifier;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mTurnoverTriggered:Z
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mStartZ:F
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4021

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mStartZ:F
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$200(Lcom/android/phone/CallNotifier;)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v1, v5

    if-gez v1, :cond_6

    :cond_4
    float-to-double v1, v0

    const-wide/high16 v3, -0x3fe6

    cmpl-double v1, v1, v3

    if-lez v1, :cond_6

    float-to-double v1, v0

    cmpg-double v1, v1, v7

    if-gez v1, :cond_6

    .line 223
    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$804(Lcom/android/phone/CallNotifier;)I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    #calls: Lcom/android/phone/CallNotifier;->decrescendoRingerVolume()V
    invoke-static {v1}, Lcom/android/phone/CallNotifier;->access$900(Lcom/android/phone/CallNotifier;)V

    .line 225
    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    #setter for: Lcom/android/phone/CallNotifier;->mHandonTriggered:Z
    invoke-static {v1, v10}, Lcom/android/phone/CallNotifier;->access$702(Lcom/android/phone/CallNotifier;Z)Z

    goto/16 :goto_0

    .line 213
    :cond_5
    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    #setter for: Lcom/android/phone/CallNotifier;->mTurnoverTiggeringCount:I
    invoke-static {v1, v9}, Lcom/android/phone/CallNotifier;->access$502(Lcom/android/phone/CallNotifier;I)I

    goto :goto_1

    .line 228
    :cond_6
    iget-object v1, p0, Lcom/android/phone/CallNotifier$1;->this$0:Lcom/android/phone/CallNotifier;

    #setter for: Lcom/android/phone/CallNotifier;->mHandonTriggeringCount:I
    invoke-static {v1, v9}, Lcom/android/phone/CallNotifier;->access$802(Lcom/android/phone/CallNotifier;I)I

    goto/16 :goto_0
.end method
