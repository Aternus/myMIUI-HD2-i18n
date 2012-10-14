.class Lcom/android/contacts/ui/GroupsBrowserActivity$9;
.super Ljava/lang/Object;
.source "GroupsBrowserActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ui/GroupsBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/ui/GroupsBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$9;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7
    .parameter "animation"

    .prologue
    const/4 v6, 0x0

    .line 580
    iget-object v4, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$9;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mAnimating:Z
    invoke-static {v4}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$1100(Lcom/android/contacts/ui/GroupsBrowserActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 598
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$9;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    const/4 v5, 0x0

    #setter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mAnimating:Z
    invoke-static {v4, v5}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$1102(Lcom/android/contacts/ui/GroupsBrowserActivity;Z)Z

    .line 584
    iget-object v4, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$9;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #calls: Lcom/android/contacts/ui/GroupsBrowserActivity;->getFirstVisibleDataChild()I
    invoke-static {v4}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$1200(Lcom/android/contacts/ui/GroupsBrowserActivity;)I

    move-result v2

    .line 585
    .local v2, start:I
    iget-object v4, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$9;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #calls: Lcom/android/contacts/ui/GroupsBrowserActivity;->getLastVisibleDataChild()I
    invoke-static {v4}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$1300(Lcom/android/contacts/ui/GroupsBrowserActivity;)I

    move-result v0

    .line 586
    .local v0, end:I
    move v1, v2

    .local v1, i:I
    :goto_1
    if-gt v1, v0, :cond_1

    .line 587
    iget-object v4, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$9;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mList:Landroid/widget/SortableListView;
    invoke-static {v4}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$1000(Lcom/android/contacts/ui/GroupsBrowserActivity;)Landroid/widget/SortableListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/SortableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;

    .line 588
    .local v3, vh:Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;
    iget-object v4, v3, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zIcon:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 589
    iget-object v4, v3, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zName:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 590
    iget-object v4, v3, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zSummary:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 591
    iget-object v4, v3, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zNameEdit:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 592
    iget-object v4, v3, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zMoveButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 593
    iget-object v4, v3, Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;->zRight:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 586
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 597
    .end local v3           #vh:Lcom/android/contacts/ui/GroupsBrowserActivity$ViewHolder;
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$9;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mList:Landroid/widget/SortableListView;
    invoke-static {v4}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$1000(Lcom/android/contacts/ui/GroupsBrowserActivity;)Landroid/widget/SortableListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SortableListView;->invalidateViews()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 576
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/contacts/ui/GroupsBrowserActivity$9;->this$0:Lcom/android/contacts/ui/GroupsBrowserActivity;

    #getter for: Lcom/android/contacts/ui/GroupsBrowserActivity;->mList:Landroid/widget/SortableListView;
    invoke-static {v0}, Lcom/android/contacts/ui/GroupsBrowserActivity;->access$1000(Lcom/android/contacts/ui/GroupsBrowserActivity;)Landroid/widget/SortableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SortableListView;->invalidateViews()V

    .line 572
    return-void
.end method
