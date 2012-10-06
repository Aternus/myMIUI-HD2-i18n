.class Lcom/android/phone/Ringer$VibratorThread;
.super Ljava/lang/Thread;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibratorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method private constructor <init>(Lcom/android/phone/Ringer;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 240
    iget-object v0, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    #getter for: Lcom/android/phone/Ringer;->mAntiStranger:Z
    invoke-static {v0}, Lcom/android/phone/Ringer;->access$100(Lcom/android/phone/Ringer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 243
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    iget-boolean v0, v0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/phone/Ringer;->mVibrating:Z

    .line 245
    iget-object v0, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    iget-object v0, v0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 246
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 247
    iget-object v0, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/phone/Ringer;->mVibrating:Z

    .line 248
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 250
    :cond_1
    return-void
.end method
