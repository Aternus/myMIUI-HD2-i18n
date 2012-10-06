.class Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;
.super Landroid/widget/CursorTreeAdapter;
.source "ContactPickerGroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactPickerGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupListAdapter"
.end annotation


# instance fields
.field private final mInflator:Landroid/view/LayoutInflater;

.field private mUnknownNameText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/contacts/ContactPickerGroupActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ContactPickerGroupActivity;Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "cursor"
    .parameter "context"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/ContactPickerGroupActivity;

    .line 151
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorTreeAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 152
    move-object v0, p3

    check-cast v0, Lcom/android/contacts/ContactPickerGroupActivity;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/contacts/ContactPickerGroupActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->mInflator:Landroid/view/LayoutInflater;

    .line 153
    const v1, 0x104000e

    invoke-virtual {p3, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 154
    return-void
.end method


# virtual methods
.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 3
    .parameter "itemView"
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/ContactPickerGroupActivity;

    #getter for: Lcom/android/contacts/ContactPickerGroupActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;
    invoke-static {v0}, Lcom/android/contacts/ContactPickerGroupActivity;->access$200(Lcom/android/contacts/ContactPickerGroupActivity;)Lcom/android/contacts/ContactPickerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/ContactPickerGroupActivity;

    #getter for: Lcom/android/contacts/ContactPickerGroupActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;
    invoke-static {v1}, Lcom/android/contacts/ContactPickerGroupActivity;->access$400(Lcom/android/contacts/ContactPickerGroupActivity;)Lcom/android/contacts/ContactPhotoLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, p3, p1, v1, v2}, Lcom/android/contacts/ContactPickerActivity;->bindView(Landroid/database/Cursor;Landroid/view/View;Lcom/android/contacts/ContactPhotoLoader;Ljava/lang/CharSequence;)V

    .line 236
    return-void
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"

    .prologue
    const/4 v7, 0x1

    .line 211
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ContactPickerGroupActivity$GroupViewHolder;

    .line 212
    .local v2, vh:Lcom/android/contacts/ContactPickerGroupActivity$GroupViewHolder;
    iget-object v3, v2, Lcom/android/contacts/ContactPickerGroupActivity$GroupViewHolder;->mName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/ContactPickerGroupActivity;

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/contacts/model/GroupList;->translateGroupName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 219
    .local v1, position:Ljava/lang/Integer;
    iget-object v3, v2, Lcom/android/contacts/ContactPickerGroupActivity$GroupViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 220
    iget-object v3, v2, Lcom/android/contacts/ContactPickerGroupActivity$GroupViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/ContactPickerGroupActivity;

    #getter for: Lcom/android/contacts/ContactPickerGroupActivity;->mCheckedGroups:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/contacts/ContactPickerGroupActivity;->access$100(Lcom/android/contacts/ContactPickerGroupActivity;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 221
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->getChildrenCount(I)I

    move-result v0

    .line 222
    .local v0, count:I
    iget-object v3, v2, Lcom/android/contacts/ContactPickerGroupActivity$GroupViewHolder;->mCount:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/ContactPickerGroupActivity;

    invoke-virtual {v4}, Lcom/android/contacts/ContactPickerGroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b016f

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    return-void
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 6
    .parameter "groupCursor"

    .prologue
    .line 184
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 185
    .local v0, groupId:Ljava/lang/Long;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_GROUP_ID_URI:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 186
    .local v1, phoneNumbersUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/ContactPickerGroupActivity;

    sget-object v3, Lcom/android/contacts/ContactPickerListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "sort_key"

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/contacts/ContactPickerGroupActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method protected newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"
    .parameter "parent"

    .prologue
    .line 228
    new-instance v0, Lcom/android/contacts/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 229
    .local v0, view:Lcom/android/contacts/ContactListItemView;
    new-instance v1, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;

    invoke-direct {v1}, Lcom/android/contacts/ContactsListActivity$ContactListItemCache;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactListItemView;->setTag(Ljava/lang/Object;)V

    .line 230
    return-object v0
.end method

.method protected newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 192
    iget-object v3, p0, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->mInflator:Landroid/view/LayoutInflater;

    const v4, 0x7f030018

    invoke-virtual {v3, v4, p4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 193
    .local v2, view:Landroid/view/View;
    new-instance v0, Lcom/android/contacts/ContactPickerGroupActivity$GroupViewHolder;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/contacts/ContactPickerGroupActivity$GroupViewHolder;-><init>(Lcom/android/contacts/ContactPickerGroupActivity$1;)V

    .line 194
    .local v0, holder:Lcom/android/contacts/ContactPickerGroupActivity$GroupViewHolder;
    const v3, 0x7f070046

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/ContactPickerGroupActivity$GroupViewHolder;->mName:Landroid/widget/TextView;

    .line 195
    const v3, 0x7f070076

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/contacts/ContactPickerGroupActivity$GroupViewHolder;->mCount:Landroid/widget/TextView;

    .line 196
    const v3, 0x7f070077

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v0, Lcom/android/contacts/ContactPickerGroupActivity$GroupViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 197
    iget-object v3, p0, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/ContactPickerGroupActivity;

    #getter for: Lcom/android/contacts/ContactPickerGroupActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;
    invoke-static {v3}, Lcom/android/contacts/ContactPickerGroupActivity;->access$200(Lcom/android/contacts/ContactPickerGroupActivity;)Lcom/android/contacts/ContactPickerActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/ContactPickerActivity;->isSingleContactPick()Z

    move-result v3

    if-nez v3, :cond_0

    .line 198
    iget-object v3, v0, Lcom/android/contacts/ContactPickerGroupActivity$GroupViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 199
    .local v1, params:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v3, 0x28

    invoke-virtual {v1, v5, v5, v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 200
    iget-object v3, v0, Lcom/android/contacts/ContactPickerGroupActivity$GroupViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object v3, v0, Lcom/android/contacts/ContactPickerGroupActivity$GroupViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    .end local v1           #params:Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 206
    return-object v2

    .line 203
    :cond_0
    iget-object v3, v0, Lcom/android/contacts/ContactPickerGroupActivity$GroupViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    .line 158
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    move-object v1, v0

    .line 159
    .local v1, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    .line 160
    .local v7, isChecked:Z
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 162
    .local v5, groupPosition:I
    if-eqz v7, :cond_0

    .line 163
    iget-object v8, p0, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/ContactPickerGroupActivity;

    #getter for: Lcom/android/contacts/ContactPickerGroupActivity;->mCheckedGroups:Ljava/util/Set;
    invoke-static {v8}, Lcom/android/contacts/ContactPickerGroupActivity;->access$100(Lcom/android/contacts/ContactPickerGroupActivity;)Ljava/util/Set;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->getChildrenCount(I)I

    move-result v4

    .line 169
    .local v4, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v4, :cond_2

    .line 170
    invoke-virtual {p0, v5, v6}, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->getChildId(II)J

    move-result-wide v2

    .line 171
    .local v2, contactId:J
    if-eqz v7, :cond_1

    .line 172
    iget-object v8, p0, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/ContactPickerGroupActivity;

    #getter for: Lcom/android/contacts/ContactPickerGroupActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;
    invoke-static {v8}, Lcom/android/contacts/ContactPickerGroupActivity;->access$200(Lcom/android/contacts/ContactPickerGroupActivity;)Lcom/android/contacts/ContactPickerActivity;

    move-result-object v8

    iget-object v8, v8, Lcom/android/contacts/ContactPickerActivity;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 169
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 165
    .end local v2           #contactId:J
    .end local v4           #count:I
    .end local v6           #i:I
    :cond_0
    iget-object v8, p0, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/ContactPickerGroupActivity;

    #getter for: Lcom/android/contacts/ContactPickerGroupActivity;->mCheckedGroups:Ljava/util/Set;
    invoke-static {v8}, Lcom/android/contacts/ContactPickerGroupActivity;->access$100(Lcom/android/contacts/ContactPickerGroupActivity;)Ljava/util/Set;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    .restart local v2       #contactId:J
    .restart local v4       #count:I
    .restart local v6       #i:I
    :cond_1
    iget-object v8, p0, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/ContactPickerGroupActivity;

    #getter for: Lcom/android/contacts/ContactPickerGroupActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;
    invoke-static {v8}, Lcom/android/contacts/ContactPickerGroupActivity;->access$200(Lcom/android/contacts/ContactPickerGroupActivity;)Lcom/android/contacts/ContactPickerActivity;

    move-result-object v8

    iget-object v8, v8, Lcom/android/contacts/ContactPickerActivity;->mSelectedContactIds:Ljava/util/HashSet;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 178
    .end local v2           #contactId:J
    :cond_2
    iget-object v8, p0, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/ContactPickerGroupActivity;

    #getter for: Lcom/android/contacts/ContactPickerGroupActivity;->mParentActivity:Lcom/android/contacts/ContactPickerActivity;
    invoke-static {v8}, Lcom/android/contacts/ContactPickerGroupActivity;->access$200(Lcom/android/contacts/ContactPickerGroupActivity;)Lcom/android/contacts/ContactPickerActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/ContactPickerActivity;->updateDoneButton()V

    .line 179
    invoke-virtual {p0}, Lcom/android/contacts/ContactPickerGroupActivity$GroupListAdapter;->notifyDataSetChanged()V

    .line 180
    return-void
.end method
