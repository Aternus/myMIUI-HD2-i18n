.class Lcom/android/voicedialer/BluetoothVoiceDialerActivity$OnUtteranceCompletedListener$1;
.super Ljava/lang/Object;
.source "BluetoothVoiceDialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicedialer/BluetoothVoiceDialerActivity$OnUtteranceCompletedListener;->onUtteranceCompleted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$OnUtteranceCompletedListener;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity$OnUtteranceCompletedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$OnUtteranceCompletedListener$1;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$OnUtteranceCompletedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$OnUtteranceCompletedListener$1;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$OnUtteranceCompletedListener;

    iget-object v0, v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$OnUtteranceCompletedListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #calls: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->onSpeechCompletion()V
    invoke-static {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$600(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    .line 352
    return-void
.end method
