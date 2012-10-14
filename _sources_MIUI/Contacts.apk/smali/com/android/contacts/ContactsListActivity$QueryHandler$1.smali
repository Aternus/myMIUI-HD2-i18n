.class Lcom/android/contacts/ContactsListActivity$QueryHandler$1;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ContactsListActivity$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ContactsListActivity$QueryHandler;

.field final synthetic val$activity:Lcom/android/contacts/ContactsListActivity;

.field final synthetic val$height:I


# direct methods
.method constructor <init>(Lcom/android/contacts/ContactsListActivity$QueryHandler;Lcom/android/contacts/ContactsListActivity;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2989
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity$QueryHandler$1;->this$0:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    iput-object p2, p0, Lcom/android/contacts/ContactsListActivity$QueryHandler$1;->val$activity:Lcom/android/contacts/ContactsListActivity;

    iput p3, p0, Lcom/android/contacts/ContactsListActivity$QueryHandler$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2993
    new-instance v0, Landroid/widget/GuidePopupWindow;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$QueryHandler$1;->val$activity:Lcom/android/contacts/ContactsListActivity;

    invoke-direct {v0, v1}, Landroid/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    .line 2994
    .local v0, guidePopupWindow:Landroid/widget/GuidePopupWindow;
    const v1, 0x7f0b015f

    invoke-virtual {v0, v1}, Landroid/widget/GuidePopupWindow;->setGuideText(I)V

    .line 2995
    invoke-virtual {v0, v4}, Landroid/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 2996
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity$QueryHandler$1;->val$activity:Lcom/android/contacts/ContactsListActivity;

    #getter for: Lcom/android/contacts/ContactsListActivity;->mFooterView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/contacts/ContactsListActivity;->access$2100(Lcom/android/contacts/ContactsListActivity;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/contacts/ContactsListActivity$QueryHandler$1;->val$height:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/GuidePopupWindow;->show(Landroid/view/View;IIZ)V

    .line 2997
    return-void
.end method
