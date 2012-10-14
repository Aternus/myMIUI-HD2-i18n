.class Lcom/android/mms/ui/NumberPicker$5;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NumberPicker;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker$5;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 183
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$5;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$500(Lcom/android/mms/ui/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 185
    const v0, 0x7f0d00c3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$5;->this$0:Lcom/android/mms/ui/NumberPicker;

    #setter for: Lcom/android/mms/ui/NumberPicker;->mIncrement:Z
    invoke-static {v0, v2}, Lcom/android/mms/ui/NumberPicker;->access$002(Lcom/android/mms/ui/NumberPicker;Z)Z

    .line 187
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$5;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$300(Lcom/android/mms/ui/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$5;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/mms/ui/NumberPicker;->access$700(Lcom/android/mms/ui/NumberPicker;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    :cond_0
    :goto_0
    return v2

    .line 188
    :cond_1
    const v0, 0x7f0d00c5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$5;->this$0:Lcom/android/mms/ui/NumberPicker;

    #setter for: Lcom/android/mms/ui/NumberPicker;->mDecrement:Z
    invoke-static {v0, v2}, Lcom/android/mms/ui/NumberPicker;->access$402(Lcom/android/mms/ui/NumberPicker;Z)Z

    .line 190
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$5;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$300(Lcom/android/mms/ui/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$5;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/mms/ui/NumberPicker;->access$700(Lcom/android/mms/ui/NumberPicker;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
