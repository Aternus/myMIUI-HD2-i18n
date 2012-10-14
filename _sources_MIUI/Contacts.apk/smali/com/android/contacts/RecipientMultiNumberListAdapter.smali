.class public Lcom/android/contacts/RecipientMultiNumberListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecipientMultiNumberListAdapter.java"


# instance fields
.field private mCheckedItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/RecipientsActivity$RecipientItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/RecipientMultiNumberListAdapter;->mDataList:Ljava/util/ArrayList;

    .line 22
    iput-object p1, p0, Lcom/android/contacts/RecipientMultiNumberListAdapter;->mContext:Landroid/content/Context;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/RecipientMultiNumberListAdapter;->mCheckedItems:Ljava/util/HashSet;

    .line 24
    return-void
.end method

.method private checkItem(IZ)V
    .locals 2
    .parameter "position"
    .parameter "checked"

    .prologue
    .line 27
    if-eqz p2, :cond_0

    .line 28
    iget-object v0, p0, Lcom/android/contacts/RecipientMultiNumberListAdapter;->mCheckedItems:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/RecipientMultiNumberListAdapter;->mCheckedItems:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private isItemChecked(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/contacts/RecipientMultiNumberListAdapter;->mCheckedItems:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addItem(Lcom/android/contacts/RecipientsActivity$RecipientItem;)V
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 89
    iget-object v0, p0, Lcom/android/contacts/RecipientMultiNumberListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {p0}, Lcom/android/contacts/RecipientMultiNumberListAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/RecipientMultiNumberListAdapter;->checkItem(IZ)V

    .line 92
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/contacts/RecipientMultiNumberListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/contacts/RecipientsActivity$RecipientItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/contacts/RecipientMultiNumberListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/RecipientsActivity$RecipientItem;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/android/contacts/RecipientMultiNumberListAdapter;->getItem(I)Lcom/android/contacts/RecipientsActivity$RecipientItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 85
    int-to-long v0, p1

    return-wide v0
.end method

.method public getUnCheckedItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/RecipientsActivity$RecipientItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v3, p0, Lcom/android/contacts/RecipientMultiNumberListAdapter;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 40
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/RecipientsActivity$RecipientItem;>;"
    iget-object v3, p0, Lcom/android/contacts/RecipientMultiNumberListAdapter;->mCheckedItems:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 41
    .local v2, position:I
    invoke-virtual {p0, v2}, Lcom/android/contacts/RecipientMultiNumberListAdapter;->getItem(I)Lcom/android/contacts/RecipientsActivity$RecipientItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    .end local v2           #position:I
    :cond_0
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 58
    const/4 v2, 0x0

    .line 59
    .local v2, listViewItem:Lcom/android/contacts/RecipientMultiNumberListItem;
    if-eqz p2, :cond_0

    instance-of v4, p2, Lcom/android/contacts/RecipientMultiNumberListItem;

    if-nez v4, :cond_2

    .line 60
    :cond_0
    new-instance v2, Lcom/android/contacts/RecipientMultiNumberListItem;

    .end local v2           #listViewItem:Lcom/android/contacts/RecipientMultiNumberListItem;
    iget-object v4, p0, Lcom/android/contacts/RecipientMultiNumberListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/contacts/RecipientMultiNumberListItem;-><init>(Landroid/content/Context;)V

    .line 65
    .restart local v2       #listViewItem:Lcom/android/contacts/RecipientMultiNumberListItem;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/RecipientMultiNumberListAdapter;->getItem(I)Lcom/android/contacts/RecipientsActivity$RecipientItem;

    move-result-object v1

    .line 66
    .local v1, item:Lcom/android/contacts/RecipientsActivity$RecipientItem;
    instance-of v4, v1, Lcom/android/contacts/RecipientsActivity$RecipientItem;

    if-eqz v4, :cond_1

    .line 67
    move-object v0, v1

    check-cast v0, Lcom/android/contacts/RecipientsActivity$RecipientItem;

    move-object v3, v0

    .line 68
    .local v3, recipientItem:Lcom/android/contacts/RecipientsActivity$RecipientItem;
    invoke-direct {p0, p1}, Lcom/android/contacts/RecipientMultiNumberListAdapter;->isItemChecked(I)Z

    move-result v4

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/contacts/RecipientMultiNumberListItem;->bind(Lcom/android/contacts/RecipientsActivity$RecipientItem;IZ)V

    .line 70
    .end local v3           #recipientItem:Lcom/android/contacts/RecipientsActivity$RecipientItem;
    :cond_1
    return-object v2

    .line 63
    .end local v1           #item:Lcom/android/contacts/RecipientsActivity$RecipientItem;
    :cond_2
    move-object v0, p2

    check-cast v0, Lcom/android/contacts/RecipientMultiNumberListItem;

    move-object v2, v0

    goto :goto_0
.end method

.method public toggleCheckedItem(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/contacts/RecipientMultiNumberListAdapter;->isItemChecked(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 52
    .local v0, checked:Z
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/RecipientMultiNumberListAdapter;->checkItem(IZ)V

    .line 53
    return v0

    .line 51
    .end local v0           #checked:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
