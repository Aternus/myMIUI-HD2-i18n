.class Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2$1;
.super Ljava/lang/Object;
.source "VoiceDialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;)V
    .locals 0
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2$1;->this$2:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2$1;->this$2:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-virtual {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->finish()V

    .line 494
    return-void
.end method
