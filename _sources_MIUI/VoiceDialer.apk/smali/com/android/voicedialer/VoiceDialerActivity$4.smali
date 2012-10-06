.class Lcom/android/voicedialer/VoiceDialerActivity$4;
.super Ljava/lang/Object;
.source "VoiceDialerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$intents:[Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity;[Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$4;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    iput-object p2, p0, Lcom/android/voicedialer/VoiceDialerActivity$4;->val$intents:[Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 268
    const-string v0, "VoiceDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clickListener.onClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$4;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity$4;->val$intents:[Landroid/content/Intent;

    aget-object v1, v1, p2

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->startActivityHelp(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$800(Lcom/android/voicedialer/VoiceDialerActivity;Landroid/content/Intent;)V

    .line 270
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$4;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->dismissDialog(I)V

    .line 271
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$4;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/voicedialer/VoiceDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$902(Lcom/android/voicedialer/VoiceDialerActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 272
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$4;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-virtual {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->finish()V

    .line 273
    return-void
.end method
