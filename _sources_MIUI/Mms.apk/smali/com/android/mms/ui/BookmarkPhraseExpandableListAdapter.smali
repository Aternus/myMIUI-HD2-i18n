.class public Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "BookmarkPhraseExpandableListAdapter.java"


# instance fields
.field private mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 27
    new-instance v0, Lcom/android/mms/ui/PhraseListAdapter;

    invoke-direct {v0, p1}, Lcom/android/mms/ui/PhraseListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    .line 28
    new-instance v0, Lcom/android/mms/ui/BookmarkListAdapter;

    invoke-direct {v0, p1}, Lcom/android/mms/ui/BookmarkListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    .line 30
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 31
    return-void
.end method


# virtual methods
.method public getBookmarkListAdapter()Lcom/android/mms/ui/BookmarkListAdapter;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    return-object v0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/PhraseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 77
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/BookmarkListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/PhraseListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 95
    :goto_0
    return-wide v0

    .line 92
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/BookmarkListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0

    .line 95
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getChildType(II)I
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 45
    if-nez p1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    if-ne p1, v1, :cond_0

    move v0, v1

    .line 48
    goto :goto_0
.end method

.method public getChildTypeCount()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x2

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "isLastChild"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    .line 127
    if-nez p1, :cond_1

    .line 128
    if-eqz p4, :cond_0

    instance-of v0, p4, Lcom/android/mms/ui/PhraseListItem;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    invoke-virtual {v0, p2, p4, p5}, Lcom/android/mms/ui/PhraseListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    invoke-virtual {v0, p2, v1, p5}, Lcom/android/mms/ui/PhraseListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 134
    if-eqz p4, :cond_2

    instance-of v0, p4, Lcom/android/mms/ui/BookmarkListItem;

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    invoke-virtual {v0, p2, p4, p5}, Lcom/android/mms/ui/BookmarkListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    invoke-virtual {v0, p2, v1, p5}, Lcom/android/mms/ui/BookmarkListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 140
    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/PhraseListAdapter;->getCount()I

    move-result v0

    .line 65
    :goto_0
    return v0

    .line 62
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BookmarkListAdapter;->getCount()I

    move-result v0

    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x2

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 85
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "groupPosition"
    .parameter "isExpanded"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 107
    if-nez p3, :cond_1

    .line 108
    iget-object v2, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 113
    .local v1, v:Landroid/view/View;
    :goto_0
    const v2, 0x7f0d0016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    .local v0, title:Landroid/widget/TextView;
    if-nez p1, :cond_2

    .line 116
    const v2, 0x7f09013a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 121
    :cond_0
    :goto_1
    return-object v1

    .line 110
    .end local v0           #title:Landroid/widget/TextView;
    .end local v1           #v:Landroid/view/View;
    :cond_1
    move-object v1, p3

    .restart local v1       #v:Landroid/view/View;
    goto :goto_0

    .line 117
    .restart local v0       #title:Landroid/widget/TextView;
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 118
    const v2, 0x7f090133

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public getPhraseListAdapter()Lcom/android/mms/ui/PhraseListAdapter;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/PhraseListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BookmarkListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .parameter "groupPosition"
    .parameter "childPosition"

    .prologue
    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public load(Z)V
    .locals 1
    .parameter "isPickerMode"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/PhraseListAdapter;->load(Z)V

    .line 35
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BookmarkListAdapter;->load()V

    .line 36
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetInvalidated()V

    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/PhraseListAdapter;->notifyDataSetInvalidated()V

    .line 152
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BookmarkListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 153
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/PhraseListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 169
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/BookmarkListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 170
    return-void
.end method

.method public setLinksable(Z)V
    .locals 1
    .parameter "linksable"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/BookmarkListAdapter;->setLinksable(Z)V

    .line 165
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mPhraseListAdapter:Lcom/android/mms/ui/PhraseListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/PhraseListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->mBookmarkListAdapter:Lcom/android/mms/ui/BookmarkListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/BookmarkListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 175
    return-void
.end method
