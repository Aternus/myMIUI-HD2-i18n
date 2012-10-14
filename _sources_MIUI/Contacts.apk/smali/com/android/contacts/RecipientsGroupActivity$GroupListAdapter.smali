.class Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;
.super Landroid/widget/CursorTreeAdapter;
.source "RecipientsGroupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/RecipientsGroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupListAdapter"
.end annotation


# instance fields
.field private final mInflator:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/contacts/RecipientsGroupActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/RecipientsGroupActivity;Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "cursor"
    .parameter "context"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/RecipientsGroupActivity;

    .line 102
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorTreeAdapter;-><init>(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 103
    invoke-virtual {p1}, Lcom/android/contacts/RecipientsGroupActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;->mInflator:Landroid/view/LayoutInflater;

    .line 104
    return-void
.end method


# virtual methods
.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"

    .prologue
    .line 124
    invoke-static {p3}, Lcom/android/contacts/RecipientsActivity;->getPhoneNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, phoneNumber:Ljava/lang/String;
    invoke-static {p3, v3}, Lcom/android/contacts/RecipientsActivity;->getName(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, name:Ljava/lang/String;
    invoke-static {p3}, Lcom/android/contacts/RecipientsActivity;->getContactId(Landroid/database/Cursor;)J

    move-result-wide v8

    .line 128
    .local v8, contactId:J
    const/4 v5, 0x1

    .line 129
    .local v5, isShowName:Z
    invoke-interface {p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-static {p3}, Lcom/android/contacts/RecipientsActivity;->getContactId(Landroid/database/Cursor;)J

    move-result-wide v10

    .line 131
    .local v10, preContactId:J
    cmp-long v0, v10, v8

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move v5, v0

    .line 133
    .end local v10           #preContactId:J
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/RecipientsGroupActivity;

    #getter for: Lcom/android/contacts/RecipientsGroupActivity;->mCheckedItems:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/contacts/RecipientsGroupActivity;->access$000(Lcom/android/contacts/RecipientsGroupActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/RecipientsGroupActivity;

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/RecipientsActivity;->bindChildView(Ljava/util/Map;Landroid/view/View;ILjava/lang/String;Ljava/lang/String;ZILandroid/content/Context;)V

    .line 135
    return-void

    .line 131
    .restart local v10       #preContactId:J
    :cond_1
    const/4 v0, 0x1

    move v5, v0

    goto :goto_0
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"

    .prologue
    const/4 v7, 0x1

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/RecipientsGroupActivity$GroupViewHolder;

    .line 140
    .local v2, vh:Lcom/android/contacts/RecipientsGroupActivity$GroupViewHolder;
    iget-object v3, v2, Lcom/android/contacts/RecipientsGroupActivity$GroupViewHolder;->mName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/RecipientsGroupActivity;

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/contacts/model/GroupList;->translateGroupName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 146
    .local v1, position:Ljava/lang/Integer;
    iget-object v3, v2, Lcom/android/contacts/RecipientsGroupActivity$GroupViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 147
    iget-object v3, v2, Lcom/android/contacts/RecipientsGroupActivity$GroupViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/RecipientsGroupActivity;

    #getter for: Lcom/android/contacts/RecipientsGroupActivity;->mCheckedGroups:Ljava/util/Set;
    invoke-static {v4}, Lcom/android/contacts/RecipientsGroupActivity;->access$100(Lcom/android/contacts/RecipientsGroupActivity;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 148
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;->getChildrenCount(I)I

    move-result v0

    .line 149
    .local v0, count:I
    iget-object v3, v2, Lcom/android/contacts/RecipientsGroupActivity$GroupViewHolder;->mCount:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/RecipientsGroupActivity;

    invoke-virtual {v4}, Lcom/android/contacts/RecipientsGroupActivity;->getResources()Landroid/content/res/Resources;

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

    .line 150
    return-void
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 9
    .parameter "groupCursor"

    .prologue
    const/4 v8, -0x1

    .line 108
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 109
    .local v6, groupId:Ljava/lang/Long;
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "group"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "numbers"

    const-string v4, "true"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "_id"

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 114
    .local v1, phoneNumbersUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 115
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/RecipientsGroupActivity;

    invoke-virtual {v0}, Lcom/android/contacts/RecipientsGroupActivity;->getTabParent()Lcom/android/contacts/RecipientsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/RecipientsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "data2"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 116
    .local v7, type:I
    if-eq v7, v8, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data2="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/RecipientsGroupActivity;

    sget-object v2, Lcom/android/contacts/RecipientsActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "sort_key"

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/RecipientsGroupActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"
    .parameter "parent"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;->mInflator:Landroid/view/LayoutInflater;

    invoke-static {v0, p4}, Lcom/android/contacts/RecipientsActivity;->newChildView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method protected newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"
    .parameter "parent"

    .prologue
    .line 159
    iget-object v2, p0, Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;->mInflator:Landroid/view/LayoutInflater;

    const v3, 0x7f030018

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 160
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/android/contacts/RecipientsGroupActivity$GroupViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/contacts/RecipientsGroupActivity$GroupViewHolder;-><init>(Lcom/android/contacts/RecipientsGroupActivity$1;)V

    .line 161
    .local v0, holder:Lcom/android/contacts/RecipientsGroupActivity$GroupViewHolder;
    const v2, 0x7f070046

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/contacts/RecipientsGroupActivity$GroupViewHolder;->mName:Landroid/widget/TextView;

    .line 162
    const v2, 0x7f070076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/contacts/RecipientsGroupActivity$GroupViewHolder;->mCount:Landroid/widget/TextView;

    .line 163
    const v2, 0x7f070077

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/android/contacts/RecipientsGroupActivity$GroupViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 164
    iget-object v2, v0, Lcom/android/contacts/RecipientsGroupActivity$GroupViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 166
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    .line 171
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    move-object v1, v0

    .line 172
    .local v1, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    .line 173
    .local v6, isChecked:Z
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 175
    .local v4, groupPosition:I
    if-eqz v6, :cond_0

    .line 176
    iget-object v9, p0, Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/RecipientsGroupActivity;

    #getter for: Lcom/android/contacts/RecipientsGroupActivity;->mCheckedGroups:Ljava/util/Set;
    invoke-static {v9}, Lcom/android/contacts/RecipientsGroupActivity;->access$100(Lcom/android/contacts/RecipientsGroupActivity;)Ljava/util/Set;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;->getChildrenCount(I)I

    move-result v2

    .line 182
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 183
    invoke-virtual {p0, v4, v5}, Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v3

    .line 184
    .local v3, cursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/contacts/RecipientsActivity;->getPhoneNumber(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    .line 185
    .local v8, number:Ljava/lang/String;
    const/4 v9, 0x2

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/RecipientsGroupActivity;

    #getter for: Lcom/android/contacts/RecipientsGroupActivity;->mParentActivity:Lcom/android/contacts/RecipientsActivity;
    invoke-static {v9}, Lcom/android/contacts/RecipientsGroupActivity;->access$300(Lcom/android/contacts/RecipientsGroupActivity;)Lcom/android/contacts/RecipientsActivity;

    move-result-object v9

    invoke-virtual {v9, v8, v7, v6}, Lcom/android/contacts/RecipientsActivity;->onRecipientChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 182
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 178
    .end local v2           #count:I
    .end local v3           #cursor:Landroid/database/Cursor;
    .end local v5           #i:I
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #number:Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/RecipientsGroupActivity;

    #getter for: Lcom/android/contacts/RecipientsGroupActivity;->mCheckedGroups:Ljava/util/Set;
    invoke-static {v9}, Lcom/android/contacts/RecipientsGroupActivity;->access$100(Lcom/android/contacts/RecipientsGroupActivity;)Ljava/util/Set;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    .restart local v2       #count:I
    .restart local v5       #i:I
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/RecipientsGroupActivity;

    invoke-virtual {v9}, Lcom/android/contacts/RecipientsGroupActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v9

    iget-object v10, p0, Lcom/android/contacts/RecipientsGroupActivity$GroupListAdapter;->this$0:Lcom/android/contacts/RecipientsGroupActivity;

    #getter for: Lcom/android/contacts/RecipientsGroupActivity;->mCheckedItems:Ljava/util/Map;
    invoke-static {v10}, Lcom/android/contacts/RecipientsGroupActivity;->access$000(Lcom/android/contacts/RecipientsGroupActivity;)Ljava/util/Map;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/contacts/RecipientsActivity;->refreshChildrenCheckedStatus(Landroid/view/ViewGroup;Ljava/util/Map;)V

    .line 190
    return-void
.end method
