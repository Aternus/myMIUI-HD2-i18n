.class Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;
.super Ljava/lang/Object;
.source "LatinKeyboardBaseView.java"

# interfaces
.implements Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->inflateMiniKeyboardContainer(Landroid/inputmethodservice/Keyboard$Key;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)V
    .locals 0
    .parameter

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardActionListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$800(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onCancel()V

    .line 1111
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #calls: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->dismissPopupKeyboard()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$900(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)V

    .line 1112
    return-void
.end method

.method public onKey(I[III)V
    .locals 1
    .parameter "primaryCode"
    .parameter "keyCodes"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardActionListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$800(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onKey(I[III)V

    .line 1101
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #calls: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->dismissPopupKeyboard()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$900(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)V

    .line 1102
    return-void
.end method

.method public onPress(I)V
    .locals 1
    .parameter "primaryCode"

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardActionListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$800(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onPress(I)V

    .line 1124
    return-void
.end method

.method public onRelease(I)V
    .locals 1
    .parameter "primaryCode"

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardActionListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$800(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onRelease(I)V

    .line 1127
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #getter for: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->mKeyboardActionListener:Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$800(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 1106
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinKeyboardBaseView$2;->this$0:Lcom/android/inputmethod/latin/LatinKeyboardBaseView;

    #calls: Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->dismissPopupKeyboard()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinKeyboardBaseView;->access$900(Lcom/android/inputmethod/latin/LatinKeyboardBaseView;)V

    .line 1107
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 1121
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 1115
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 1117
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 1119
    return-void
.end method
