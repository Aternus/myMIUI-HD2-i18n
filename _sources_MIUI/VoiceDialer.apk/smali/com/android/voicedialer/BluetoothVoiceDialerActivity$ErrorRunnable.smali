.class Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ErrorRunnable;
.super Ljava/lang/Object;
.source "BluetoothVoiceDialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicedialer/BluetoothVoiceDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ErrorRunnable"
.end annotation


# instance fields
.field private mErrorMsg:I

.field final synthetic this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;


# direct methods
.method public constructor <init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;I)V
    .locals 0
    .parameter
    .parameter "errorMsg"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ErrorRunnable;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput p2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ErrorRunnable;->mErrorMsg:I

    .line 252
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const v2, 0x7f050002

    .line 256
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ErrorRunnable;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ErrorRunnable;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mMicFlasher:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$300(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ErrorRunnable;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f040009

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 258
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ErrorRunnable;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-virtual {v0, v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ErrorRunnable;->mErrorMsg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 259
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ErrorRunnable;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-virtual {v0, v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f04000b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 261
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ErrorRunnable;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ErrorRunnable;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ErrorRunnable;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const/16 v1, 0x1a

    #calls: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->playSound(I)I
    invoke-static {v0, v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$500(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;I)I

    .line 265
    return-void
.end method
