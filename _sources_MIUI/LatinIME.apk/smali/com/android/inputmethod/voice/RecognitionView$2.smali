.class Lcom/android/inputmethod/voice/RecognitionView$2;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/voice/RecognitionView;->restoreState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/voice/RecognitionView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/voice/RecognitionView;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/inputmethod/voice/RecognitionView$2;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView$2;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/voice/RecognitionView;->mState:Lcom/android/inputmethod/voice/RecognitionView$State;
    invoke-static {v0}, Lcom/android/inputmethod/voice/RecognitionView;->access$000(Lcom/android/inputmethod/voice/RecognitionView;)Lcom/android/inputmethod/voice/RecognitionView$State;

    move-result-object v0

    sget-object v1, Lcom/android/inputmethod/voice/RecognitionView$State;->WORKING:Lcom/android/inputmethod/voice/RecognitionView$State;

    if-ne v0, v1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView$2;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;
    invoke-static {v0}, Lcom/android/inputmethod/voice/RecognitionView;->access$900(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView$2;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    #getter for: Lcom/android/inputmethod/voice/RecognitionView;->mProgress:Landroid/view/View;
    invoke-static {v0}, Lcom/android/inputmethod/voice/RecognitionView;->access$900(Lcom/android/inputmethod/voice/RecognitionView;)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ProgressBar;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 150
    :cond_0
    return-void
.end method
