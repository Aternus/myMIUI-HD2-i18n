.class Lcom/android/voicedialer/BluetoothVoiceDialerActivity$FallbackRunnable;
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
    name = "FallbackRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$FallbackRunnable;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 270
    const-string v0, "VoiceDialerActivity"

    const-string v1, "utterance completion not delivered, using fallback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$FallbackRunnable;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #calls: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->onSpeechCompletion()V
    invoke-static {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$600(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    .line 276
    return-void
.end method
