.class Lcom/android/mms/ui/NewMessageActivity$4;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessageActivity;->initResourceRefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$4;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$4;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$300(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$4;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditorLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$400(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$4;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditor:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$500(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 258
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$4;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientRowsScroller:Landroid/widget/ScrollView;
    invoke-static {v0}, Lcom/android/mms/ui/NewMessageActivity;->access$700(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity$4;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;
    invoke-static {v1}, Lcom/android/mms/ui/NewMessageActivity;->access$600(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/ui/RowLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/RowLayout;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 259
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity$4;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/NewMessageActivity;->showSoftKeyboard()Z

    .line 260
    return-void
.end method
