.class Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread$1;
.super Ljava/lang/Object;
.source "ViewContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread;


# direct methods
.method constructor <init>(Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread;)V
    .locals 0
    .parameter

    .prologue
    .line 657
    iput-object p1, p0, Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread$1;->this$1:Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 659
    const/4 v3, 0x0

    .line 660
    .local v3, signature:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread$1;->this$1:Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread;

    iget-object v6, v6, Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread;->this$0:Lcom/android/contacts/ViewContactActivity;

    #getter for: Lcom/android/contacts/ViewContactActivity;->miliaoEntries:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/contacts/ViewContactActivity;->access$400(Lcom/android/contacts/ViewContactActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;

    .line 661
    .local v1, entry:Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;
    iget-object v6, p0, Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread$1;->this$1:Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread;

    iget-object v6, v6, Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread;->this$0:Lcom/android/contacts/ViewContactActivity;

    #getter for: Lcom/android/contacts/ViewContactActivity;->mMiliaoItems:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/contacts/ViewContactActivity;->access$500(Lcom/android/contacts/ViewContactActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v7, v1, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->account:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    .line 663
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 664
    const v6, 0x7f0700b0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 666
    .local v4, statusView:Landroid/widget/TextView;
    const v6, 0x7f070032

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 669
    .local v0, actionView:Landroid/widget/ImageView;
    iget-object v6, v1, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->onlineStatus:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 670
    iget-object v6, v1, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->onlineStatus:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 673
    :cond_1
    iget-boolean v6, v1, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->isOnline:Z

    if-eqz v6, :cond_3

    const v6, 0x7f0200a0

    :goto_1
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 678
    .end local v0           #actionView:Landroid/widget/ImageView;
    .end local v4           #statusView:Landroid/widget/TextView;
    :cond_2
    iget-object v6, v1, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->signature:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 679
    iget-object v3, v1, Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;->signature:Ljava/lang/String;

    goto :goto_0

    .line 673
    .restart local v0       #actionView:Landroid/widget/ImageView;
    .restart local v4       #statusView:Landroid/widget/TextView;
    :cond_3
    const v6, 0x7f02009f

    goto :goto_1

    .line 683
    .end local v0           #actionView:Landroid/widget/ImageView;
    .end local v1           #entry:Lcom/android/contacts/ViewContactActivity$MiLiaoEntry;
    .end local v4           #statusView:Landroid/widget/TextView;
    .end local v5           #view:Landroid/view/View;
    :cond_4
    iget-object v6, p0, Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread$1;->this$1:Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread;

    iget-object v6, v6, Lcom/android/contacts/ViewContactActivity$QueryMiliaoStatusThread;->this$0:Lcom/android/contacts/ViewContactActivity;

    iget-object v6, v6, Lcom/android/contacts/ViewContactActivity;->mContactHeaderWidget:Lcom/android/internal/widget/ContactHeaderWidget;

    invoke-virtual {v6, v3}, Lcom/android/internal/widget/ContactHeaderWidget;->setSelfStatus(Ljava/lang/CharSequence;)V

    .line 684
    return-void
.end method
