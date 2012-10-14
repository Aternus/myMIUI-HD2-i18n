.class Lcom/android/inputmethod/latin/LatinIME$6;
.super Ljava/lang/Object;
.source "LatinIME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/LatinIME;->showVoiceWarningDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinIME;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter

    .prologue
    .line 1670
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$6;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$6;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$900(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/voice/VoiceInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->logKeyboardWarningDialogCancel()V

    .line 1673
    return-void
.end method
