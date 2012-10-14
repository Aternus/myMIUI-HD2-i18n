.class Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;
.super Ljava/lang/Object;
.source "BluetoothVoiceDialerActivity.java"

# interfaces
.implements Lcom/android/voicedialer/RecognizerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicedialer/BluetoothVoiceDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChoiceRecognizerClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;


# direct methods
.method private constructor <init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Lcom/android/voicedialer/BluetoothVoiceDialerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 629
    invoke-direct {p0, p1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    return-void
.end method


# virtual methods
.method public onMicrophoneStart(Ljava/io/InputStream;)V
    .locals 2
    .parameter "mic"

    .prologue
    .line 708
    const-string v0, "VoiceDialerActivity"

    const-string v1, "ChoiceRecognizerClient onMicrophoneStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    return-void
.end method

.method public onRecognitionError(Ljava/lang/String;)V
    .locals 4
    .parameter "err"

    .prologue
    .line 702
    const-string v0, "VoiceDialerActivity"

    const-string v1, "ChoiceRecognizerClient onRecognitionError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ErrorRunnable;

    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const v3, 0x7f04000a

    invoke-direct {v1, v2, v3}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ErrorRunnable;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 704
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #calls: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->exitActivity()V
    invoke-static {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1100(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    .line 705
    return-void
.end method

.method public onRecognitionFailure(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 697
    const-string v0, "VoiceDialerActivity"

    const-string v1, "ChoiceRecognizerClient onRecognitionFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #calls: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->exitActivity()V
    invoke-static {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1100(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    .line 699
    return-void
.end method

.method public onRecognitionSuccess([Landroid/content/Intent;)V
    .locals 9
    .parameter "intents"

    .prologue
    const-wide/16 v6, 0x1770

    const/4 v5, 0x0

    const-string v8, "utteranceId"

    const-string v4, "VoiceDialerActivity"

    .line 631
    const-string v2, "VoiceDialerActivity"

    const-string v2, "ChoiceRecognizerClient onRecognitionSuccess"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1800(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 634
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1800(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 638
    :cond_0
    array-length v2, p1

    if-lez v2, :cond_1

    .line 639
    aget-object v2, p1, v5

    const-string v3, "semantic"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 641
    .local v1, value:Ljava/lang/String;
    const-string v2, "VoiceDialerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const-string v2, "R"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 643
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$GreetingRunnable;

    iget-object v4, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-direct {v3, v4}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$GreetingRunnable;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 694
    .end local v1           #value:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 644
    .restart local v1       #value:Ljava/lang/String;
    :cond_2
    const-string v2, "X"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 645
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #calls: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->exitActivity()V
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1100(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    goto :goto_0

    .line 648
    :cond_3
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const/4 v3, 0x0

    #setter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mChosenAction:Landroid/content/Intent;
    invoke-static {v2, v3}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$2102(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 649
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAvailableChoices:[Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1900(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)[Landroid/content/Intent;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 650
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAvailableChoices:[Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1900(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)[Landroid/content/Intent;

    move-result-object v2

    aget-object v2, v2, v0

    const-string v3, "phone_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 653
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    iget-object v3, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAvailableChoices:[Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1900(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)[Landroid/content/Intent;

    move-result-object v3

    aget-object v3, v3, v0

    #setter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mChosenAction:Landroid/content/Intent;
    invoke-static {v2, v3}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$2102(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 649
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 657
    :cond_5
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mChosenAction:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$2100(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 658
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const/4 v3, 0x6

    #setter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mState:I
    invoke-static {v2, v3}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$702(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;I)I

    .line 659
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$800(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "utteranceId"

    const-string v3, "chose_action"

    invoke-virtual {v2, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$900(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    iget-object v3, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mChosenAction:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$2100(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "sentence"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$800(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v2, v3, v5, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 670
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    new-instance v3, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$FallbackRunnable;

    iget-object v4, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-direct {v3, v4}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$FallbackRunnable;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    #setter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v2, v3}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1002(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 671
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1000(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 674
    :cond_6
    const-string v2, "VoiceDialerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid choice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$800(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "utteranceId"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$900(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    iget-object v3, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const v4, 0x7f040014

    invoke-virtual {v3, v4}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$800(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v2, v3, v5, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 683
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #calls: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->speakChoices()V
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$2200(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    .line 689
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    new-instance v3, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$FallbackRunnable;

    iget-object v4, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-direct {v3, v4}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$FallbackRunnable;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    #setter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v2, v3}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1002(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 690
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ChoiceRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1000(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
