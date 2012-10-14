.class Lcom/android/mms/ui/NewMessageActivity$1;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessageActivity;->initUserGuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewMessageActivity;

.field final synthetic val$pref:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageActivity;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageActivity$1;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/NewMessageActivity$1;->val$pref:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 160
    new-instance v1, Landroid/widget/GuidePopupWindow;

    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$1;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    invoke-direct {v1, v2}, Landroid/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    .line 162
    .local v1, guidePopupWindow:Landroid/widget/GuidePopupWindow;
    const v2, 0x7f090174

    invoke-virtual {v1, v2}, Landroid/widget/GuidePopupWindow;->setGuideText(I)V

    .line 163
    invoke-virtual {v1, v4}, Landroid/widget/GuidePopupWindow;->setOutsideTouchable(Z)V

    .line 164
    invoke-virtual {v1, v3}, Landroid/widget/GuidePopupWindow;->enableOutSideWindowTouchDismiss(Z)V

    .line 165
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$1;->this$0:Lcom/android/mms/ui/NewMessageActivity;

    #getter for: Lcom/android/mms/ui/NewMessageActivity;->mAddRecipientButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/mms/ui/NewMessageActivity;->access$000(Lcom/android/mms/ui/NewMessageActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 167
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity$1;->val$pref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "guide_add_recipients"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    return-void
.end method
