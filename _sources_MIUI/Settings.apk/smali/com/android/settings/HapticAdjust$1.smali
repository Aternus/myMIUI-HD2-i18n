.class Lcom/android/settings/HapticAdjust$1;
.super Ljava/lang/Object;
.source "HapticAdjust.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HapticAdjust;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HapticAdjust;


# direct methods
.method constructor <init>(Lcom/android/settings/HapticAdjust;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings/HapticAdjust$1;->this$0:Lcom/android/settings/HapticAdjust;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/HapticAdjust$1;->this$0:Lcom/android/settings/HapticAdjust;

    iget-object v0, v0, Lcom/android/settings/HapticAdjust;->mAddButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/settings/HapticAdjust$1;->this$0:Lcom/android/settings/HapticAdjust;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/HapticAdjust;->addRow(I)Z

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/settings/HapticAdjust$1;->this$0:Lcom/android/settings/HapticAdjust;

    iget-object v0, v0, Lcom/android/settings/HapticAdjust;->mSubButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/settings/HapticAdjust$1;->this$0:Lcom/android/settings/HapticAdjust;

    invoke-virtual {v0}, Lcom/android/settings/HapticAdjust;->subRow()V

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/settings/HapticAdjust$1;->this$0:Lcom/android/settings/HapticAdjust;

    iget-object v0, v0, Lcom/android/settings/HapticAdjust;->mSaveButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/android/settings/HapticAdjust$1;->this$0:Lcom/android/settings/HapticAdjust;

    #calls: Lcom/android/settings/HapticAdjust;->saveChanges()V
    invoke-static {v0}, Lcom/android/settings/HapticAdjust;->access$000(Lcom/android/settings/HapticAdjust;)V

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/android/settings/HapticAdjust$1;->this$0:Lcom/android/settings/HapticAdjust;

    iget-object v0, v0, Lcom/android/settings/HapticAdjust;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/android/settings/HapticAdjust$1;->this$0:Lcom/android/settings/HapticAdjust;

    #calls: Lcom/android/settings/HapticAdjust;->cancelChanges()V
    invoke-static {v0}, Lcom/android/settings/HapticAdjust;->access$100(Lcom/android/settings/HapticAdjust;)V

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/android/settings/HapticAdjust$1;->this$0:Lcom/android/settings/HapticAdjust;

    iget-object v0, v0, Lcom/android/settings/HapticAdjust;->mTestButton:Lcom/android/settings/HapticAdjust$TestButton;

    if-ne p1, v0, :cond_4

    .line 90
    iget-object v0, p0, Lcom/android/settings/HapticAdjust$1;->this$0:Lcom/android/settings/HapticAdjust;

    #calls: Lcom/android/settings/HapticAdjust;->testVibe()V
    invoke-static {v0}, Lcom/android/settings/HapticAdjust;->access$200(Lcom/android/settings/HapticAdjust;)V

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/android/settings/HapticAdjust$1;->this$0:Lcom/android/settings/HapticAdjust;

    iget-object v0, v0, Lcom/android/settings/HapticAdjust;->mRevertButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 93
    iget-object v0, p0, Lcom/android/settings/HapticAdjust$1;->this$0:Lcom/android/settings/HapticAdjust;

    #calls: Lcom/android/settings/HapticAdjust;->revertChanges()V
    invoke-static {v0}, Lcom/android/settings/HapticAdjust;->access$300(Lcom/android/settings/HapticAdjust;)V

    .line 95
    :cond_5
    iget-object v0, p0, Lcom/android/settings/HapticAdjust$1;->this$0:Lcom/android/settings/HapticAdjust;

    iget-object v0, v0, Lcom/android/settings/HapticAdjust;->mDefaultButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_6

    .line 96
    iget-object v0, p0, Lcom/android/settings/HapticAdjust$1;->this$0:Lcom/android/settings/HapticAdjust;

    iget-object v1, p0, Lcom/android/settings/HapticAdjust$1;->this$0:Lcom/android/settings/HapticAdjust;

    iget v1, v1, Lcom/android/settings/HapticAdjust;->mHapType:I

    #calls: Lcom/android/settings/HapticAdjust;->defSet(I)V
    invoke-static {v0, v1}, Lcom/android/settings/HapticAdjust;->access$400(Lcom/android/settings/HapticAdjust;I)V

    .line 98
    :cond_6
    return-void
.end method
