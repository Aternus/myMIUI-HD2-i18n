.class Lcom/android/mms/ui/MessageEditableActivityBase$18$1;
.super Ljava/lang/Object;
.source "MessageEditableActivityBase.java"

# interfaces
.implements Lcom/android/mms/ui/LinearAnimator$FrameHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageEditableActivityBase$18;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageEditableActivityBase$18;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageEditableActivityBase$18;)V
    .locals 0
    .parameter

    .prologue
    .line 1343
    iput-object p1, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18$1;->this$1:Lcom/android/mms/ui/MessageEditableActivityBase$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18$1;->this$1:Lcom/android/mms/ui/MessageEditableActivityBase$18;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1353
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18$1;->this$1:Lcom/android/mms/ui/MessageEditableActivityBase$18;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1354
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18$1;->this$1:Lcom/android/mms/ui/MessageEditableActivityBase$18;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/MessageEditableActivityBase$18$1$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageEditableActivityBase$18$1$1;-><init>(Lcom/android/mms/ui/MessageEditableActivityBase$18$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1363
    return-void
.end method

.method public onFrame(F)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18$1;->this$1:Lcom/android/mms/ui/MessageEditableActivityBase$18;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1347
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase$18$1;->this$1:Lcom/android/mms/ui/MessageEditableActivityBase$18;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase$18;->this$0:Lcom/android/mms/ui/MessageEditableActivityBase;

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mMessageContentPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1348
    return-void
.end method
