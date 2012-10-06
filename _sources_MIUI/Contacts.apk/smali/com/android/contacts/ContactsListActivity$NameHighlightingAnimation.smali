.class Lcom/android/contacts/ContactsListActivity$NameHighlightingAnimation;
.super Lcom/android/contacts/TextHighlightingAnimation;
.source "ContactsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameHighlightingAnimation"
.end annotation


# instance fields
.field private final mListView:Landroid/widget/ListView;


# direct methods
.method private constructor <init>(Landroid/widget/ListView;I)V
    .locals 0
    .parameter "listView"
    .parameter "duration"

    .prologue
    .line 558
    invoke-direct {p0, p2}, Lcom/android/contacts/TextHighlightingAnimation;-><init>(I)V

    .line 559
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity$NameHighlightingAnimation;->mListView:Landroid/widget/ListView;

    .line 560
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListView;ILcom/android/contacts/ContactsListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 554
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ContactsListActivity$NameHighlightingAnimation;-><init>(Landroid/widget/ListView;I)V

    return-void
.end method


# virtual methods
.method protected invalidate()V
    .locals 6

    .prologue
    .line 567
    iget-object v5, p0, Lcom/android/contacts/ContactsListActivity$NameHighlightingAnimation;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 568
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 569
    iget-object v5, p0, Lcom/android/contacts/ContactsListActivity$NameHighlightingAnimation;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 570
    .local v3, itemView:Landroid/view/View;
    instance-of v5, v3, Lcom/android/contacts/ContactListItemView;

    if-eqz v5, :cond_0

    .line 571
    move-object v0, v3

    check-cast v0, Lcom/android/contacts/ContactListItemView;

    move-object v4, v0

    .line 572
    .local v4, view:Lcom/android/contacts/ContactListItemView;
    invoke-virtual {v4}, Lcom/android/contacts/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->invalidate()V

    .line 568
    .end local v4           #view:Lcom/android/contacts/ContactListItemView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 575
    .end local v3           #itemView:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onAnimationEnded()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$NameHighlightingAnimation;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 585
    return-void
.end method

.method protected onAnimationStarted()V
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity$NameHighlightingAnimation;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 580
    return-void
.end method
