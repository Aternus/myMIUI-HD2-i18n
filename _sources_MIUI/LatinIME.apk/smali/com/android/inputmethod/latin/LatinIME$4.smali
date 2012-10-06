.class Lcom/android/inputmethod/latin/LatinIME$4;
.super Ljava/lang/Object;
.source "LatinIME.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/LatinIME;->switchToRecognitionStatusView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinIME;

.field final synthetic val$configChanged:Z


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/LatinIME;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1600
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$4;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    iput-boolean p2, p0, Lcom/android/inputmethod/latin/LatinIME$4;->val$configChanged:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1602
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$4;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShown(Z)V

    .line 1603
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$4;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    const/4 v3, 0x1

    #setter for: Lcom/android/inputmethod/latin/LatinIME;->mRecognizing:Z
    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/LatinIME;->access$702(Lcom/android/inputmethod/latin/LatinIME;Z)Z

    .line 1604
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$4;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;
    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinIME;->access$900(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/voice/VoiceInput;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/voice/VoiceInput;->getView()Landroid/view/View;

    move-result-object v1

    .line 1605
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1606
    .local v0, p:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 1607
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1609
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$4;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2, v1}, Lcom/android/inputmethod/latin/LatinIME;->setInputView(Landroid/view/View;)V

    .line 1610
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$4;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->updateInputViewShown()V

    .line 1611
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME$4;->val$configChanged:Z

    if-eqz v2, :cond_1

    .line 1612
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$4;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;
    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinIME;->access$900(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/voice/VoiceInput;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/voice/VoiceInput;->onConfigurationChanged()V

    .line 1614
    :cond_1
    return-void
.end method
