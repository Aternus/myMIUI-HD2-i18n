.class Lcom/android/voicedialer/VoiceDialerActivity$1;
.super Ljava/lang/Thread;
.source "VoiceDialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicedialer/VoiceDialerActivity;->startWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/VoiceDialerActivity;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$1;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 137
    const-string v2, "VoiceDialerActivity"

    const-string v3, "onCreate.Runnable.run"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$1;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const-string v3, "samplerate"

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->getArg(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/voicedialer/VoiceDialerActivity;->access$100(Lcom/android/voicedialer/VoiceDialerActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, sampleRateStr:Ljava/lang/String;
    const/16 v0, 0x2b11

    .line 140
    .local v0, sampleRate:I
    if-eqz v1, :cond_0

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 143
    :cond_0
    invoke-static {}, Lcom/android/voicedialer/VoiceDialerActivity;->access$400()Lcom/android/voicedialer/CommandRecognizerEngine;

    move-result-object v2

    iget-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity$1;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mCommandClient:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;
    invoke-static {v3}, Lcom/android/voicedialer/VoiceDialerActivity;->access$200(Lcom/android/voicedialer/VoiceDialerActivity;)Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    move-result-object v3

    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity$1;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    iget-object v5, p0, Lcom/android/voicedialer/VoiceDialerActivity$1;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const-string v6, "microphone"

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->getArg(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/voicedialer/VoiceDialerActivity;->access$100(Lcom/android/voicedialer/VoiceDialerActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->newFile(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v5}, Lcom/android/voicedialer/VoiceDialerActivity;->access$300(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/voicedialer/CommandRecognizerEngine;->recognize(Lcom/android/voicedialer/RecognizerClient;Landroid/app/Activity;Ljava/io/File;I)V

    .line 146
    return-void
.end method
