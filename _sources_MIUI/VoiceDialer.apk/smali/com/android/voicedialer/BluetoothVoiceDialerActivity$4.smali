.class Lcom/android/voicedialer/BluetoothVoiceDialerActivity$4;
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
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

.field visible:I


# direct methods
.method constructor <init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 942
    iput-object p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$4;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 943
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$4;->visible:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$4;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$4;->visible:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 947
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$4;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$4;->visible:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 948
    iget v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$4;->visible:I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$4;->visible:I

    .line 949
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$4;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x2ee

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 950
    return-void

    .line 948
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
