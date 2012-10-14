.class Lcom/android/inputmethod/latin/LatinIMESettings$1;
.super Ljava/lang/Object;
.source "LatinIMESettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/LatinIMESettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinIMESettings;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/LatinIMESettings;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIMESettings$1;->this$0:Lcom/android/inputmethod/latin/LatinIMESettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 155
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIMESettings$1;->this$0:Lcom/android/inputmethod/latin/LatinIMESettings;

    #getter for: Lcom/android/inputmethod/latin/LatinIMESettings;->mVoicePreference:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIMESettings;->access$100(Lcom/android/inputmethod/latin/LatinIMESettings;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIMESettings$1;->this$0:Lcom/android/inputmethod/latin/LatinIMESettings;

    #getter for: Lcom/android/inputmethod/latin/LatinIMESettings;->mVoiceModeOff:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/inputmethod/latin/LatinIMESettings;->access$000(Lcom/android/inputmethod/latin/LatinIMESettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIMESettings$1;->this$0:Lcom/android/inputmethod/latin/LatinIMESettings;

    #getter for: Lcom/android/inputmethod/latin/LatinIMESettings;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIMESettings;->access$200(Lcom/android/inputmethod/latin/LatinIMESettings;)Lcom/android/inputmethod/voice/VoiceInputLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->settingsWarningDialogCancel()V

    .line 162
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIMESettings$1;->this$0:Lcom/android/inputmethod/latin/LatinIMESettings;

    #calls: Lcom/android/inputmethod/latin/LatinIMESettings;->updateVoicePreference()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIMESettings;->access$400(Lcom/android/inputmethod/latin/LatinIMESettings;)V

    .line 163
    return-void

    .line 158
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIMESettings$1;->this$0:Lcom/android/inputmethod/latin/LatinIMESettings;

    const/4 v1, 0x1

    #setter for: Lcom/android/inputmethod/latin/LatinIMESettings;->mOkClicked:Z
    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/LatinIMESettings;->access$302(Lcom/android/inputmethod/latin/LatinIMESettings;Z)Z

    .line 160
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIMESettings$1;->this$0:Lcom/android/inputmethod/latin/LatinIMESettings;

    #getter for: Lcom/android/inputmethod/latin/LatinIMESettings;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIMESettings;->access$200(Lcom/android/inputmethod/latin/LatinIMESettings;)Lcom/android/inputmethod/voice/VoiceInputLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->settingsWarningDialogOk()V

    goto :goto_0
.end method
