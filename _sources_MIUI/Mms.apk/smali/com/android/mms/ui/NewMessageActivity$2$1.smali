.class Lcom/android/mms/ui/NewMessageActivity$2$1;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessageActivity$2;->onSoftInputStateChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/NewMessageActivity$2;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$2$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 181
    new-instance v1, Landroid/widget/GuidePopupWindow;

    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$2$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$2;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessageActivity$2;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-direct {v1, v2}, Landroid/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    .line 183
    .local v1, guidePopupWindow:Landroid/widget/GuidePopupWindow;
    const v2, 0x7f090175

    invoke-virtual {v1, v2}, Landroid/widget/GuidePopupWindow;->setGuideText(I)V

    .line 184
    invoke-virtual {v1, v4}, Landroid/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 185
    invoke-virtual {v1, v4}, Landroid/widget/GuidePopupWindow;->setOutsideTouchable(Z)V

    .line 186
    invoke-virtual {v1, v3}, Landroid/widget/GuidePopupWindow;->enableOutSideWindowTouchDismiss(Z)V

    .line 187
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$2$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$2;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessageActivity$2;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    iget-object v2, v2, Lcom/android/mms/ui/MessageEditableActivityBase;->mShowAttachmentPanelButton:Landroid/widget/Button;

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 189
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$2$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$2;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessageActivity$2;->val$pref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 190
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "guide_add_attachments"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$2$1;->this$1:Lcom/android/mms/ui/NewMessageActivity$2;

    iget-object v2, v2, Lcom/android/mms/ui/NewMessageActivity$2;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    iget-object v2, v2, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnSoftInputStateChangeListener(Landroid/widget/TextView$OnSoftInputStateChangeListener;)V

    .line 193
    return-void
.end method
