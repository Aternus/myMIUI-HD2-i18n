.class public Lcom/android/settings/cit/CitHeadsetLoopbackCheckActivity;
.super Lcom/android/settings/cit/CitHeadSetCheckActivity;
.source "CitHeadsetLoopbackCheckActivity.java"


# instance fields
.field private mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/settings/cit/CitHeadSetCheckActivity;-><init>()V

    return-void
.end method

.method public static getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    const v0, 0x7f090518

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/android/settings/cit/CitHeadsetLoopbackCheckActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    const v0, 0x7f09052e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initResources()V
    .locals 3

    .prologue
    .line 23
    invoke-super {p0}, Lcom/android/settings/cit/CitHeadSetCheckActivity;->initResources()V

    .line 24
    new-instance v0, Lcom/android/settings/cit/SoundRecorder;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cit/SoundRecorder;-><init>(II)V

    iput-object v0, p0, Lcom/android/settings/cit/CitHeadsetLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;

    .line 25
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/android/settings/cit/CitHeadSetCheckActivity;->onDestroy()V

    .line 47
    iget-object v0, p0, Lcom/android/settings/cit/CitHeadsetLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;

    invoke-virtual {v0}, Lcom/android/settings/cit/SoundRecorder;->release()V

    .line 48
    return-void
.end method

.method protected onHeadSetPlugIn()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    const v1, 0x7f090545

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/cit/CitHeadsetLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;

    invoke-virtual {v0}, Lcom/android/settings/cit/SoundRecorder;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/settings/cit/CitHeadsetLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;

    invoke-virtual {v0}, Lcom/android/settings/cit/SoundRecorder;->startRecording()V

    .line 60
    :cond_0
    return-void
.end method

.method protected onHeadSetPullOut()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/cit/CitBaseActivity;->mTestPanelTextView:Landroid/widget/TextView;

    const v1, 0x7f090543

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/cit/CitHeadsetLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;

    invoke-virtual {v0}, Lcom/android/settings/cit/SoundRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/settings/cit/CitHeadsetLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;

    invoke-virtual {v0}, Lcom/android/settings/cit/SoundRecorder;->stopRecording()V

    .line 67
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/android/settings/cit/CitHeadSetCheckActivity;->onPause()V

    .line 30
    iget-object v0, p0, Lcom/android/settings/cit/CitHeadsetLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;

    invoke-virtual {v0}, Lcom/android/settings/cit/SoundRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/android/settings/cit/CitHeadsetLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;

    invoke-virtual {v0}, Lcom/android/settings/cit/SoundRecorder;->stopRecording()V

    .line 33
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/android/settings/cit/CitHeadSetCheckActivity;->onResume()V

    .line 39
    iget-object v0, p0, Lcom/android/settings/cit/CitHeadsetLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;

    invoke-virtual {v0}, Lcom/android/settings/cit/SoundRecorder;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/settings/cit/CitHeadsetLoopbackCheckActivity;->mSoundRecorder:Lcom/android/settings/cit/SoundRecorder;

    invoke-virtual {v0}, Lcom/android/settings/cit/SoundRecorder;->startRecording()V

    .line 42
    :cond_0
    return-void
.end method
