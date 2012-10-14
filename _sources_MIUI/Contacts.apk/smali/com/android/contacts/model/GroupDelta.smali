.class public Lcom/android/contacts/model/GroupDelta;
.super Lcom/android/contacts/model/EntityDelta$ValuesDelta;
.source "GroupDelta.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/GroupDelta$GroupsQuery;
    }
.end annotation


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field private final mContacts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field private mDisplayName:Ljava/lang/String;

.field private mDisplayOnlyPhones:Z

.field private mIsDataReady:Z

.field private final mMostContactedNoPhotoId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mMostContactedPhotoId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final mResolver:Landroid/content/ContentResolver;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 5
    .parameter "context"
    .parameter "before"
    .parameter "after"

    .prologue
    const/4 v4, 0x4

    .line 150
    invoke-direct {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;-><init>()V

    .line 46
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/model/GroupDelta;->mContacts:Ljava/util/HashSet;

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/contacts/model/GroupDelta;->mMostContactedNoPhotoId:Ljava/util/ArrayList;

    .line 48
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/contacts/model/GroupDelta;->mMostContactedPhotoId:Ljava/util/ArrayList;

    .line 151
    iput-object p1, p0, Lcom/android/contacts/model/GroupDelta;->mContext:Landroid/content/Context;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/model/GroupDelta;->mResolver:Landroid/content/ContentResolver;

    .line 154
    iget-object v3, p0, Lcom/android/contacts/model/GroupDelta;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 155
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "only_phones"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/model/GroupDelta;->mDisplayOnlyPhones:Z

    .line 159
    iput-object p2, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 160
    if-eqz p3, :cond_1

    move-object v3, p3

    :goto_0
    iput-object v3, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    .line 162
    const-string v3, "account_name"

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, name:Ljava/lang/String;
    const-string v3, "account_type"

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, type:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/contacts/model/GroupDelta;->mAccount:Landroid/accounts/Account;

    .line 167
    :cond_0
    return-void

    .line 160
    .end local v0           #name:Ljava/lang/String;
    .end local v2           #type:Ljava/lang/String;
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    goto :goto_0
.end method

.method private ensureDataIsReady()V
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/android/contacts/model/GroupDelta;->mIsDataReady:Z

    if-nez v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/android/contacts/model/GroupDelta;->queryContactList()V

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/model/GroupDelta;->mIsDataReady:Z

    .line 320
    :cond_0
    return-void
.end method

.method public static fromId(Landroid/content/Context;JZ)Lcom/android/contacts/model/GroupDelta;
    .locals 10
    .parameter "context"
    .parameter "groupId"
    .parameter "displayOnlyPhones"

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    invoke-static {p3}, Lcom/android/contacts/model/GroupDelta;->getGroupQueryProjection(Z)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s=\'%d\'"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v5, v8

    const/4 v8, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 119
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move-object v0, v4

    .line 132
    :goto_0
    return-object v0

    .line 124
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-static {v6, p3}, Lcom/android/contacts/model/GroupDelta;->getContentValues(Landroid/database/Cursor;Z)Landroid/content/ContentValues;

    move-result-object v7

    .line 126
    .local v7, values:Landroid/content/ContentValues;
    const/4 v0, 0x0

    invoke-static {p0, v7, v0}, Lcom/android/contacts/model/GroupDelta;->fromValues(Landroid/content/Context;Landroid/content/ContentValues;Landroid/content/ContentValues;)Lcom/android/contacts/model/GroupDelta;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #values:Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v4

    .line 132
    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static fromValues(Landroid/content/Context;Landroid/content/ContentValues;Landroid/content/ContentValues;)Lcom/android/contacts/model/GroupDelta;
    .locals 3
    .parameter "context"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 136
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 138
    .local v0, values:Landroid/content/ContentValues;
    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "Starred in Android"

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    new-instance v1, Lcom/android/contacts/model/ImportantGroup;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/contacts/model/ImportantGroup;-><init>(Landroid/content/Context;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 143
    :goto_1
    return-object v1

    .end local v0           #values:Landroid/content/ContentValues;
    :cond_0
    move-object v0, p2

    .line 136
    goto :goto_0

    .line 143
    .restart local v0       #values:Landroid/content/ContentValues;
    :cond_1
    new-instance v1, Lcom/android/contacts/model/GroupDelta;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/contacts/model/GroupDelta;-><init>(Landroid/content/Context;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    goto :goto_1
.end method

.method static getContentValues(Landroid/database/Cursor;Z)Landroid/content/ContentValues;
    .locals 2
    .parameter "cursor"
    .parameter "displayOnlyPhones"

    .prologue
    .line 89
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 90
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_id"

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 91
    const-string v1, "account_name"

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 92
    const-string v1, "account_type"

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 93
    const-string v1, "title"

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 94
    const-string v1, "group_visible"

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 95
    const-string v1, "system_id"

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 96
    const-string v1, "deleted"

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 97
    const-string v1, "should_sync"

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 98
    const-string v1, "group_order"

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 99
    const-string v1, "custom_ringtone"

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 101
    if-eqz p1, :cond_0

    .line 102
    const-string v1, "summ_phones"

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 107
    :goto_0
    return-object v0

    .line 104
    :cond_0
    const-string v1, "summ_count"

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static getGroupQueryProjection(Z)[Ljava/lang/String;
    .locals 1
    .parameter "displayOnlyPhones"

    .prologue
    .line 85
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/contacts/model/GroupDelta$GroupsQuery;->PROJECTION_PHONES_ONLY:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/contacts/model/GroupDelta$GroupsQuery;->PROJECTION:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addGroupMembers(Ljava/util/Collection;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/GroupDelta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, members:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    .local p2, mMergedGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/GroupDelta;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/contacts/model/GroupDelta;->changeGroupMembers(Ljava/util/Collection;Ljava/util/ArrayList;Z)V

    .line 239
    return-void
.end method

.method protected applyOperation(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v4, "Problem changing contact\'s membership"

    const-string v3, "GroupDelta"

    .line 522
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/model/GroupDelta;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 528
    :goto_0
    return-void

    .line 523
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 524
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "GroupDelta"

    const-string v1, "Problem changing contact\'s membership"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 525
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 526
    .local v0, e:Landroid/content/OperationApplicationException;
    const-string v1, "GroupDelta"

    const-string v1, "Problem changing contact\'s membership"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public beforeExists()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public buildDiff()Landroid/content/ContentProviderOperation;
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v6, "%s=\'%d\'"

    .line 432
    invoke-virtual {p0}, Lcom/android/contacts/model/GroupDelta;->isNoop()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v3

    .line 447
    :goto_0
    return-object v0

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/model/GroupDelta;->isUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "%s=\'%d\'"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "_id"

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/android/contacts/model/GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    goto :goto_0

    .line 441
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/model/GroupDelta;->isDelete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "%s=\'%d\'"

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "_id"

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/android/contacts/model/GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    goto :goto_0

    .line 446
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/model/GroupDelta;->isInsert()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 447
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    goto :goto_0

    .line 452
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected delete or insert"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected changeGroupMembers(Ljava/util/Collection;Ljava/util/ArrayList;Z)V
    .locals 20
    .parameter
    .parameter
    .parameter "add"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/GroupDelta;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, members:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    .local p2, mMergedGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/GroupDelta;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v10, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 250
    .local v9, id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/GroupDelta;->mResolver:Landroid/content/ContentResolver;

    move-object v14, v0

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v14 .. v16}, Lcom/android/contacts/ContactsUtils;->queryForRawContactInfoList(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;

    move-result-object v11

    .line 253
    .local v11, rawContactInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithId;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountWithId;

    .line 255
    .local v2, accountWithId:Lcom/android/contacts/model/AccountWithId;
    const-wide/16 v4, -0x1

    .line 256
    .local v4, groupId:J
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/GroupDelta;

    .line 258
    .local v3, groupDelta:Lcom/android/contacts/model/GroupDelta;
    iget-object v14, v3, Lcom/android/contacts/model/GroupDelta;->mAccount:Landroid/accounts/Account;

    if-nez v14, :cond_3

    .line 259
    iget-object v14, v2, Lcom/android/contacts/model/AccountWithId;->name:Ljava/lang/String;

    if-nez v14, :cond_1

    iget-object v14, v2, Lcom/android/contacts/model/AccountWithId;->type:Ljava/lang/String;

    if-nez v14, :cond_1

    .line 260
    invoke-virtual {v3}, Lcom/android/contacts/model/GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 271
    .end local v3           #groupDelta:Lcom/android/contacts/model/GroupDelta;
    :cond_2
    :goto_1
    const-wide/16 v14, 0x0

    cmp-long v14, v4, v14

    if-gez v14, :cond_5

    .line 272
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 273
    .local v13, values:Landroid/content/ContentValues;
    const-string v14, "title"

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/GroupDelta;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v14, "account_name"

    iget-object v15, v2, Lcom/android/contacts/model/AccountWithId;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v14, "account_type"

    iget-object v15, v2, Lcom/android/contacts/model/AccountWithId;->type:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v14, "system_id"

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/GroupDelta;->getSystemId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v14, "group_visible"

    const-string v15, "1"

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/GroupDelta;->mResolver:Landroid/content/ContentResolver;

    move-object v14, v0

    sget-object v15, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14, v15, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 279
    .local v12, uri:Landroid/net/Uri;
    if-nez v12, :cond_4

    .line 280
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v15, "Unexpected group insert"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 263
    .end local v12           #uri:Landroid/net/Uri;
    .end local v13           #values:Landroid/content/ContentValues;
    .restart local v3       #groupDelta:Lcom/android/contacts/model/GroupDelta;
    :cond_3
    iget-object v14, v3, Lcom/android/contacts/model/GroupDelta;->mAccount:Landroid/accounts/Account;

    iget-object v14, v14, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v15, v2, Lcom/android/contacts/model/AccountWithId;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    iget-object v14, v3, Lcom/android/contacts/model/GroupDelta;->mAccount:Landroid/accounts/Account;

    iget-object v14, v14, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v15, v2, Lcom/android/contacts/model/AccountWithId;->type:Ljava/lang/String;

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 265
    invoke-virtual {v3}, Lcom/android/contacts/model/GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 266
    goto :goto_1

    .line 283
    .end local v3           #groupDelta:Lcom/android/contacts/model/GroupDelta;
    .restart local v12       #uri:Landroid/net/Uri;
    .restart local v13       #values:Landroid/content/ContentValues;
    :cond_4
    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/GroupDelta;->mContext:Landroid/content/Context;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-static {v14, v4, v5, v15}, Lcom/android/contacts/model/GroupDelta;->fromId(Landroid/content/Context;JZ)Lcom/android/contacts/model/GroupDelta;

    move-result-object v3

    .line 285
    .restart local v3       #groupDelta:Lcom/android/contacts/model/GroupDelta;
    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .end local v3           #groupDelta:Lcom/android/contacts/model/GroupDelta;
    .end local v12           #uri:Landroid/net/Uri;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_5
    if-eqz p3, :cond_6

    .line 289
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "raw_contact_id"

    move-object v0, v2

    iget-wide v0, v0, Lcom/android/contacts/model/AccountWithId;->id:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "mimetype"

    const-string v16, "vnd.android.cursor.item/group_membership"

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "data1"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 296
    :cond_6
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "%s=\'%d\' AND %s=\'%s\' AND %s=\'%d\'"

    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "raw_contact_id"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object v0, v2

    iget-wide v0, v0, Lcom/android/contacts/model/AccountWithId;->id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const-string v18, "mimetype"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    const-string v18, "vnd.android.cursor.item/group_membership"

    aput-object v18, v16, v17

    const/16 v17, 0x4

    const-string v18, "data1"

    aput-object v18, v16, v17

    const/16 v17, 0x5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 308
    .end local v2           #accountWithId:Lcom/android/contacts/model/AccountWithId;
    .end local v4           #groupId:J
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #id:Ljava/lang/Long;
    .end local v11           #rawContactInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithId;>;"
    :cond_7
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/GroupDelta;->applyOperation(Ljava/util/ArrayList;)V

    .line 309
    return-void
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/model/GroupDelta;->mIsDataReady:Z

    .line 313
    return-void
.end method

.method public getContactList()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/android/contacts/model/GroupDelta;->ensureDataIsReady()V

    .line 337
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/contacts/model/GroupDelta;->mContacts:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/contacts/model/GroupDelta;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/contacts/model/GroupDelta;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/contacts/model/GroupDelta;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/model/GroupDelta;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/GroupList;->translateGroupName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/GroupDelta;->mDisplayName:Ljava/lang/String;

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/GroupDelta;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getMostContactedNoPhotoId()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/android/contacts/model/GroupDelta;->ensureDataIsReady()V

    .line 347
    iget-object v0, p0, Lcom/android/contacts/model/GroupDelta;->mMostContactedNoPhotoId:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMostContactedPhotoId()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/android/contacts/model/GroupDelta;->ensureDataIsReady()V

    .line 342
    iget-object v0, p0, Lcom/android/contacts/model/GroupDelta;->mMostContactedPhotoId:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    const-string v0, "system_id"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCompletedUpdate()V
    .locals 5

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 463
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mAfter:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 466
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/model/GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_2

    .line 468
    iget-object v0, p0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->mBefore:Landroid/content/ContentValues;

    const-string v1, "_id"

    iget-object v2, p0, Lcom/android/contacts/model/GroupDelta;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "title"

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/GroupDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/model/GroupDelta;->mAccount:Landroid/accounts/Account;

    invoke-static {v2, v3, v4}, Lcom/android/contacts/ContactsUtils;->getGroupID(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 474
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/model/GroupDelta;->mDisplayName:Ljava/lang/String;

    .line 475
    return-void
.end method

.method protected queryContactList()V
    .locals 12

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/contacts/model/GroupDelta;->mContacts:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 390
    iget-object v0, p0, Lcom/android/contacts/model/GroupDelta;->mMostContactedPhotoId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 391
    iget-object v0, p0, Lcom/android/contacts/model/GroupDelta;->mMostContactedNoPhotoId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 393
    const-string v0, "_id"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/GroupDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 394
    .local v9, groupId:Ljava/lang/Long;
    if-nez v9, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/model/GroupDelta;->mDisplayOnlyPhones:Z

    if-eqz v0, :cond_3

    const-string v0, "has_phone_number=1"

    move-object v3, v0

    .line 402
    .local v3, selection:Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/model/GroupDelta;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_GROUP_ID_URI:Landroid/net/Uri;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "photo_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "times_contacted DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 410
    .local v8, contacts:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 411
    :cond_2
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 412
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 413
    .local v6, contactId:J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 414
    .local v10, photoId:J
    iget-object v0, p0, Lcom/android/contacts/model/GroupDelta;->mContacts:Ljava/util/HashSet;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 416
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/model/GroupDelta;->mMostContactedPhotoId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    .line 417
    iget-object v0, p0, Lcom/android/contacts/model/GroupDelta;->mMostContactedPhotoId:Ljava/util/ArrayList;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 399
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #contactId:J
    .end local v8           #contacts:Landroid/database/Cursor;
    .end local v10           #photoId:J
    :cond_3
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_1

    .line 418
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v6       #contactId:J
    .restart local v8       #contacts:Landroid/database/Cursor;
    .restart local v10       #photoId:J
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/model/GroupDelta;->mMostContactedNoPhotoId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 419
    iget-object v0, p0, Lcom/android/contacts/model/GroupDelta;->mMostContactedNoPhotoId:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 422
    .end local v6           #contactId:J
    .end local v10           #photoId:J
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public removeGroupMembers(Ljava/util/Collection;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/GroupDelta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, members:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    .local p2, mMergedGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/GroupDelta;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/contacts/model/GroupDelta;->changeGroupMembers(Ljava/util/Collection;Ljava/util/ArrayList;Z)V

    .line 243
    return-void
.end method

.method public sendSmsToGroup(Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/GroupDelta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 479
    .local p1, mMergedGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/GroupDelta;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .local v6, phoneList:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/GroupDelta;

    .line 483
    .local v2, groupDelta:Lcom/android/contacts/model/GroupDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/GroupDelta;->getContactList()Ljava/util/HashSet;

    move-result-object v1

    .line 484
    .local v1, contacts:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 485
    .local v0, contactId:Ljava/lang/Long;
    iget-object v7, p0, Lcom/android/contacts/model/GroupDelta;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/android/contacts/ContactsUtils;->queryPrimaryPhoneNumber(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 486
    .local v5, phone:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 487
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    const/16 v7, 0x3b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 493
    .end local v0           #contactId:Ljava/lang/Long;
    .end local v1           #contacts:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v2           #groupDelta:Lcom/android/contacts/model/GroupDelta;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #phone:Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 494
    iget-object v7, p0, Lcom/android/contacts/model/GroupDelta;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/contacts/ContactsUtils;->initiateSms(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 498
    :goto_1
    return-void

    .line 496
    :cond_3
    iget-object v7, p0, Lcom/android/contacts/model/GroupDelta;->mContext:Landroid/content/Context;

    const v8, 0x7f0b0150

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public setRingtoneToGroupMembers(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 12
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/GroupDelta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 501
    .local p2, mMergedGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/GroupDelta;>;"
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 502
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "custom_ringtone"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v5, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/GroupDelta;

    .line 507
    .local v2, groupDelta:Lcom/android/contacts/model/GroupDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/GroupDelta;->getContactList()Ljava/util/HashSet;

    move-result-object v1

    .line 508
    .local v1, contacts:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 509
    .local v0, contactId:Ljava/lang/Long;
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 516
    .end local v0           #contactId:Ljava/lang/Long;
    .end local v1           #contacts:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v2           #groupDelta:Lcom/android/contacts/model/GroupDelta;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/contacts/model/GroupDelta;->applyOperation(Ljava/util/ArrayList;)V

    .line 517
    return-void
.end method
