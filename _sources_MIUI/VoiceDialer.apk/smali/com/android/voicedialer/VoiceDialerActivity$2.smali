.class Lcom/android/voicedialer/VoiceDialerActivity$2;
.super Ljava/lang/Object;
.source "VoiceDialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicedialer/VoiceDialerActivity;->startNextTest()V
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
    .line 164
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 166
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mVoiceDialerTester:Lcom/android/voicedialer/VoiceDialerTester;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$500(Lcom/android/voicedialer/VoiceDialerActivity;)Lcom/android/voicedialer/VoiceDialerTester;

    move-result-object v2

    if-nez v2, :cond_0

    .line 181
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mVoiceDialerTester:Lcom/android/voicedialer/VoiceDialerTester;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$500(Lcom/android/voicedialer/VoiceDialerActivity;)Lcom/android/voicedialer/VoiceDialerTester;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/voicedialer/VoiceDialerTester;->stepToNextTest()Z

    move-result v2

    if-nez v2, :cond_1

    .line 170
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mVoiceDialerTester:Lcom/android/voicedialer/VoiceDialerTester;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$500(Lcom/android/voicedialer/VoiceDialerActivity;)Lcom/android/voicedialer/VoiceDialerTester;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/voicedialer/VoiceDialerTester;->report()V

    .line 171
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const-string v3, "Test completed!"

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->notifyText(Ljava/lang/CharSequence;)V
    invoke-static {v2, v3}, Lcom/android/voicedialer/VoiceDialerActivity;->access$600(Lcom/android/voicedialer/VoiceDialerActivity;Ljava/lang/CharSequence;)V

    .line 172
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-virtual {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->finish()V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mVoiceDialerTester:Lcom/android/voicedialer/VoiceDialerTester;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$500(Lcom/android/voicedialer/VoiceDialerActivity;)Lcom/android/voicedialer/VoiceDialerTester;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/voicedialer/VoiceDialerTester;->getWavFile()Ljava/io/File;

    move-result-object v1

    .line 176
    .local v1, microphone:Ljava/io/File;
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const-string v3, "contacts"

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->getArg(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/voicedialer/VoiceDialerActivity;->access$100(Lcom/android/voicedialer/VoiceDialerActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->newFile(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$300(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 178
    .local v0, contacts:Ljava/io/File;
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Testing\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->notifyText(Ljava/lang/CharSequence;)V
    invoke-static {v2, v3}, Lcom/android/voicedialer/VoiceDialerActivity;->access$600(Lcom/android/voicedialer/VoiceDialerActivity;Ljava/lang/CharSequence;)V

    .line 179
    invoke-static {}, Lcom/android/voicedialer/VoiceDialerActivity;->access$400()Lcom/android/voicedialer/CommandRecognizerEngine;

    move-result-object v2

    iget-object v3, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mCommandClient:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;
    invoke-static {v3}, Lcom/android/voicedialer/VoiceDialerActivity;->access$200(Lcom/android/voicedialer/VoiceDialerActivity;)Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    move-result-object v3

    iget-object v4, p0, Lcom/android/voicedialer/VoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const/16 v5, 0x2b11

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/voicedialer/CommandRecognizerEngine;->recognize(Lcom/android/voicedialer/RecognizerClient;Landroid/app/Activity;Ljava/io/File;I)V

    goto :goto_0
.end method
