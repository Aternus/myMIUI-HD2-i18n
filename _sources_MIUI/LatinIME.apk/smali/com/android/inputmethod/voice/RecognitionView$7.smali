.class Lcom/android/inputmethod/voice/RecognitionView$7;
.super Ljava/lang/Object;
.source "RecognitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/voice/RecognitionView;->finish()V
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
    .line 311
    iput-object p1, p0, Lcom/android/inputmethod/voice/RecognitionView$7;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView$7;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    sget-object v1, Lcom/android/inputmethod/voice/RecognitionView$State;->READY:Lcom/android/inputmethod/voice/RecognitionView$State;

    #setter for: Lcom/android/inputmethod/voice/RecognitionView;->mState:Lcom/android/inputmethod/voice/RecognitionView$State;
    invoke-static {v0, v1}, Lcom/android/inputmethod/voice/RecognitionView;->access$002(Lcom/android/inputmethod/voice/RecognitionView;Lcom/android/inputmethod/voice/RecognitionView$State;)Lcom/android/inputmethod/voice/RecognitionView$State;

    .line 314
    iget-object v0, p0, Lcom/android/inputmethod/voice/RecognitionView$7;->this$0:Lcom/android/inputmethod/voice/RecognitionView;

    #calls: Lcom/android/inputmethod/voice/RecognitionView;->exitWorking()V
    invoke-static {v0}, Lcom/android/inputmethod/voice/RecognitionView;->access$1500(Lcom/android/inputmethod/voice/RecognitionView;)V

    .line 315
    return-void
.end method
