.class Lcom/android/voicedialer/VoiceDialerActivity$3;
.super Ljava/lang/Object;
.source "VoiceDialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicedialer/VoiceDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/VoiceDialerActivity;

.field visible:I


# direct methods
.method constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$3;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$3;->visible:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$3;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/voicedialer/VoiceDialerActivity$3;->visible:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$3;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/voicedialer/VoiceDialerActivity$3;->visible:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$3;->visible:I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$3;->visible:I

    .line 256
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$3;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$700(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x2ee

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    return-void

    .line 255
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
