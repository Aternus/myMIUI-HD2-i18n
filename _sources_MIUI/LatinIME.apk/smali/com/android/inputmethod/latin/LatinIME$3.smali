.class Lcom/android/inputmethod/latin/LatinIME$3;
.super Ljava/lang/Object;
.source "LatinIME.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/LatinIME;->switchToKeyboardView()V
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
    .line 1586
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$3;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$3;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    const/4 v1, 0x0

    #setter for: Lcom/android/inputmethod/latin/LatinIME;->mRecognizing:Z
    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->access$702(Lcom/android/inputmethod/latin/LatinIME;Z)Z

    .line 1589
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$3;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1590
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$3;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME$3;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v1, v1, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->setInputView(Landroid/view/View;)V

    .line 1592
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$3;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShown(Z)V

    .line 1593
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$3;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->updateInputViewShown()V

    .line 1594
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$3;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    #calls: Lcom/android/inputmethod/latin/LatinIME;->postUpdateSuggestions()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$800(Lcom/android/inputmethod/latin/LatinIME;)V

    .line 1595
    return-void
.end method
