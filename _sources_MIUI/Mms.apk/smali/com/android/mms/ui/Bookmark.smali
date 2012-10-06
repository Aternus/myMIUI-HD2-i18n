.class public Lcom/android/mms/ui/Bookmark;
.super Landroid/app/Activity;
.source "Bookmark.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/Bookmark$DeliveryPdu;,
        Lcom/android/mms/ui/Bookmark$CDMADeliveryPduGenerator;,
        Lcom/android/mms/ui/Bookmark$GSMDeliveryPduGenerator;,
        Lcom/android/mms/ui/Bookmark$SelectedMessage;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

.field private mList:Landroid/widget/ExpandableListView;

.field private mPickerMode:Z

.field private mSelectedMessage:Lcom/android/mms/ui/Bookmark$SelectedMessage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/Bookmark;->mPickerMode:Z

    .line 766
    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/Bookmark;)Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/mms/ui/Bookmark;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    return-object v0
.end method

.method private initResourceRefs()V
    .locals 3

    .prologue
    .line 85
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/Bookmark;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, emptyView:Landroid/view/View;
    const v1, 0x7f0d0015

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/Bookmark;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcom/android/mms/ui/Bookmark;->mList:Landroid/widget/ExpandableListView;

    .line 87
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/mms/ui/Bookmark;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 91
    :cond_0
    new-instance v1, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/Bookmark;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    .line 92
    iget-object v1, p0, Lcom/android/mms/ui/Bookmark;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->setLinksable(Z)V

    .line 93
    iget-object v1, p0, Lcom/android/mms/ui/Bookmark;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 94
    iget-object v1, p0, Lcom/android/mms/ui/Bookmark;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, p0}, Landroid/widget/ExpandableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 95
    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 210
    iget-boolean v2, p0, Lcom/android/mms/ui/Bookmark;->mPickerMode:Z

    if-eqz v2, :cond_1

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, body:Ljava/lang/String;
    if-nez p3, :cond_0

    .line 213
    iget-object v2, p0, Lcom/android/mms/ui/Bookmark;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    invoke-virtual {v2, p3, p4}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #body:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 214
    .restart local v0       #body:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/Bookmark;->mSelectedMessage:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    invoke-virtual {v2, p4, v0}, Lcom/android/mms/ui/Bookmark$SelectedMessage;->selectPhrase(ILjava/lang/String;)V

    .line 220
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/Bookmark;->mSelectedMessage:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    invoke-virtual {v2}, Lcom/android/mms/ui/Bookmark$SelectedMessage;->returnPickerResult()V

    .line 221
    const/4 v2, 0x1

    .line 223
    .end local v0           #body:Ljava/lang/String;
    :goto_1
    return v2

    .line 216
    .restart local v0       #body:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/Bookmark;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    invoke-virtual {v2, p3, p4}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 217
    .local v1, c:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/android/mms/ui/Bookmark;->mSelectedMessage:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    iget-object v3, p0, Lcom/android/mms/ui/Bookmark;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->getBookmarkListAdapter()Lcom/android/mms/ui/BookmarkListAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/mms/ui/BookmarkListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/Bookmark$SelectedMessage;->selectBookmark(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0

    .line 223
    .end local v0           #body:Ljava/lang/String;
    .end local v1           #c:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->showContextMenu()Z

    move-result v2

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "menuItem"

    .prologue
    const/4 v4, 0x1

    .line 181
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    .line 182
    .local v0, info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v2, v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v1

    .line 183
    .local v1, type:I
    if-ne v1, v4, :cond_0

    .line 184
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 201
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 204
    :goto_0
    return v2

    .line 186
    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/Bookmark;->mSelectedMessage:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    invoke-virtual {v2}, Lcom/android/mms/ui/Bookmark$SelectedMessage;->forwardMessage()V

    move v2, v4

    .line 187
    goto :goto_0

    .line 189
    :pswitch_1
    iget-object v2, p0, Lcom/android/mms/ui/Bookmark;->mSelectedMessage:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    invoke-virtual {v2}, Lcom/android/mms/ui/Bookmark$SelectedMessage;->edit()V

    move v2, v4

    .line 190
    goto :goto_0

    .line 192
    :pswitch_2
    iget-object v2, p0, Lcom/android/mms/ui/Bookmark;->mSelectedMessage:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    invoke-virtual {v2}, Lcom/android/mms/ui/Bookmark$SelectedMessage;->delete()V

    move v2, v4

    .line 193
    goto :goto_0

    .line 195
    :pswitch_3
    iget-object v2, p0, Lcom/android/mms/ui/Bookmark;->mSelectedMessage:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    invoke-virtual {v2}, Lcom/android/mms/ui/Bookmark$SelectedMessage;->saveToIcc()V

    move v2, v4

    .line 196
    goto :goto_0

    .line 198
    :pswitch_4
    iget-object v2, p0, Lcom/android/mms/ui/Bookmark;->mSelectedMessage:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    invoke-virtual {v2}, Lcom/android/mms/ui/Bookmark$SelectedMessage;->viewOrigin()V

    move v2, v4

    .line 199
    goto :goto_0

    .line 204
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/Bookmark;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/mms/ui/Bookmark;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/Bookmark;->mPickerMode:Z

    .line 79
    :cond_0
    new-instance v1, Lcom/android/mms/ui/Bookmark$SelectedMessage;

    iget-boolean v2, p0, Lcom/android/mms/ui/Bookmark;->mPickerMode:Z

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/Bookmark$SelectedMessage;-><init>(Lcom/android/mms/ui/Bookmark;Z)V

    iput-object v1, p0, Lcom/android/mms/ui/Bookmark;->mSelectedMessage:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    .line 81
    invoke-direct {p0}, Lcom/android/mms/ui/Bookmark;->initResourceRefs()V

    .line 82
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 120
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 122
    iget-boolean v7, p0, Lcom/android/mms/ui/Bookmark;->mPickerMode:Z

    if-eqz v7, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    move-object v0, p3

    check-cast v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v5, v0

    .line 127
    .local v5, info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    iget-wide v7, v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v6

    .line 128
    .local v6, type:I
    iget-wide v7, v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v4

    .line 129
    .local v4, group:I
    iget-wide v7, v5, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v7, v8}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v3

    .line 131
    .local v3, child:I
    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, body:Ljava/lang/String;
    if-nez v4, :cond_3

    .line 134
    iget-object v7, p0, Lcom/android/mms/ui/Bookmark;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->getPhraseListAdapter()Lcom/android/mms/ui/PhraseListAdapter;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/mms/ui/PhraseListAdapter;->isNewPhraseItem(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 135
    iget-object v7, p0, Lcom/android/mms/ui/Bookmark;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->getPhraseListAdapter()Lcom/android/mms/ui/PhraseListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/ui/PhraseListAdapter;->isFull()Z

    move-result v7

    if-nez v7, :cond_0

    .line 136
    iget-object v7, p0, Lcom/android/mms/ui/Bookmark;->mSelectedMessage:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/mms/ui/Bookmark$SelectedMessage;->selectPhrase(ILjava/lang/String;)V

    .line 137
    iget-object v7, p0, Lcom/android/mms/ui/Bookmark;->mSelectedMessage:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    invoke-virtual {v7}, Lcom/android/mms/ui/Bookmark$SelectedMessage;->edit()V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/Bookmark;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    invoke-virtual {v7, v4, v3}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #body:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 141
    .restart local v1       #body:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/Bookmark;->mSelectedMessage:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    invoke-virtual {v7, v3, v1}, Lcom/android/mms/ui/Bookmark$SelectedMessage;->selectPhrase(ILjava/lang/String;)V

    .line 143
    iget-object v7, p0, Lcom/android/mms/ui/Bookmark;->mSelectedMessage:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    invoke-virtual {v7}, Lcom/android/mms/ui/Bookmark$SelectedMessage;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 144
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/Bookmark;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090019

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 146
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/Bookmark;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0900a3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 148
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/Bookmark;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09013f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 152
    :cond_3
    iget-object v7, p0, Lcom/android/mms/ui/Bookmark;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    invoke-virtual {v7, v4, v3}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 153
    .local v2, c:Landroid/database/Cursor;
    iget-object v7, p0, Lcom/android/mms/ui/Bookmark;->mSelectedMessage:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    iget-object v8, p0, Lcom/android/mms/ui/Bookmark;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    invoke-virtual {v8}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->getBookmarkListAdapter()Lcom/android/mms/ui/BookmarkListAdapter;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/mms/ui/BookmarkListAdapter;->getCachedMessageItem(Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/Bookmark$SelectedMessage;->selectBookmark(Lcom/android/mms/ui/MessageItem;)V

    .line 156
    iget-object v7, p0, Lcom/android/mms/ui/Bookmark;->mSelectedMessage:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    invoke-virtual {v7}, Lcom/android/mms/ui/Bookmark$SelectedMessage;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 157
    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/Bookmark;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090138

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 159
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/Bookmark;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090019

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 162
    iget-object v7, p0, Lcom/android/mms/ui/Bookmark;->mSelectedMessage:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    invoke-virtual {v7}, Lcom/android/mms/ui/Bookmark$SelectedMessage;->isMms()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/Bookmark;->mSelectedMessage:Lcom/android/mms/ui/Bookmark$SelectedMessage;

    invoke-virtual {v8}, Lcom/android/mms/ui/Bookmark$SelectedMessage;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 165
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 166
    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/Bookmark;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090135

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 173
    :cond_4
    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/Bookmark;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090137

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 168
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 169
    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/Bookmark;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090136

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/Bookmark;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    iget-boolean v1, p0, Lcom/android/mms/ui/Bookmark;->mPickerMode:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->load(Z)V

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/Bookmark;->mList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/android/mms/ui/Bookmark;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 103
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-boolean v0, p0, Lcom/android/mms/ui/Bookmark;->mPickerMode:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/Bookmark;->mList:Landroid/widget/ExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 110
    :goto_0
    return-void

    .line 103
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/Bookmark;->mList:Landroid/widget/ExpandableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/Bookmark;->mAdapter:Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/BookmarkPhraseExpandableListAdapter;->notifyDataSetInvalidated()V

    .line 116
    return-void
.end method
