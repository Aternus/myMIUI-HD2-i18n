.class public Lcom/android/contacts/ui/ContactMembershipEditor;
.super Landroid/app/ListActivity;
.source "ContactMembershipEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ui/ContactMembershipEditor$1;,
        Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter;,
        Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;,
        Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter;

.field private mCheckedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Landroid/widget/ListView;

.field private mMergedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPickerMode:Z

.field private mRawContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountWithId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 361
    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/ui/ContactMembershipEditor;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mMergedGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/ui/ContactMembershipEditor;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private fillChanges()V
    .locals 13

    .prologue
    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v0, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithId;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v8, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithId;>;"
    iget-object v9, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mMergedGroups:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;

    .line 236
    .local v6, mergedGroup:Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;
    iget-boolean v9, v6, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->changed:Z

    if-eqz v9, :cond_0

    .line 240
    iget-object v9, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mRawContacts:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/AccountWithId;

    .line 241
    .local v7, rawContact:Lcom/android/contacts/model/AccountWithId;
    invoke-direct {p0, v7, v6}, Lcom/android/contacts/ui/ContactMembershipEditor;->resolveCurrentAccountGroup(Lcom/android/contacts/model/AccountWithId;Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;)Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;

    move-result-object v1

    .line 242
    .local v1, group:Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;
    new-instance v4, Lcom/android/contacts/model/AccountWithId;

    iget-object v9, v1, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->accountName:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->accountType:Ljava/lang/String;

    iget-wide v11, v1, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->id:J

    invoke-direct {v4, v9, v10, v11, v12}, Lcom/android/contacts/model/AccountWithId;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 243
    .local v4, info:Lcom/android/contacts/model/AccountWithId;
    iget-boolean v9, v1, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->checked:Z

    if-eqz v9, :cond_1

    .line 244
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    .end local v1           #group:Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #info:Lcom/android/contacts/model/AccountWithId;
    .end local v6           #mergedGroup:Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;
    .end local v7           #rawContact:Lcom/android/contacts/model/AccountWithId;
    :cond_2
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 252
    .local v5, intent:Landroid/content/Intent;
    const-string v9, "extra_added_groups"

    invoke-virtual {v5, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 253
    const-string v9, "extra_removed_groups"

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 254
    const/4 v9, -0x1

    invoke-virtual {p0, v9, v5}, Lcom/android/contacts/ui/ContactMembershipEditor;->setResult(ILandroid/content/Intent;)V

    .line 255
    return-void
.end method

.method private isAccountVisible(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "accountName"
    .parameter "accountType"

    .prologue
    .line 206
    iget-object v2, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mRawContacts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithId;

    .line 207
    .local v0, account:Lcom/android/contacts/model/AccountWithId;
    iget-object v2, v0, Lcom/android/contacts/model/AccountWithId;->name:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/contacts/model/AccountWithId;->type:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    const/4 v2, 0x1

    .line 211
    .end local v0           #account:Lcom/android/contacts/model/AccountWithId;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private queryGroupInfo()V
    .locals 15

    .prologue
    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mMergedGroups:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mGroups:Ljava/util/ArrayList;

    .line 138
    const/4 v8, 0x0

    .line 141
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/ui/ContactMembershipEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "account_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "account_type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "system_id"

    aput-object v4, v2, v3

    const-string v3, "deleted=0"

    const/4 v4, 0x0

    const-string v5, "group_order ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 147
    if-eqz v8, :cond_9

    .line 148
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 149
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 150
    .local v14, title:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 153
    .local v13, systemId:Ljava/lang/String;
    const-string v0, "Contacts"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Starred in Android"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    new-instance v11, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;

    const/4 v0, 0x0

    invoke-direct {v11, v0}, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;-><init>(Lcom/android/contacts/ui/ContactMembershipEditor$1;)V

    .line 159
    .local v11, info:Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v11, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->id:J

    .line 160
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->accountName:Ljava/lang/String;

    .line 161
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->accountType:Ljava/lang/String;

    .line 162
    invoke-static {p0, v13, v14}, Lcom/android/contacts/model/GroupList;->translateGroupName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->name:Ljava/lang/String;

    .line 165
    iget-object v0, v11, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->accountName:Ljava/lang/String;

    iget-object v1, v11, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->accountType:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/ui/ContactMembershipEditor;->isAccountVisible(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mCheckedGroups:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mCheckedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 171
    .local v6, checkedId:J
    iget-wide v0, v11, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->id:J

    cmp-long v0, v6, v0

    if-nez v0, :cond_2

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->checked:Z

    .line 178
    .end local v6           #checkedId:J
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_3
    const/4 v9, 0x0

    .line 179
    .local v9, groupExist:Z
    iget-object v0, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mMergedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;

    .line 180
    .local v12, mergedGroupInfo:Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;
    iget-object v0, v12, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->mGroupInfo:Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;

    iget-object v0, v0, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->name:Ljava/lang/String;

    iget-object v1, v11, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 182
    iget-object v0, v12, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-boolean v0, v11, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->checked:Z

    if-eqz v0, :cond_5

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, v12, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->checked:Z

    .line 186
    :cond_5
    const/4 v9, 0x1

    goto :goto_1

    .line 190
    .end local v12           #mergedGroupInfo:Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;
    :cond_6
    if-nez v9, :cond_0

    .line 191
    new-instance v12, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;

    const/4 v0, 0x0

    invoke-direct {v12, v0}, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;-><init>(Lcom/android/contacts/ui/ContactMembershipEditor$1;)V

    .line 192
    .restart local v12       #mergedGroupInfo:Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;
    iput-object v11, v12, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->mGroupInfo:Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;

    .line 193
    iget-object v0, v12, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-boolean v0, v11, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->checked:Z

    iput-boolean v0, v12, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->checked:Z

    .line 195
    iget-object v0, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mMergedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 201
    .end local v9           #groupExist:Z
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #info:Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;
    .end local v12           #mergedGroupInfo:Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;
    .end local v13           #systemId:Ljava/lang/String;
    .end local v14           #title:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 198
    :cond_8
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :cond_9
    if-eqz v8, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 203
    :cond_a
    return-void
.end method

.method private queryRawContactInfo(J)V
    .locals 10
    .parameter "contactId"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mRawContacts:Ljava/util/ArrayList;

    .line 114
    invoke-virtual {p0}, Lcom/android/contacts/ui/ContactMembershipEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "account_name"

    aput-object v3, v2, v8

    const-string v3, "account_type"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 120
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 121
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    new-instance v7, Lcom/android/contacts/model/AccountWithId;

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->ensureNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/android/contacts/model/AccountWithId;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 126
    .local v7, info:Lcom/android/contacts/model/AccountWithId;
    iget-object v0, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mRawContacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 130
    .end local v7           #info:Lcom/android/contacts/model/AccountWithId;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_2
    return-void
.end method

.method private resolveCurrentAccountGroup(Lcom/android/contacts/model/AccountWithId;Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;)Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;
    .locals 7
    .parameter "rawContact"
    .parameter "mergedGroup"

    .prologue
    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, group:Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;
    iget-object v5, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;

    .line 310
    .local v1, groupInfo:Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;
    iget-object v5, v1, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->name:Ljava/lang/String;

    iget-object v6, p2, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->mGroupInfo:Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;

    iget-object v6, v6, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->name:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 311
    move-object v0, v1

    .line 312
    iget-boolean v5, p2, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->checked:Z

    iput-boolean v5, v0, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->checked:Z

    .line 318
    .end local v1           #groupInfo:Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;
    :cond_1
    if-nez v0, :cond_3

    .line 319
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 320
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "title"

    iget-object v6, p2, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->mGroupInfo:Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;

    iget-object v6, v6, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v5, "account_name"

    iget-object v6, p1, Lcom/android/contacts/model/AccountWithId;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v5, "account_type"

    iget-object v6, p1, Lcom/android/contacts/model/AccountWithId;->type:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v5, "group_visible"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/android/contacts/ui/ContactMembershipEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 326
    .local v3, uri:Landroid/net/Uri;
    if-nez v3, :cond_2

    .line 327
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unexpected group insert"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 330
    :cond_2
    new-instance v0, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;

    .end local v0           #group:Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;
    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;-><init>(Lcom/android/contacts/ui/ContactMembershipEditor$1;)V

    .line 331
    .restart local v0       #group:Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->id:J

    .line 332
    iget-object v5, p2, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->mGroupInfo:Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;

    iget-object v5, v5, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->name:Ljava/lang/String;

    iput-object v5, v0, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->name:Ljava/lang/String;

    .line 333
    iget-object v5, p1, Lcom/android/contacts/model/AccountWithId;->name:Ljava/lang/String;

    iput-object v5, v0, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->accountName:Ljava/lang/String;

    .line 334
    iget-object v5, p1, Lcom/android/contacts/model/AccountWithId;->type:Ljava/lang/String;

    iput-object v5, v0, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->accountType:Ljava/lang/String;

    .line 335
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->checked:Z

    .line 338
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_3
    return-object v0
.end method

.method private saveChanges()V
    .locals 12

    .prologue
    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v0, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v6, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mRawContacts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/AccountWithId;

    .line 260
    .local v5, rawContact:Lcom/android/contacts/model/AccountWithId;
    iget-object v6, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mMergedGroups:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;

    .line 261
    .local v4, mergedGroup:Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;
    iget-boolean v6, v4, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->changed:Z

    if-eqz v6, :cond_1

    .line 265
    invoke-direct {p0, v5, v4}, Lcom/android/contacts/ui/ContactMembershipEditor;->resolveCurrentAccountGroup(Lcom/android/contacts/model/AccountWithId;Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;)Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;

    move-result-object v1

    .line 269
    .local v1, group:Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;
    iget-object v6, v1, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->accountName:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/contacts/model/AccountWithId;->name:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->accountType:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/contacts/model/AccountWithId;->type:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 271
    iget-boolean v6, v1, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->checked:Z

    if-eqz v6, :cond_2

    .line 273
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "raw_contact_id"

    iget-wide v8, v5, Lcom/android/contacts/model/AccountWithId;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "data1"

    iget-wide v8, v1, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    :cond_2
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    const-string v7, "%s=\'%s\' AND %s=%d AND %s=\'%s\'"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "mimetype"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "vnd.android.cursor.item/group_membership"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, "raw_contact_id"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-wide v10, v5, Lcom/android/contacts/model/AccountWithId;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "data1"

    aput-object v10, v8, v9

    const/4 v9, 0x5

    iget-wide v10, v1, Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 298
    .end local v1           #group:Lcom/android/contacts/ui/ContactMembershipEditor$GroupInfo;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #mergedGroup:Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;
    .end local v5           #rawContact:Lcom/android/contacts/model/AccountWithId;
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/ui/ContactMembershipEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "com.android.contacts"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    const/4 v6, -0x1

    :goto_2
    invoke-virtual {p0, v6}, Lcom/android/contacts/ui/ContactMembershipEditor;->setResult(I)V

    .line 304
    return-void

    .line 303
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 300
    :catch_0
    move-exception v6

    goto :goto_1

    .line 299
    :catch_1
    move-exception v6

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 228
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/ui/ContactMembershipEditor;->finish()V

    .line 229
    return-void

    .line 217
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mPickerMode:Z

    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/android/contacts/ui/ContactMembershipEditor;->fillChanges()V

    goto :goto_0

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/ui/ContactMembershipEditor;->saveChanges()V

    goto :goto_0

    .line 225
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/ContactMembershipEditor;->setResult(I)V

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x7f07001c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    const-string v7, "extra_contact_id"

    const-string v5, "extra_accounts"

    .line 73
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/contacts/ui/ContactMembershipEditor;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 76
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "extra_check_groups"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mCheckedGroups:Ljava/util/ArrayList;

    .line 77
    const-string v4, "extra_accounts"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mPickerMode:Z

    .line 79
    const-string v4, "extra_accounts"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mRawContacts:Ljava/util/ArrayList;

    .line 85
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mRawContacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 86
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Contact doesn\'t exist!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    :cond_1
    const-string v4, "extra_contact_id"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    const-string v4, "extra_contact_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v7, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 82
    .local v0, contactId:J
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/ui/ContactMembershipEditor;->queryRawContactInfo(J)V

    goto :goto_0

    .line 89
    .end local v0           #contactId:J
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/ui/ContactMembershipEditor;->queryGroupInfo()V

    .line 91
    const v4, 0x7f03001b

    invoke-virtual {p0, v4}, Lcom/android/contacts/ui/ContactMembershipEditor;->setContentView(I)V

    .line 93
    const v4, 0x7f0700a6

    invoke-virtual {p0, v4}, Lcom/android/contacts/ui/ContactMembershipEditor;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 94
    .local v3, mainHeader:Landroid/widget/TextView;
    const v4, 0x7f0b0106

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 96
    invoke-virtual {p0}, Lcom/android/contacts/ui/ContactMembershipEditor;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mInflater:Landroid/view/LayoutInflater;

    .line 97
    invoke-virtual {p0}, Lcom/android/contacts/ui/ContactMembershipEditor;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mList:Landroid/widget/ListView;

    .line 98
    iget-object v4, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    iget-object v4, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 101
    new-instance v4, Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter;-><init>(Lcom/android/contacts/ui/ContactMembershipEditor;Lcom/android/contacts/ui/ContactMembershipEditor$1;)V

    iput-object v4, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mAdapter:Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter;

    .line 102
    iget-object v4, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mAdapter:Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    const v4, 0x7f0700a5

    invoke-virtual {p0, v4}, Lcom/android/contacts/ui/ContactMembershipEditor;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 106
    const v4, 0x7f070048

    invoke-virtual {p0, v4}, Lcom/android/contacts/ui/ContactMembershipEditor;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 107
    const v4, 0x7f07001c

    invoke-virtual {p0, v4}, Lcom/android/contacts/ui/ContactMembershipEditor;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v4, 0x7f07001d

    invoke-virtual {p0, v4}, Lcom/android/contacts/ui/ContactMembershipEditor;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 350
    iget-object v2, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    .line 352
    iget-object v2, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mAdapter:Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter;

    invoke-virtual {v2, p3}, Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;

    .line 353
    .local v0, info:Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;
    iget-boolean v2, v0, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->checked:Z

    if-nez v2, :cond_0

    move v2, v4

    :goto_0
    iput-boolean v2, v0, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->checked:Z

    .line 354
    iget-boolean v2, v0, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->changed:Z

    if-nez v2, :cond_1

    move v2, v4

    :goto_1
    iput-boolean v2, v0, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->changed:Z

    .line 356
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter$ViewHolder;

    .line 357
    .local v1, vh:Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter$ViewHolder;
    iget-object v2, v1, Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter$ViewHolder;->zCheckBox:Landroid/widget/CheckBox;

    iget-boolean v3, v0, Lcom/android/contacts/ui/ContactMembershipEditor$MergedGroupInfo;->checked:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 358
    iget-object v2, p0, Lcom/android/contacts/ui/ContactMembershipEditor;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 359
    return-void

    .end local v1           #vh:Lcom/android/contacts/ui/ContactMembershipEditor$MembershipAdapter$ViewHolder;
    :cond_0
    move v2, v3

    .line 353
    goto :goto_0

    :cond_1
    move v2, v3

    .line 354
    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 343
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/ContactMembershipEditor;->setResult(I)V

    .line 345
    invoke-virtual {p0}, Lcom/android/contacts/ui/ContactMembershipEditor;->finish()V

    .line 346
    return-void
.end method
