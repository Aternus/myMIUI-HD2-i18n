.class Lcom/android/voicedialer/VoiceDialerActivity$5;
.super Ljava/lang/Object;
.source "VoiceDialerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicedialer/VoiceDialerActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
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
    .line 278
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$5;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 281
    const-string v0, "VoiceDialerActivity"

    const-string v1, "cancelListener.onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$5;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->dismissDialog(I)V

    .line 283
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$5;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/voicedialer/VoiceDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$902(Lcom/android/voicedialer/VoiceDialerActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 284
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$5;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-virtual {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->finish()V

    .line 285
    return-void
.end method
