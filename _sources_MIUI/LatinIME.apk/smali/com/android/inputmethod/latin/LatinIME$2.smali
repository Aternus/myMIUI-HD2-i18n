.class Lcom/android/inputmethod/latin/LatinIME$2;
.super Ljava/lang/Object;
.source "LatinIME.java"

# interfaces
.implements Lcom/android/inputmethod/latin/Hints$Display;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/LatinIME;->onCreate()V
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
    .line 388
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME$2;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showHint(I)V
    .locals 5
    .parameter "viewResource"

    .prologue
    const/4 v4, 0x1

    .line 390
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$2;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 392
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 393
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$2;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2, v1}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesView(Landroid/view/View;)V

    .line 394
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$2;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2, v4}, Lcom/android/inputmethod/latin/LatinIME;->setCandidatesViewShown(Z)V

    .line 395
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME$2;->this$0:Lcom/android/inputmethod/latin/LatinIME;

    #setter for: Lcom/android/inputmethod/latin/LatinIME;->mIsShowingHint:Z
    invoke-static {v2, v4}, Lcom/android/inputmethod/latin/LatinIME;->access$602(Lcom/android/inputmethod/latin/LatinIME;Z)Z

    .line 396
    return-void
.end method
