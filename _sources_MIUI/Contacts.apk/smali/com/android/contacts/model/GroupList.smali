.class public Lcom/android/contacts/model/GroupList;
.super Ljava/util/ArrayList;
.source "GroupList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/contacts/model/GroupDelta;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3223dc01f67a7818L


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeletedGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/GroupDelta;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayOnlyPhones:Z

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/model/GroupList;->mDeletedGroup:Ljava/util/ArrayList;

    .line 88
    iput-object p1, p0, Lcom/android/contacts/model/GroupList;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/model/GroupList;->mResolver:Landroid/content/ContentResolver;

    .line 90
    iget-object v1, p0, Lcom/android/contacts/model/GroupList;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "only_phones"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/model/GroupList;->mDisplayOnlyPhones:Z

    .line 95
    invoke-direct {p0}, Lcom/android/contacts/model/GroupList;->queryAllGroups()V

    .line 96
    return-void
.end method

.method private buildDiff()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v10, "group_order"

    .line 186
    invoke-virtual {p0}, Lcom/android/contacts/model/GroupList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int v1, v6, v7

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 187
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/GroupList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/GroupDelta;

    .line 188
    .local v0, group:Lcom/android/contacts/model/GroupDelta;
    const-string v6, "group_order"

    invoke-virtual {v0, v10}, Lcom/android/contacts/model/GroupDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 189
    .local v4, originalOrder:Ljava/lang/Long;
    if-eqz v4, :cond_0

    int-to-long v6, v1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 190
    :cond_0
    const-string v6, "group_order"

    invoke-virtual {v0, v10, v1}, Lcom/android/contacts/model/GroupDelta;->put(Ljava/lang/String;I)V

    .line 186
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 194
    .end local v0           #group:Lcom/android/contacts/model/GroupDelta;
    .end local v4           #originalOrder:Ljava/lang/Long;
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0}, Lcom/android/contacts/model/GroupList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/GroupDelta;

    .line 196
    .restart local v0       #group:Lcom/android/contacts/model/GroupDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/GroupDelta;->buildDiff()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 197
    .local v3, oper:Landroid/content/ContentProviderOperation;
    if-eqz v3, :cond_3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 199
    .end local v0           #group:Lcom/android/contacts/model/GroupDelta;
    .end local v3           #oper:Landroid/content/ContentProviderOperation;
    :cond_4
    iget-object v6, p0, Lcom/android/contacts/model/GroupList;->mDeletedGroup:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/GroupDelta;

    .line 200
    .restart local v0       #group:Lcom/android/contacts/model/GroupDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/GroupDelta;->buildDiff()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 201
    .restart local v3       #oper:Landroid/content/ContentProviderOperation;
    if-eqz v3, :cond_5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 203
    .end local v0           #group:Lcom/android/contacts/model/GroupDelta;
    .end local v3           #oper:Landroid/content/ContentProviderOperation;
    :cond_6
    return-object v5
.end method

.method private newGroup(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 4
    .parameter "account"
    .parameter "title"

    .prologue
    const/4 v3, 0x1

    .line 141
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 143
    .local v0, values:Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 144
    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    const-string v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "group_visible"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    const-string v1, "should_sync"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/model/GroupList;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/android/contacts/model/GroupDelta;->fromValues(Landroid/content/Context;Landroid/content/ContentValues;Landroid/content/ContentValues;)Lcom/android/contacts/model/GroupDelta;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/model/GroupList;->add(ILjava/lang/Object;)V

    .line 153
    return-void
.end method

.method private queryAllGroups()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 103
    iget-object v0, p0, Lcom/android/contacts/model/GroupList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/android/contacts/model/GroupList;->mDisplayOnlyPhones:Z

    invoke-static {v2}, Lcom/android/contacts/model/GroupDelta;->getGroupQueryProjection(Z)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "deleted=0 AND (system_id IS NULL OR system_id<>\'Contacts\') AND title<> \'Starred in Android\'"

    const-string v5, "group_order ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 110
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 128
    :goto_0
    return-void

    .line 115
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-boolean v0, p0, Lcom/android/contacts/model/GroupList;->mDisplayOnlyPhones:Z

    invoke-static {v6, v0}, Lcom/android/contacts/model/GroupDelta;->getContentValues(Landroid/database/Cursor;Z)Landroid/content/ContentValues;

    move-result-object v8

    .line 117
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "Starred in Android"

    const-string v1, "title"

    invoke-virtual {v8, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    new-instance v7, Lcom/android/contacts/model/ImportantGroup;

    iget-object v0, p0, Lcom/android/contacts/model/GroupList;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v7, v0, v8, v1}, Lcom/android/contacts/model/ImportantGroup;-><init>(Landroid/content/Context;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 119
    .local v7, group:Lcom/android/contacts/model/GroupDelta;
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v7}, Lcom/android/contacts/model/GroupList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 126
    .end local v7           #group:Lcom/android/contacts/model/GroupDelta;
    .end local v8           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 121
    .restart local v8       #values:Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    new-instance v7, Lcom/android/contacts/model/GroupDelta;

    iget-object v0, p0, Lcom/android/contacts/model/GroupList;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v7, v0, v8, v1}, Lcom/android/contacts/model/GroupDelta;-><init>(Landroid/content/Context;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 122
    .restart local v7       #group:Lcom/android/contacts/model/GroupDelta;
    invoke-virtual {p0, v7}, Lcom/android/contacts/model/GroupList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 126
    .end local v7           #group:Lcom/android/contacts/model/GroupDelta;
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static translateGroupName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "systemId"
    .parameter "title"

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, result:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 52
    const-string v1, "Contacts"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const v1, 0x7f0b0109

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 55
    :cond_0
    const-string v1, "Friends"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    const v1, 0x7f0b010a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_1
    const-string v1, "Family"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    const v1, 0x7f0b010b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_2
    const-string v1, "Coworkers"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    const v1, 0x7f0b010c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_3
    const-string v1, "Important"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    const v1, 0x7f0b010d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_4
    const-string v1, "Live Info"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    const v1, 0x7f0b010e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_5
    const-string v1, "White List"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 71
    const v1, 0x7f0b010f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_6
    const-string v1, "Black List"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 74
    const v1, 0x7f0b0110

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_7
    move-object v0, p1

    goto :goto_0

    .line 81
    :cond_8
    move-object v0, p2

    goto :goto_0
.end method


# virtual methods
.method public applyChanges()V
    .locals 8

    .prologue
    const-string v7, "Problem saving display groups"

    const-string v6, "GroupList"

    .line 162
    iget-object v4, p0, Lcom/android/contacts/model/GroupList;->mResolver:Landroid/content/ContentResolver;

    .line 166
    .local v4, resolver:Landroid/content/ContentResolver;
    :try_start_0
    invoke-direct {p0}, Lcom/android/contacts/model/GroupList;->buildDiff()Ljava/util/ArrayList;

    move-result-object v0

    .line 167
    .local v0, diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v5, "com.android.contacts"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 170
    invoke-virtual {p0}, Lcom/android/contacts/model/GroupList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/GroupDelta;

    .line 171
    .local v2, group:Lcom/android/contacts/model/GroupDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/GroupDelta;->onCompletedUpdate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 174
    .end local v0           #diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v2           #group:Lcom/android/contacts/model/GroupDelta;
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 175
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "GroupList"

    const-string v5, "Problem saving display groups"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .end local v1           #e:Landroid/os/RemoteException;
    :goto_1
    return-void

    .line 173
    .restart local v0       #diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/contacts/model/GroupList;->mDeletedGroup:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 176
    .end local v0           #diff:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 177
    .local v1, e:Landroid/content/OperationApplicationException;
    const-string v5, "GroupList"

    const-string v5, "Problem saving display groups"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public newGroups([Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 5
    .parameter "accounts"
    .parameter "title"

    .prologue
    .line 131
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_2

    .line 132
    :cond_0
    const/4 v4, 0x0

    invoke-direct {p0, v4, p2}, Lcom/android/contacts/model/GroupList;->newGroup(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 138
    :cond_1
    return-void

    .line 134
    :cond_2
    move-object v1, p1

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 135
    .local v0, account:Landroid/accounts/Account;
    invoke-direct {p0, v0, p2}, Lcom/android/contacts/model/GroupList;->newGroup(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeGroup(Lcom/android/contacts/model/GroupDelta;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/contacts/model/GroupList;->mDeletedGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {p1}, Lcom/android/contacts/model/GroupDelta;->markDeleted()V

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/GroupList;->remove(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method
