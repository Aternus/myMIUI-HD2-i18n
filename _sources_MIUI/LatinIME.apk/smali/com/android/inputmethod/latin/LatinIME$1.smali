.class Lcom/android/inputmethod/latin/LatinIME$1;
.super Landroid/os/Handler;
.source "LatinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinIME;
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
    .line 314
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 317
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 319
    :pswitch_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    #calls: Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$200(Lcom/android/inputmethod/latin/LatinIME;)V

    goto :goto_0

    .line 322
    :pswitch_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    #calls: Lcom/android/inputmethod/latin/LatinIME;->setOldSuggestions()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$300(Lcom/android/inputmethod/latin/LatinIME;)V

    goto :goto_0

    .line 325
    :pswitch_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$400(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/Tutorial;

    move-result-object v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinKeyboardView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    new-instance v1, Lcom/android/inputmethod/latin/Tutorial;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v3, v3, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/inputmethod/latin/Tutorial;-><init>(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/LatinKeyboardView;)V

    #setter for: Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;
    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->access$402(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/Tutorial;)Lcom/android/inputmethod/latin/Tutorial;

    .line 329
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    #getter for: Lcom/android/inputmethod/latin/LatinIME;->mTutorial:Lcom/android/inputmethod/latin/Tutorial;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$400(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/Tutorial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Tutorial;->start()V

    goto :goto_0

    .line 332
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 337
    :pswitch_3
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_0

    .line 340
    :pswitch_4
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME$1;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    #calls: Lcom/android/inputmethod/latin/LatinIME;->handleVoiceResults()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinIME;->access$500(Lcom/android/inputmethod/latin/LatinIME;)V

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method
