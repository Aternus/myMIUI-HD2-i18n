.class Lcom/android/inputmethod/latin/KeyboardSwitcher$1;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/KeyboardSwitcher;->changeLatinKeyboardView(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/KeyboardSwitcher;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/KeyboardSwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher$1;->this$0:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher$1;->this$0:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    #getter for: Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;
    invoke-static {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->access$100(Lcom/android/inputmethod/latin/KeyboardSwitcher;)Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher$1;->this$0:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    #getter for: Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;
    invoke-static {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->access$200(Lcom/android/inputmethod/latin/KeyboardSwitcher;)Lcom/android/inputmethod/latin/LatinIME;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher$1;->this$0:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    #getter for: Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputView:Lcom/android/inputmethod/latin/LatinKeyboardView;
    invoke-static {v1}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->access$100(Lcom/android/inputmethod/latin/KeyboardSwitcher;)Lcom/android/inputmethod/latin/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->setInputView(Landroid/view/View;)V

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/KeyboardSwitcher$1;->this$0:Lcom/android/inputmethod/latin/KeyboardSwitcher;

    #getter for: Lcom/android/inputmethod/latin/KeyboardSwitcher;->mInputMethodService:Lcom/android/inputmethod/latin/LatinIME;
    invoke-static {v0}, Lcom/android/inputmethod/latin/KeyboardSwitcher;->access$200(Lcom/android/inputmethod/latin/KeyboardSwitcher;)Lcom/android/inputmethod/latin/LatinIME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->updateInputViewShown()V

    .line 555
    return-void
.end method
