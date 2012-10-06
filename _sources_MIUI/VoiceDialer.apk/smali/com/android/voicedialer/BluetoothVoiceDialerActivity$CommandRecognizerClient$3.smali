.class Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;
.super Ljava/lang/Object;
.source "BluetoothVoiceDialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->onRecognitionSuccess([Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

.field final synthetic val$intents:[Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;[Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iput-object p2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->val$intents:[Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/16 v11, 0x1770

    const/4 v10, 0x0

    const-string v13, "sentence"

    .line 502
    iget-object v7, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v7, v7, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v8, v8, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mMicFlasher:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$300(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 504
    iget-object v7, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->val$intents:[Landroid/content/Intent;

    array-length v7, v7

    new-array v5, v7, [Ljava/lang/String;

    .line 505
    .local v5, sentences:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->val$intents:[Landroid/content/Intent;

    array-length v7, v7

    if-ge v2, v7, :cond_0

    .line 506
    iget-object v7, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->val$intents:[Landroid/content/Intent;

    aget-object v7, v7, v2

    const-string v8, "sentence"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    .line 505
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 510
    :cond_0
    iget-object v7, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->val$intents:[Landroid/content/Intent;

    array-length v7, v7

    if-nez v7, :cond_1

    .line 511
    iget-object v7, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    const-string v8, "zero intents"

    invoke-virtual {v7, v8}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->onRecognitionFailure(Ljava/lang/String;)V

    .line 623
    :goto_1
    return-void

    .line 515
    :cond_1
    iget-object v7, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->val$intents:[Landroid/content/Intent;

    array-length v7, v7

    if-lez v7, :cond_2

    .line 517
    iget-object v7, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->val$intents:[Landroid/content/Intent;

    aget-object v7, v7, v10

    const-string v8, "semantic"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 519
    .local v6, value:Ljava/lang/String;
    const-string v7, "VoiceDialerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    const-string v7, "X"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 521
    iget-object v7, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v7, v7, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #calls: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->exitActivity()V
    invoke-static {v7}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1100(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    goto :goto_1

    .line 526
    .end local v6           #value:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->val$intents:[Landroid/content/Intent;

    array-length v7, v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    const-string v7, "android.intent.action.CALL_PRIVILEGED"

    iget-object v8, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->val$intents:[Landroid/content/Intent;

    aget-object v8, v8, v10

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 539
    :cond_3
    iget-object v7, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v7, v7, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAvailableChoices:[Landroid/content/Intent;
    invoke-static {v7}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1900(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)[Landroid/content/Intent;

    move-result-object v7

    aget-object v7, v7, v10

    const-string v8, "sentence"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->spaceOutDigits(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$2000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 543
    .local v4, sentenceSpoken:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v7, v7, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const/4 v8, 0x6

    #setter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mState:I
    invoke-static {v7, v8}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$702(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;I)I

    .line 544
    iget-object v7, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v7, v7, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;
    invoke-static {v7}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$800(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Ljava/util/HashMap;

    move-result-object v7

    const-string v8, "utteranceId"

    const-string v9, "chose_action"

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    iget-object v7, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v7, v7, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v7}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$900(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/speech/tts/TextToSpeech;

    move-result-object v7

    iget-object v8, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v8, v8, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$800(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v7, v4, v10, v8}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 549
    iget-object v7, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v7, v7, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    iget-object v8, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->val$intents:[Landroid/content/Intent;

    aget-object v8, v8, v10

    #setter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mChosenAction:Landroid/content/Intent;
    invoke-static {v7, v8}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$2102(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Landroid/content/Intent;)Landroid/content/Intent;

    .line 555
    iget-object v7, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v7, v7, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    new-instance v8, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$FallbackRunnable;

    iget-object v9, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v9, v9, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-direct {v8, v9}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$FallbackRunnable;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    #setter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v7, v8}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1002(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 556
    iget-object v7, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v7, v7, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v8, v8, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1000(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 566
    .end local v4           #sentenceSpoken:Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v7, v7, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #calls: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->speakChoices()V
    invoke-static {v7}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$2200(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    .line 572
    iget-object v7, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v7, v7, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    new-instance v8, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$FallbackRunnable;

    iget-object v9, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v9, v9, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-direct {v8, v9}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$FallbackRunnable;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    #setter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v7, v8}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1002(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 573
    iget-object v7, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v7, v7, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v8, v8, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1000(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 575
    new-instance v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3$1;

    invoke-direct {v0, p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3$1;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;)V

    .line 587
    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v1, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3$2;

    invoke-direct {v1, p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3$2;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;)V

    .line 600
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3$3;

    invoke-direct {v3, p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3$3;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;)V

    .line 613
    .local v3, negativeListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v7, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v7, v7, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v9, v9, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f040004

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v5, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/high16 v9, 0x104

    invoke-virtual {v8, v9, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v8

    #setter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1802(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method
