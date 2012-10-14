.class Lcom/android/mms/ui/NumberPicker$3;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 148
    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker$3;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$3;->this$0:Lcom/android/mms/ui/NumberPicker;

    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$3;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/NumberPicker;->access$500(Lcom/android/mms/ui/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    #calls: Lcom/android/mms/ui/NumberPicker;->validateInput(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/NumberPicker;->access$600(Lcom/android/mms/ui/NumberPicker;Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$3;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$500(Lcom/android/mms/ui/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$3;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/NumberPicker;->access$500(Lcom/android/mms/ui/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 154
    :cond_0
    const v0, 0x7f0d00c3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 155
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$3;->this$0:Lcom/android/mms/ui/NumberPicker;

    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$3;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mCurrent:I
    invoke-static {v1}, Lcom/android/mms/ui/NumberPicker;->access$100(Lcom/android/mms/ui/NumberPicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/NumberPicker;->changeCurrent(I)V

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 156
    :cond_2
    const v0, 0x7f0d00c5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/mms/ui/NumberPicker$3;->this$0:Lcom/android/mms/ui/NumberPicker;

    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$3;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mCurrent:I
    invoke-static {v1}, Lcom/android/mms/ui/NumberPicker;->access$100(Lcom/android/mms/ui/NumberPicker;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/NumberPicker;->changeCurrent(I)V

    goto :goto_0
.end method
