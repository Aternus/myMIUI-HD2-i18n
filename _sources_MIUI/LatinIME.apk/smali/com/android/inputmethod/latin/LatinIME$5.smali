.class Lcom/android/inputmethod/latin/LatinIME$5;
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

.field final synthetic val$swipe:Z


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/LatinIME;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1664
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$5;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    iput-boolean p2, p0, Lcom/android/inputmethod/latin/LatinIME$5;->val$swipe:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$5;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$900(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/voice/VoiceInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->logKeyboardWarningDialogOk()V

    .line 1667
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$5;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME$5;->val$swipe:Z

    #calls: Lcom/android/inputmethod/latin/LatinIME;->reallyStartListening(Z)V
    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->access$1000(Lcom/android/inputmethod/latin/LatinIME;Z)V

    .line 1668
    return-void
.end method
