.class public Lcom/android/contacts/model/GoogleSource;
.super Lcom/android/contacts/model/FallbackSource;
.source "GoogleSource.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "resPackageName"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/contacts/model/FallbackSource;-><init>()V

    .line 46
    const-string v0, "com.google"

    iput-object v0, p0, Lcom/android/contacts/model/ContactsSource;->accountType:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/model/ContactsSource;->resPackageName:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/android/contacts/model/ContactsSource;->summaryResPackageName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static final attemptMyContactsMembership(Lcom/android/contacts/model/EntityDelta;Landroid/content/Context;)V
    .locals 5
    .parameter "state"
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 81
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    .line 82
    .local v2, stateValues:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v2, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setFromTemplate(Z)V

    .line 83
    const-string v3, "account_name"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, accountName:Ljava/lang/String;
    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, accountType:Ljava/lang/String;
    invoke-static {p0, v0, v1, p1, v4}, Lcom/android/contacts/model/GoogleSource;->attemptMyContactsMembership(Lcom/android/contacts/model/EntityDelta;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 86
    return-void
.end method

.method private static final attemptMyContactsMembership(Lcom/android/contacts/model/EntityDelta;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 10
    .parameter "state"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "context"
    .parameter "allowRecur"

    .prologue
    .line 101
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 103
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "should_sync"

    aput-object v4, v2, v3

    const-string v3, "account_name =? AND account_type =?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 108
    .local v3, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 109
    .local v4, myContactsExists:Z
    const-wide/16 v1, -0x1

    .line 110
    .local v1, assignToGroupId:J
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 111
    const-string v5, "System Group: My Contacts"

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    const/4 v4, 0x1

    .line 114
    :cond_1
    if-eqz v4, :cond_2

    const-wide/16 v5, -0x1

    cmp-long v5, v1, v5

    if-nez v5, :cond_2

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_2

    .line 115
    const/4 v1, 0x1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    .end local v1           #assignToGroupId:J
    move-result v1

    int-to-long v1, v1

    .line 118
    .restart local v1       #assignToGroupId:J
    :cond_2
    if-eqz v4, :cond_0

    const-wide/16 v5, -0x1

    cmp-long v5, v1, v5

    if-eqz v5, :cond_0

    .line 124
    :cond_3
    if-eqz v4, :cond_5

    if-nez p0, :cond_5

    .line 179
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #assignToGroupId:J
    .end local v4           #myContactsExists:Z
    .end local p1
    .end local p2
    .end local p4
    :cond_4
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 181
    return-void

    .line 128
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #assignToGroupId:J
    .restart local v4       #myContactsExists:Z
    .restart local p1
    .restart local p2
    .restart local p4
    :cond_5
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 129
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "mimetype"

    const-string v7, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    if-nez v4, :cond_7

    .line 133
    new-instance v1, Landroid/content/ContentValues;

    .end local v1           #assignToGroupId:J
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 134
    .local v1, newGroup:Landroid/content/ContentValues;
    const-string v2, "title"

    const-string v4, "System Group: My Contacts"

    .end local v4           #myContactsExists:Z
    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v2, "account_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v2, "account_type"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v2, "system_id"

    const-string v4, "Contacts"

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v2, "group_visible"

    const-string v4, "1"

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v2, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v4, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v6, "title=? AND account_name=? AND account_type=?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "System Group: My Contacts"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    aput-object p2, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v4, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .end local v1           #newGroup:Landroid/content/ContentValues;
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :try_start_1
    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    .line 156
    .local v0, results:[Landroid/content/ContentProviderResult;
    const-string v1, "data1"

    const/4 v2, 0x1

    aget-object v0, v0, v2

    .end local v0           #results:[Landroid/content/ContentProviderResult;
    .end local v2           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    .end local p1
    .end local p2
    :cond_6
    :goto_1
    if-eqz p0, :cond_4

    .line 176
    :try_start_2
    invoke-static {v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 179
    .end local v5           #values:Landroid/content/ContentValues;
    .end local p0
    .end local p4
    :catchall_0
    move-exception p0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw p0

    .line 157
    .restart local v5       #values:Landroid/content/ContentValues;
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p4
    :catch_0
    move-exception p0

    .line 158
    .local p0, e:Landroid/os/RemoteException;
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .end local p1
    const-string p2, "Problem querying for groups"

    .end local p2
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 159
    .local p0, state:Lcom/android/contacts/model/EntityDelta;
    .restart local p1
    .restart local p2
    :catch_1
    move-exception v0

    .line 161
    .local v0, e:Landroid/content/OperationApplicationException;
    if-eqz p4, :cond_4

    .line 162
    const/4 p4, 0x0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/contacts/model/GoogleSource;->attemptMyContactsMembership(Lcom/android/contacts/model/EntityDelta;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 168
    .local v0, resolver:Landroid/content/ContentResolver;
    .local v1, assignToGroupId:J
    .restart local v4       #myContactsExists:Z
    :cond_7
    const-wide/16 p1, -0x1

    cmp-long p1, v1, p1

    if-eqz p1, :cond_6

    .line 169
    .end local p1
    const-string p1, "data1"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .end local p2
    invoke-virtual {v5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static final createMyContactsIfNotExist(Landroid/accounts/Account;Landroid/content/Context;)V
    .locals 4
    .parameter "account"
    .parameter "context"

    .prologue
    .line 89
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/contacts/model/GoogleSource;->attemptMyContactsMembership(Lcom/android/contacts/model/EntityDelta;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 90
    return-void
.end method


# virtual methods
.method protected inflate(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "inflateLevel"

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/GoogleSource;->inflateStructuredName(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/GoogleSource;->inflateNickname(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/GoogleSource;->inflatePhone(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/GoogleSource;->inflateEmail(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/GoogleSource;->inflateStructuredPostal(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/GoogleSource;->inflateOrganization(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/GoogleSource;->inflateIm(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/GoogleSource;->inflateGroup(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/GoogleSource;->inflatePhoto(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/GoogleSource;->inflateNote(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/GoogleSource;->inflateWebsite(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/GoogleSource;->inflateEvent(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/GoogleSource;->inflateSipAddress(Landroid/content/Context;I)Lcom/android/contacts/model/ContactsSource$DataKind;

    .line 70
    invoke-virtual {p0, p2}, Lcom/android/contacts/model/GoogleSource;->setInflatedLevel(I)V

    .line 72
    return-void
.end method
