.class public Lcom/miui/milk/source/contact2/ContactManager;
.super Ljava/lang/Object;
.source "ContactManager.java"


# instance fields
.field protected COLUMN_ACCOUNT_NAME:Ljava/lang/String;

.field protected COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

.field protected COLUMN_CALL_INCOMING_PHOTO:Ljava/lang/String;

.field protected COLUMN_DELETED:Ljava/lang/String;

.field protected COLUMN_ID:Ljava/lang/String;

.field protected COLUMN_SOURCE_ID:Ljava/lang/String;

.field protected COLUMN_STARRED:Ljava/lang/String;

.field protected COLUMN_VERSION:Ljava/lang/String;

.field protected CONTENT_URI:Landroid/net/Uri;

.field protected mContext:Landroid/content/Context;

.field private mIsSync:Z

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "isSync"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->CONTENT_URI:Landroid/net/Uri;

    .line 46
    const-string v0, "_id"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ID:Ljava/lang/String;

    .line 47
    const-string v0, "account_type"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

    .line 48
    const-string v0, "account_name"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_NAME:Ljava/lang/String;

    .line 49
    const-string v0, "sourceid"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_SOURCE_ID:Ljava/lang/String;

    .line 50
    const-string v0, "deleted"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_DELETED:Ljava/lang/String;

    .line 51
    const-string v0, "version"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_VERSION:Ljava/lang/String;

    .line 52
    const-string v0, "starred"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_STARRED:Ljava/lang/String;

    .line 53
    const-string v0, "custom_call_incoming_photo"

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_CALL_INCOMING_PHOTO:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->mIsSync:Z

    .line 58
    iput-object p1, p0, Lcom/miui/milk/source/contact2/ContactManager;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->mResolver:Landroid/content/ContentResolver;

    .line 60
    iput-boolean p2, p0, Lcom/miui/milk/source/contact2/ContactManager;->mIsSync:Z

    .line 61
    return-void
.end method

.method private loadDataFields(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;J)V
    .locals 10
    .parameter "contact"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "ContactManager"

    .line 120
    const/4 v6, 0x0

    .line 122
    .local v6, cur:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "raw_contact_id= ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 124
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    const-string v0, "mimetype"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 128
    .local v8, mimeType:Ljava/lang/String;
    const-string v0, "ContactManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found a raw of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v0, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadNameField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V

    .line 157
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 163
    .end local v8           #mimeType:Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 167
    :cond_2
    return-void

    .line 132
    .restart local v8       #mimeType:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v0, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 133
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadNickNameField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 159
    .end local v8           #mimeType:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 160
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "ContactManager"

    const-string v1, "Cannot load contact "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot load contact"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 134
    .restart local v8       #mimeType:Ljava/lang/String;
    :cond_5
    :try_start_3
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 135
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadPhoneField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V

    goto :goto_0

    .line 136
    :cond_6
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 137
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadEmailField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V

    goto :goto_0

    .line 138
    :cond_7
    const-string v0, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 139
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadPhotoField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V

    goto :goto_0

    .line 140
    :cond_8
    const-string v0, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 141
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadOrganizationField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V

    goto :goto_0

    .line 142
    :cond_9
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 143
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadPostalAddressField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V

    goto :goto_0

    .line 144
    :cond_a
    const-string v0, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 145
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadEventField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V

    goto :goto_0

    .line 146
    :cond_b
    const-string v0, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 147
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadImField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 148
    :cond_c
    const-string v0, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 149
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadNoteField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 150
    :cond_d
    const-string v0, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 151
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadWebsiteField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 152
    :cond_e
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 153
    invoke-direct {p0, p1, v6}, Lcom/miui/milk/source/contact2/ContactManager;->loadGroupMembershipField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 155
    :cond_f
    const-string v0, "ContactManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring unknown row of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method private loadEmailField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 5
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 235
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Email;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Email$Builder;

    move-result-object v0

    .line 237
    .local v0, email:Lcom/miui/milk/model/ContactProtos2$Email$Builder;
    const-string v4, "data1"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, emailValue:Ljava/lang/String;
    const-string v4, "data2"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 239
    .local v2, emailType:I
    const-string v4, "data3"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, emailLabel:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 242
    invoke-virtual {v0, v3}, Lcom/miui/milk/model/ContactProtos2$Email$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Email$Builder;

    .line 246
    invoke-virtual {v0, v2}, Lcom/miui/milk/model/ContactProtos2$Email$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Email$Builder;

    .line 247
    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Email$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Email$Builder;

    .line 251
    :cond_0
    invoke-virtual {p1, v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addEmail(Lcom/miui/milk/model/ContactProtos2$Email$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 252
    :cond_1
    return-void
.end method

.method private loadEventField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 5
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 359
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Event;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Event$Builder;

    move-result-object v0

    .line 361
    .local v0, event:Lcom/miui/milk/model/ContactProtos2$Event$Builder;
    const-string v4, "data1"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, eventDate:Ljava/lang/String;
    const-string v4, "data2"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 363
    .local v3, eventType:I
    const-string v4, "data3"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, eventLabel:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 366
    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Event$Builder;

    .line 370
    invoke-virtual {v0, v3}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Event$Builder;

    .line 371
    if-eqz v2, :cond_0

    .line 372
    invoke-virtual {v0, v2}, Lcom/miui/milk/model/ContactProtos2$Event$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Event$Builder;

    .line 375
    :cond_0
    invoke-virtual {p1, v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addEvent(Lcom/miui/milk/model/ContactProtos2$Event$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 376
    :cond_1
    return-void
.end method

.method private loadGroupMembershipField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 7
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 445
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->newBuilder()Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

    move-result-object v4

    .line 447
    .local v4, groupMembership:Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;
    const-string v5, "data1"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, groupId:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 450
    new-instance v3, Lcom/miui/milk/source/contact2/GroupManager;

    iget-object v5, p0, Lcom/miui/milk/source/contact2/ContactManager;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/miui/milk/source/contact2/ContactManager;->mIsSync:Z

    invoke-direct {v3, v5, v6}, Lcom/miui/milk/source/contact2/GroupManager;-><init>(Landroid/content/Context;Z)V

    .line 452
    .local v3, groupManager:Lcom/miui/milk/source/contact2/GroupManager;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/miui/milk/source/contact2/GroupManager;->load(J)Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v1

    .line 453
    .local v1, group:Lcom/miui/milk/model/ContactProtos2$Group;
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Group;->getGuid()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 454
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Group;->getGuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->setGroupGUID(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

    .line 456
    :cond_0
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Group;->getLuid()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 457
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Group;->getLuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->setGroupLUID(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

    .line 459
    :cond_1
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Group;->getTitle()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 460
    invoke-virtual {v1}, Lcom/miui/milk/model/ContactProtos2$Group;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;->setGroupTitle(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;

    .line 462
    :cond_2
    invoke-virtual {p1, v4}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addGroupMembership(Lcom/miui/milk/model/ContactProtos2$GroupMembership$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    .end local v1           #group:Lcom/miui/milk/model/ContactProtos2$Group;
    .end local v3           #groupManager:Lcom/miui/milk/source/contact2/GroupManager;
    :cond_3
    :goto_0
    return-void

    .line 463
    .restart local v3       #groupManager:Lcom/miui/milk/source/contact2/GroupManager;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 464
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private loadImField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 7
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 380
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Im;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    move-result-object v1

    .line 382
    .local v1, im:Lcom/miui/milk/model/ContactProtos2$Im$Builder;
    const-string v6, "data1"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, imValue:Ljava/lang/String;
    const-string v6, "data2"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 384
    .local v4, imType:I
    const-string v6, "data3"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, imLabel:Ljava/lang/String;
    const-string v6, "data5"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 387
    .local v3, imProtocol:I
    const-string v6, "data6"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, customPro:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 390
    invoke-virtual {v1, v5}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    .line 394
    invoke-virtual {v1, v4}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    .line 395
    if-eqz v2, :cond_0

    .line 396
    invoke-virtual {v1, v2}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    .line 399
    :cond_0
    invoke-virtual {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->setProtocol(I)Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    .line 400
    if-eqz v0, :cond_1

    .line 401
    invoke-virtual {v1, v0}, Lcom/miui/milk/model/ContactProtos2$Im$Builder;->setCustomProtocol(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Im$Builder;

    .line 404
    :cond_1
    invoke-virtual {p1, v1}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addIm(Lcom/miui/milk/model/ContactProtos2$Im$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 405
    :cond_2
    return-void
.end method

.method private loadNameField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 6
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 171
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Name;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    move-result-object v4

    .line 172
    .local v4, name:Lcom/miui/milk/model/ContactProtos2$Name$Builder;
    const-string v5, "data1"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, dn:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v4, v0}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->setDisplayName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    .line 176
    :cond_0
    const-string v5, "data2"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, givenName:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 178
    invoke-virtual {v4, v2}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->setGivenName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    .line 180
    :cond_1
    const-string v5, "data5"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, middleName:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 182
    invoke-virtual {v4, v3}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->setMiddleName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    .line 184
    :cond_2
    const-string v5, "data3"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, familyName:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 186
    invoke-virtual {v4, v1}, Lcom/miui/milk/model/ContactProtos2$Name$Builder;->setFamilyName(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Name$Builder;

    .line 188
    :cond_3
    invoke-virtual {p1, v4}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addName(Lcom/miui/milk/model/ContactProtos2$Name$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 189
    return-void
.end method

.method private loadNickNameField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 5
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 193
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Nickname;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

    move-result-object v0

    .line 195
    .local v0, nickName:Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;
    const-string v4, "data1"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, nickNameValue:Ljava/lang/String;
    const-string v4, "data2"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 197
    .local v2, nickNameType:I
    const-string v4, "data3"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, nickNameLabel:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 200
    invoke-virtual {v0, v3}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

    .line 204
    invoke-virtual {v0, v2}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

    .line 205
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;

    .line 209
    :cond_0
    invoke-virtual {p1, v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addNickname(Lcom/miui/milk/model/ContactProtos2$Nickname$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 210
    :cond_1
    return-void
.end method

.method private loadNoteField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 3
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 409
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Note;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Note$Builder;

    move-result-object v0

    .line 411
    .local v0, note:Lcom/miui/milk/model/ContactProtos2$Note$Builder;
    const-string v2, "data1"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, noteValue:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 414
    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos2$Note$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Note$Builder;

    .line 419
    invoke-virtual {p1, v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addNote(Lcom/miui/milk/model/ContactProtos2$Note$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 420
    :cond_0
    return-void
.end method

.method private loadOrganizationField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 10
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 271
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Organization;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    move-result-object v6

    .line 273
    .local v6, organization:Lcom/miui/milk/model/ContactProtos2$Organization$Builder;
    const-string v9, "data1"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 274
    .local v5, orgValue:Ljava/lang/String;
    const-string v9, "data2"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 275
    .local v4, orgType:I
    const-string v9, "data3"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, orgLabel:Ljava/lang/String;
    const-string v9, "data4"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 278
    .local v8, title:Ljava/lang/String;
    const-string v9, "data5"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, department:Ljava/lang/String;
    const-string v9, "data6"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, jobDes:Ljava/lang/String;
    const-string v9, "data7"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 281
    .local v7, symbol:Ljava/lang/String;
    const-string v9, "data9"

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, officeLoc:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 284
    invoke-virtual {v6, v5}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 286
    :cond_0
    invoke-virtual {v6, v4}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 287
    if-eqz v3, :cond_1

    .line 288
    invoke-virtual {v6, v3}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 290
    :cond_1
    if-eqz v8, :cond_2

    .line 291
    invoke-virtual {v6, v8}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setTitle(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 293
    :cond_2
    if-eqz v0, :cond_3

    .line 294
    invoke-virtual {v6, v0}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setDepartment(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 296
    :cond_3
    if-eqz v1, :cond_4

    .line 297
    invoke-virtual {v6, v1}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setJobDescription(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 299
    :cond_4
    if-eqz v7, :cond_5

    .line 300
    invoke-virtual {v6, v7}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setSymbol(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 302
    :cond_5
    if-eqz v2, :cond_6

    .line 303
    invoke-virtual {v6, v2}, Lcom/miui/milk/model/ContactProtos2$Organization$Builder;->setOfficeLocation(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Organization$Builder;

    .line 306
    :cond_6
    invoke-virtual {p1, v6}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addOrganization(Lcom/miui/milk/model/ContactProtos2$Organization$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 307
    return-void
.end method

.method private loadPhoneField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 5
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 214
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Phone;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

    move-result-object v1

    .line 216
    .local v1, phone:Lcom/miui/milk/model/ContactProtos2$Phone$Builder;
    const-string v4, "data1"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, number:Ljava/lang/String;
    const-string v4, "data2"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 218
    .local v3, phoneType:I
    const-string v4, "data3"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, phoneLabel:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {v1, v0}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

    .line 225
    invoke-virtual {v1, v3}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

    .line 226
    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {v1, v2}, Lcom/miui/milk/model/ContactProtos2$Phone$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Phone$Builder;

    .line 230
    :cond_0
    invoke-virtual {p1, v1}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addPhone(Lcom/miui/milk/model/ContactProtos2$Phone$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 231
    :cond_1
    return-void
.end method

.method private loadPhotoField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 4
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 256
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Photo;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Photo$Builder;

    move-result-object v1

    .line 258
    .local v1, photo:Lcom/miui/milk/model/ContactProtos2$Photo$Builder;
    const-string v2, "data15"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 260
    .local v0, data:[B
    if-eqz v0, :cond_0

    array-length v2, v0

    const/high16 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 261
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/milk/model/ContactProtos2$Photo$Builder;->setImage(Lcom/google/protobuf/ByteString;)Lcom/miui/milk/model/ContactProtos2$Photo$Builder;

    .line 266
    invoke-virtual {p1, v1}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addPhoto(Lcom/miui/milk/model/ContactProtos2$Photo$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 267
    :cond_0
    return-void
.end method

.method private loadPostalAddressField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 12
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 311
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Postal;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    move-result-object v6

    .line 313
    .local v6, postal:Lcom/miui/milk/model/ContactProtos2$Postal$Builder;
    const-string v11, "data1"

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 314
    .local v10, value:Ljava/lang/String;
    const-string v11, "data2"

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 315
    .local v9, type:I
    const-string v11, "data3"

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, label:Ljava/lang/String;
    const-string v11, "data4"

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 318
    .local v8, street:Ljava/lang/String;
    const-string v11, "data5"

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 319
    .local v4, pobox:Ljava/lang/String;
    const-string v11, "data6"

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, neighborhood:Ljava/lang/String;
    const-string v11, "data7"

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, city:Ljava/lang/String;
    const-string v11, "data8"

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 322
    .local v7, region:Ljava/lang/String;
    const-string v11, "data9"

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, postCode:Ljava/lang/String;
    const-string v11, "data10"

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, country:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 326
    invoke-virtual {v6, v10}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 328
    :cond_0
    invoke-virtual {v6, v9}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 329
    if-eqz v2, :cond_1

    .line 330
    invoke-virtual {v6, v2}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 332
    :cond_1
    if-eqz v8, :cond_2

    .line 333
    invoke-virtual {v6, v8}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setStreet(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 335
    :cond_2
    if-eqz v4, :cond_3

    .line 336
    invoke-virtual {v6, v4}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setPobox(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 338
    :cond_3
    if-eqz v3, :cond_4

    .line 339
    invoke-virtual {v6, v3}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setNeighborhood(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 341
    :cond_4
    if-eqz v0, :cond_5

    .line 342
    invoke-virtual {v6, v0}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setCity(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 344
    :cond_5
    if-eqz v7, :cond_6

    .line 345
    invoke-virtual {v6, v7}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setRegion(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 347
    :cond_6
    if-eqz v5, :cond_7

    .line 348
    invoke-virtual {v6, v5}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setPostcode(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 350
    :cond_7
    if-eqz v1, :cond_8

    .line 351
    invoke-virtual {v6, v1}, Lcom/miui/milk/model/ContactProtos2$Postal$Builder;->setCountry(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Postal$Builder;

    .line 354
    :cond_8
    invoke-virtual {p1, v6}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addPostal(Lcom/miui/milk/model/ContactProtos2$Postal$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 355
    return-void
.end method

.method private loadRawContact(J)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    .locals 12
    .parameter "id"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 77
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Contact;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v6

    .line 79
    .local v6, contact:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    const/4 v7, 0x0

    .line 81
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x5

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ID:Ljava/lang/String;

    aput-object v1, v2, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_DELETED:Ljava/lang/String;

    aput-object v1, v2, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_VERSION:Ljava/lang/String;

    aput-object v1, v2, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_STARRED:Ljava/lang/String;

    aput-object v1, v2, v0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_CALL_INCOMING_PHOTO:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 82
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/contact2/ContactManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 88
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    sub-int v8, v0, v10

    .local v8, index:I
    :goto_0
    if-ltz v8, :cond_2

    .line 90
    invoke-direct {p0, v6, v7, v8}, Lcom/miui/milk/source/contact2/ContactManager;->setRawContactField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 96
    .end local v8           #index:I
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v11

    .line 98
    :goto_1
    return-object v0

    .line 96
    .restart local v8       #index:I
    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    .line 98
    goto :goto_1

    .line 96
    .end local v2           #cols:[Ljava/lang/String;
    .end local v8           #index:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private loadWebsiteField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;)V
    .locals 5
    .parameter "contact"
    .parameter "cur"

    .prologue
    .line 424
    invoke-static {}, Lcom/miui/milk/model/ContactProtos2$Website;->newBuilder()Lcom/miui/milk/model/ContactProtos2$Website$Builder;

    move-result-object v2

    .line 426
    .local v2, website:Lcom/miui/milk/model/ContactProtos2$Website$Builder;
    const-string v4, "data1"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 427
    .local v1, url:Ljava/lang/String;
    const-string v4, "data2"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 428
    .local v3, websiteType:I
    const-string v4, "data3"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, label:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 431
    invoke-virtual {v2, v1}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Website$Builder;

    .line 435
    invoke-virtual {v2, v3}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->setType(I)Lcom/miui/milk/model/ContactProtos2$Website$Builder;

    .line 436
    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {v2, v0}, Lcom/miui/milk/model/ContactProtos2$Website$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Website$Builder;

    .line 440
    :cond_0
    invoke-virtual {p1, v2}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->addWebsite(Lcom/miui/milk/model/ContactProtos2$Website$Builder;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 441
    :cond_1
    return-void
.end method

.method private prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;
    .locals 6
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"

    .prologue
    const-string v5, "raw_contact_id"

    const-string v4, "ContactManager"

    .line 637
    const/4 v1, 0x0

    .line 638
    .local v1, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 639
    .local v0, b:Landroid/net/Uri$Builder;
    const-string v2, "caller_is_syncadapter"

    iget-boolean v3, p0, Lcom/miui/milk/source/contact2/ContactManager;->mIsSync:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 640
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 642
    if-nez p1, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    .line 643
    :cond_0
    const-string v2, "ContactManager"

    const-string v2, "Inserting new contact data"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string v2, "raw_contact_id"

    invoke-virtual {v1, v5, p4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 649
    :goto_0
    return-object v1

    .line 646
    :cond_1
    const-string v2, "ContactManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating contact data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const-string v2, "raw_contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    goto :goto_0
.end method

.method private prepareDataFieldsOps(JLcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZLandroid/accounts/Account;I)V
    .locals 8
    .parameter "luid"
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "account"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;Z",
            "Landroid/accounts/Account;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 622
    .local p4, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareNameOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move v6, p7

    .line 623
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareNicknameOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move v6, p7

    .line 624
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->preparePhoneOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move v6, p7

    .line 625
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareEmailOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move v6, p7

    .line 626
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareImOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move v6, p7

    .line 627
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->preparePhotoOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move v6, p7

    .line 628
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareOrganizationOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move v6, p7

    .line 629
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->preparePostalOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move v6, p7

    .line 630
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareEventOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move v6, p7

    .line 631
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareNoteOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move v6, p7

    .line 632
    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareWebsiteOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move-wide v4, p1

    move-object v6, p6

    move v7, p7

    .line 633
    invoke-direct/range {v0 .. v7}, Lcom/miui/milk/source/contact2/ContactManager;->prepareGroupMembershipOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJLandroid/accounts/Account;I)V

    .line 634
    return-void
.end method

.method private prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V
    .locals 6
    .parameter
    .parameter "oldLuid"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 654
    .local p1, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .line 655
    .local v1, deleteBuilder:Landroid/content/ContentProviderOperation$Builder;
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 656
    .local v0, b:Landroid/net/Uri$Builder;
    const-string v2, "caller_is_syncadapter"

    iget-boolean v3, p0, Lcom/miui/milk/source/contact2/ContactManager;->mIsSync:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 657
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 659
    const-string v2, "raw_contact_id= ? and mimetype= ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p4, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 661
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    return-void
.end method

.method private prepareEmailOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V
    .locals 9
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJI)V"
        }
    .end annotation

    .prologue
    .line 764
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-nez p3, :cond_0

    const-wide/16 v7, -0x1

    cmp-long v7, p4, v7

    if-eqz v7, :cond_0

    .line 765
    const-string v7, "ContactManager"

    const-string v8, "Updating contact data: remove old fields firstly"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const-string v7, "vnd.android.cursor.item/email_v2"

    invoke-direct {p0, p2, p4, p5, v7}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 770
    :cond_0
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getEmailList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/model/ContactProtos2$Email;

    .line 771
    .local v0, email:Lcom/miui/milk/model/ContactProtos2$Email;
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 772
    .local v2, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Email;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 773
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Email;->getType()I

    move-result v5

    .line 774
    .local v5, type:I
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Email;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 775
    .local v3, label:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 778
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 780
    const-string v7, "data1"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 781
    const-string v7, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 782
    if-eqz v3, :cond_2

    .line 783
    const-string v7, "data3"

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 785
    :cond_2
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 786
    .local v4, operation:Landroid/content/ContentProviderOperation;
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 789
    .end local v0           #email:Lcom/miui/milk/model/ContactProtos2$Email;
    .end local v2           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #label:Ljava/lang/String;
    .end local v4           #operation:Landroid/content/ContentProviderOperation;
    .end local v5           #type:I
    .end local v6           #value:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private prepareEventOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V
    .locals 9
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJI)V"
        }
    .end annotation

    .prologue
    .line 966
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-nez p3, :cond_0

    const-wide/16 v7, -0x1

    cmp-long v7, p4, v7

    if-eqz v7, :cond_0

    .line 967
    const-string v7, "ContactManager"

    const-string v8, "Updating contact data: remove old fields firstly"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const-string v7, "vnd.android.cursor.item/contact_event"

    invoke-direct {p0, p2, p4, p5, v7}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 972
    :cond_0
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getEventList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/model/ContactProtos2$Event;

    .line 973
    .local v0, event:Lcom/miui/milk/model/ContactProtos2$Event;
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 974
    .local v2, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Event;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 975
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Event;->getType()I

    move-result v5

    .line 976
    .local v5, type:I
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Event;->getLabel()Ljava/lang/String;

    move-result-object v3

    .line 977
    .local v3, label:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 980
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 982
    const-string v7, "data1"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 983
    const-string v7, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 984
    if-eqz v3, :cond_2

    .line 985
    const-string v7, "data3"

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 987
    :cond_2
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 988
    .local v4, operation:Landroid/content/ContentProviderOperation;
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 991
    .end local v0           #event:Lcom/miui/milk/model/ContactProtos2$Event;
    .end local v2           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #label:Ljava/lang/String;
    .end local v4           #operation:Landroid/content/ContentProviderOperation;
    .end local v5           #type:I
    .end local v6           #value:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private prepareGroupMembershipOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJLandroid/accounts/Account;I)V
    .locals 14
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "account"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJ",
            "Landroid/accounts/Account;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1045
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-nez p3, :cond_0

    const-wide/16 v12, -0x1

    cmp-long v12, p4, v12

    if-eqz v12, :cond_0

    .line 1046
    const-string v12, "ContactManager"

    const-string v13, "Updating contact data: remove old fields firstly"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const-string v12, "vnd.android.cursor.item/group_membership"

    move-object v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p4

    move-object v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 1051
    :cond_0
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getGroupMembershipList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/milk/model/ContactProtos2$GroupMembership;

    .line 1052
    .local v7, groupMembership:Lcom/miui/milk/model/ContactProtos2$GroupMembership;
    move-object v0, p0

    move/from16 v1, p3

    move-wide/from16 v2, p4

    move/from16 v4, p7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 1056
    .local v10, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v7}, Lcom/miui/milk/model/ContactProtos2$GroupMembership;->getGroupTitle()Ljava/lang/String;

    move-result-object v8

    .line 1057
    .local v8, groupTitle:Ljava/lang/String;
    new-instance v6, Lcom/miui/milk/source/contact2/GroupManager;

    iget-object v12, p0, Lcom/miui/milk/source/contact2/ContactManager;->mContext:Landroid/content/Context;

    iget-boolean v13, p0, Lcom/miui/milk/source/contact2/ContactManager;->mIsSync:Z

    invoke-direct {v6, v12, v13}, Lcom/miui/milk/source/contact2/GroupManager;-><init>(Landroid/content/Context;Z)V

    .line 1058
    .local v6, groupManager:Lcom/miui/milk/source/contact2/GroupManager;
    move-object v0, v6

    move-object v1, v8

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/miui/milk/source/contact2/GroupManager;->loadByTitle(Ljava/lang/String;Landroid/accounts/Account;)Lcom/miui/milk/model/ContactProtos2$Group;

    move-result-object v5

    .line 1059
    .local v5, group:Lcom/miui/milk/model/ContactProtos2$Group;
    if-eqz v5, :cond_1

    .line 1062
    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 1064
    const-string v12, "data1"

    invoke-virtual {v5}, Lcom/miui/milk/model/ContactProtos2$Group;->getLuid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 1065
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    .line 1066
    .local v11, operation:Landroid/content/ContentProviderOperation;
    move-object/from16 v0, p2

    move-object v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1069
    .end local v5           #group:Lcom/miui/milk/model/ContactProtos2$Group;
    .end local v6           #groupManager:Lcom/miui/milk/source/contact2/GroupManager;
    .end local v7           #groupMembership:Lcom/miui/milk/model/ContactProtos2$GroupMembership;
    .end local v8           #groupTitle:Ljava/lang/String;
    .end local v10           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #operation:Landroid/content/ContentProviderOperation;
    :cond_2
    return-void
.end method

.method private prepareImOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V
    .locals 16
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJI)V"
        }
    .end annotation

    .prologue
    .line 792
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-nez p3, :cond_0

    const-wide/16 v14, -0x1

    cmp-long v14, p4, v14

    if-eqz v14, :cond_0

    .line 793
    const-string v14, "ContactManager"

    const-string v15, "Updating contact data: remove old fields firstly"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const-string v14, "vnd.android.cursor.item/im"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p4

    move-object v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 798
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getImList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/milk/model/ContactProtos2$Im;

    .line 799
    .local v7, im:Lcom/miui/milk/model/ContactProtos2$Im;
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-wide/from16 v2, p4

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 800
    .local v8, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v7}, Lcom/miui/milk/model/ContactProtos2$Im;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 801
    .local v13, value:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/miui/milk/model/ContactProtos2$Im;->getType()I

    move-result v12

    .line 802
    .local v12, type:I
    invoke-virtual {v7}, Lcom/miui/milk/model/ContactProtos2$Im;->getLabel()Ljava/lang/String;

    move-result-object v9

    .line 803
    .local v9, label:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/miui/milk/model/ContactProtos2$Im;->getProtocol()I

    move-result v11

    .line 804
    .local v11, protocolType:I
    invoke-virtual {v7}, Lcom/miui/milk/model/ContactProtos2$Im;->getCustomProtocol()Ljava/lang/String;

    move-result-object v5

    .line 806
    .local v5, customProtocol:Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 809
    const-string v14, "mimetype"

    const-string v15, "vnd.android.cursor.item/im"

    invoke-virtual {v8, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 811
    const-string v14, "data1"

    invoke-virtual {v8, v14, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 812
    const-string v14, "data2"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 813
    if-eqz v9, :cond_2

    .line 814
    const-string v14, "data3"

    invoke-virtual {v8, v14, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 816
    :cond_2
    const-string v14, "data5"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 817
    if-eqz v5, :cond_3

    .line 818
    const-string v14, "data6"

    invoke-virtual {v8, v14, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 821
    :cond_3
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    .line 822
    .local v10, operation:Landroid/content/ContentProviderOperation;
    move-object/from16 v0, p2

    move-object v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 825
    .end local v5           #customProtocol:Ljava/lang/String;
    .end local v7           #im:Lcom/miui/milk/model/ContactProtos2$Im;
    .end local v8           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v9           #label:Ljava/lang/String;
    .end local v10           #operation:Landroid/content/ContentProviderOperation;
    .end local v11           #protocolType:I
    .end local v12           #type:I
    .end local v13           #value:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private prepareNameOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V
    .locals 16
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJI)V"
        }
    .end annotation

    .prologue
    .line 665
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-nez p3, :cond_0

    const-wide/16 v14, -0x1

    cmp-long v14, p4, v14

    if-eqz v14, :cond_0

    .line 666
    const-string v14, "ContactManager"

    const-string v15, "Updating contact data: remove old fields firstly"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const-string v14, "vnd.android.cursor.item/name"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p4

    move-object v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 671
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getNameList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/milk/model/ContactProtos2$Name;

    .line 672
    .local v11, name:Lcom/miui/milk/model/ContactProtos2$Name;
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-wide/from16 v2, p4

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 674
    .local v9, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v11}, Lcom/miui/milk/model/ContactProtos2$Name;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 675
    .local v5, displayName:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/miui/milk/model/ContactProtos2$Name;->getGivenName()Ljava/lang/String;

    move-result-object v7

    .line 676
    .local v7, givenName:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/miui/milk/model/ContactProtos2$Name;->getMiddleName()Ljava/lang/String;

    move-result-object v10

    .line 677
    .local v10, middleName:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/miui/milk/model/ContactProtos2$Name;->getFamilyName()Ljava/lang/String;

    move-result-object v6

    .line 679
    .local v6, familyName:Ljava/lang/String;
    const/4 v14, 0x4

    new-array v13, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    const/4 v14, 0x1

    aput-object v7, v13, v14

    const/4 v14, 0x2

    aput-object v10, v13, v14

    const/4 v14, 0x3

    aput-object v6, v13, v14

    .line 680
    .local v13, propValues:[Ljava/lang/String;
    invoke-static {v13}, Lcom/miui/milk/util/StringUtil;->isFieldEmpty([Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 684
    const-string v14, "mimetype"

    const-string v15, "vnd.android.cursor.item/name"

    invoke-virtual {v9, v14, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 686
    if-eqz v5, :cond_2

    .line 687
    const-string v14, "data1"

    invoke-virtual {v9, v14, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 689
    :cond_2
    if-eqz v7, :cond_3

    .line 690
    const-string v14, "data2"

    invoke-virtual {v9, v14, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 693
    :cond_3
    if-eqz v10, :cond_4

    .line 694
    const-string v14, "data5"

    invoke-virtual {v9, v14, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 696
    :cond_4
    if-eqz v6, :cond_5

    .line 697
    const-string v14, "data3"

    invoke-virtual {v9, v14, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 700
    :cond_5
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    .line 701
    .local v12, operation:Landroid/content/ContentProviderOperation;
    move-object/from16 v0, p2

    move-object v1, v12

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 705
    .end local v5           #displayName:Ljava/lang/String;
    .end local v6           #familyName:Ljava/lang/String;
    .end local v7           #givenName:Ljava/lang/String;
    .end local v9           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v10           #middleName:Ljava/lang/String;
    .end local v11           #name:Lcom/miui/milk/model/ContactProtos2$Name;
    .end local v12           #operation:Landroid/content/ContentProviderOperation;
    .end local v13           #propValues:[Ljava/lang/String;
    :cond_6
    return-void
.end method

.method private prepareNicknameOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V
    .locals 9
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJI)V"
        }
    .end annotation

    .prologue
    .line 708
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-nez p3, :cond_0

    const-wide/16 v7, -0x1

    cmp-long v7, p4, v7

    if-eqz v7, :cond_0

    .line 709
    const-string v7, "ContactManager"

    const-string v8, "Updating contact data: remove old fields firstly"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const-string v7, "vnd.android.cursor.item/nickname"

    invoke-direct {p0, p2, p4, p5, v7}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 714
    :cond_0
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getNicknameList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/model/ContactProtos2$Nickname;

    .line 715
    .local v3, nickname:Lcom/miui/milk/model/ContactProtos2$Nickname;
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 716
    .local v1, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos2$Nickname;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 717
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos2$Nickname;->getType()I

    move-result v5

    .line 718
    .local v5, type:I
    invoke-virtual {v3}, Lcom/miui/milk/model/ContactProtos2$Nickname;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 719
    .local v2, label:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 722
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/nickname"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 724
    const-string v7, "data1"

    invoke-virtual {v1, v7, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 725
    const-string v7, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 726
    if-eqz v2, :cond_2

    .line 727
    const-string v7, "data3"

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 729
    :cond_2
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 730
    .local v4, operation:Landroid/content/ContentProviderOperation;
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 733
    .end local v1           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #nickname:Lcom/miui/milk/model/ContactProtos2$Nickname;
    .end local v4           #operation:Landroid/content/ContentProviderOperation;
    .end local v5           #type:I
    .end local v6           #value:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private prepareNoteOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V
    .locals 8
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJI)V"
        }
    .end annotation

    .prologue
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    const-string v7, "vnd.android.cursor.item/note"

    .line 994
    if-nez p3, :cond_0

    const-wide/16 v5, -0x1

    cmp-long v5, p4, v5

    if-eqz v5, :cond_0

    .line 995
    const-string v5, "ContactManager"

    const-string v6, "Updating contact data: remove old fields firstly"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-string v5, "vnd.android.cursor.item/note"

    invoke-direct {p0, p2, p4, p5, v7}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 1000
    :cond_0
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getNoteList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/milk/model/ContactProtos2$Note;

    .line 1001
    .local v2, note:Lcom/miui/milk/model/ContactProtos2$Note;
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1002
    .local v1, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos2$Note;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 1003
    .local v4, value:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1006
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/note"

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1008
    const-string v5, "data1"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1010
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 1011
    .local v3, operation:Landroid/content/ContentProviderOperation;
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1014
    .end local v1           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #note:Lcom/miui/milk/model/ContactProtos2$Note;
    .end local v3           #operation:Landroid/content/ContentProviderOperation;
    .end local v4           #value:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private prepareOrganizationOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V
    .locals 20
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJI)V"
        }
    .end annotation

    .prologue
    .line 850
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-nez p3, :cond_0

    const-wide/16 v18, -0x1

    cmp-long v18, p4, v18

    if-eqz v18, :cond_0

    .line 851
    const-string v18, "ContactManager"

    const-string v19, "Updating contact data: remove old fields firstly"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const-string v18, "vnd.android.cursor.item/organization"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p4

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 856
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getOrganizationList()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/milk/model/ContactProtos2$Organization;

    .line 857
    .local v12, org:Lcom/miui/milk/model/ContactProtos2$Organization;
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-wide/from16 v2, p4

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 858
    .local v7, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v12}, Lcom/miui/milk/model/ContactProtos2$Organization;->getValue()Ljava/lang/String;

    move-result-object v17

    .line 859
    .local v17, value:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/miui/milk/model/ContactProtos2$Organization;->getType()I

    move-result v16

    .line 860
    .local v16, type:I
    invoke-virtual {v12}, Lcom/miui/milk/model/ContactProtos2$Organization;->getLabel()Ljava/lang/String;

    move-result-object v9

    .line 862
    .local v9, label:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/miui/milk/model/ContactProtos2$Organization;->getTitle()Ljava/lang/String;

    move-result-object v15

    .line 863
    .local v15, title:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/miui/milk/model/ContactProtos2$Organization;->getDepartment()Ljava/lang/String;

    move-result-object v5

    .line 864
    .local v5, dept:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/miui/milk/model/ContactProtos2$Organization;->getJobDescription()Ljava/lang/String;

    move-result-object v8

    .line 865
    .local v8, jobDes:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/miui/milk/model/ContactProtos2$Organization;->getSymbol()Ljava/lang/String;

    move-result-object v14

    .line 866
    .local v14, symbol:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/miui/milk/model/ContactProtos2$Organization;->getOfficeLocation()Ljava/lang/String;

    move-result-object v10

    .line 868
    .local v10, officeLoc:Ljava/lang/String;
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object v13, v0

    const/16 v18, 0x0

    aput-object v17, v13, v18

    const/16 v18, 0x1

    aput-object v15, v13, v18

    const/16 v18, 0x2

    aput-object v5, v13, v18

    const/16 v18, 0x3

    aput-object v10, v13, v18

    .line 869
    .local v13, propValues:[Ljava/lang/String;
    invoke-static {v13}, Lcom/miui/milk/util/StringUtil;->isFieldEmpty([Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 874
    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/organization"

    move-object v0, v7

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 876
    const-string v18, "data1"

    move-object v0, v7

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 877
    const-string v18, "data2"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object v0, v7

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 878
    if-eqz v9, :cond_2

    .line 879
    const-string v18, "data3"

    move-object v0, v7

    move-object/from16 v1, v18

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 881
    :cond_2
    if-eqz v15, :cond_3

    .line 882
    const-string v18, "data4"

    move-object v0, v7

    move-object/from16 v1, v18

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 884
    :cond_3
    if-eqz v5, :cond_4

    .line 885
    const-string v18, "data5"

    move-object v0, v7

    move-object/from16 v1, v18

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 887
    :cond_4
    if-eqz v8, :cond_5

    .line 888
    const-string v18, "data6"

    move-object v0, v7

    move-object/from16 v1, v18

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 890
    :cond_5
    if-eqz v14, :cond_6

    .line 891
    const-string v18, "data7"

    move-object v0, v7

    move-object/from16 v1, v18

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 893
    :cond_6
    if-eqz v10, :cond_7

    .line 894
    const-string v18, "data9"

    move-object v0, v7

    move-object/from16 v1, v18

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    .line 897
    :cond_7
    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    .line 898
    .local v11, operation:Landroid/content/ContentProviderOperation;
    move-object/from16 v0, p2

    move-object v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 901
    .end local v5           #dept:Ljava/lang/String;
    .end local v7           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v8           #jobDes:Ljava/lang/String;
    .end local v9           #label:Ljava/lang/String;
    .end local v10           #officeLoc:Ljava/lang/String;
    .end local v11           #operation:Landroid/content/ContentProviderOperation;
    .end local v12           #org:Lcom/miui/milk/model/ContactProtos2$Organization;
    .end local v13           #propValues:[Ljava/lang/String;
    .end local v14           #symbol:Ljava/lang/String;
    .end local v15           #title:Ljava/lang/String;
    .end local v16           #type:I
    .end local v17           #value:Ljava/lang/String;
    :cond_8
    return-void
.end method

.method private preparePhoneOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V
    .locals 9
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJI)V"
        }
    .end annotation

    .prologue
    .line 736
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-nez p3, :cond_0

    const-wide/16 v7, -0x1

    cmp-long v7, p4, v7

    if-eqz v7, :cond_0

    .line 737
    const-string v7, "ContactManager"

    const-string v8, "Updating contact data: remove old fields firstly"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const-string v7, "vnd.android.cursor.item/phone_v2"

    invoke-direct {p0, p2, p4, p5, v7}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 742
    :cond_0
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getPhoneList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/milk/model/ContactProtos2$Phone;

    .line 743
    .local v4, phone:Lcom/miui/milk/model/ContactProtos2$Phone;
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 744
    .local v1, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v4}, Lcom/miui/milk/model/ContactProtos2$Phone;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 745
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/miui/milk/model/ContactProtos2$Phone;->getType()I

    move-result v5

    .line 746
    .local v5, type:I
    invoke-virtual {v4}, Lcom/miui/milk/model/ContactProtos2$Phone;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 747
    .local v2, label:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 750
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 752
    const-string v7, "data1"

    invoke-virtual {v1, v7, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 753
    const-string v7, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 754
    if-eqz v2, :cond_2

    .line 755
    const-string v7, "data3"

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 757
    :cond_2
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 758
    .local v3, operation:Landroid/content/ContentProviderOperation;
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 761
    .end local v1           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #operation:Landroid/content/ContentProviderOperation;
    .end local v4           #phone:Lcom/miui/milk/model/ContactProtos2$Phone;
    .end local v5           #type:I
    .end local v6           #value:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private preparePhotoOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V
    .locals 8
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJI)V"
        }
    .end annotation

    .prologue
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    const-string v7, "vnd.android.cursor.item/photo"

    .line 828
    if-nez p3, :cond_0

    const-wide/16 v5, -0x1

    cmp-long v5, p4, v5

    if-eqz v5, :cond_0

    .line 829
    const-string v5, "ContactManager"

    const-string v6, "Updating contact data: remove old fields firstly"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const-string v5, "vnd.android.cursor.item/photo"

    invoke-direct {p0, p2, p4, p5, v7}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 834
    :cond_0
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getPhotoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/milk/model/ContactProtos2$Photo;

    .line 835
    .local v4, photo:Lcom/miui/milk/model/ContactProtos2$Photo;
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 836
    .local v2, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v4}, Lcom/miui/milk/model/ContactProtos2$Photo;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 837
    .local v1, image:Lcom/google/protobuf/ByteString;
    if-eqz v1, :cond_1

    .line 840
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 842
    const-string v5, "data15"

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 843
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 844
    .local v3, operation:Landroid/content/ContentProviderOperation;
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 847
    .end local v1           #image:Lcom/google/protobuf/ByteString;
    .end local v2           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #operation:Landroid/content/ContentProviderOperation;
    .end local v4           #photo:Lcom/miui/milk/model/ContactProtos2$Photo;
    :cond_2
    return-void
.end method

.method private preparePostalOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V
    .locals 22
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJI)V"
        }
    .end annotation

    .prologue
    .line 904
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-nez p3, :cond_0

    const-wide/16 v20, -0x1

    cmp-long v20, p4, v20

    if-eqz v20, :cond_0

    .line 905
    const-string v20, "ContactManager"

    const-string v21, "Updating contact data: remove old fields firstly"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const-string v20, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p4

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 910
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getPostalList()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/milk/model/ContactProtos2$Postal;

    .line 911
    .local v13, postal:Lcom/miui/milk/model/ContactProtos2$Postal;
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-wide/from16 v2, p4

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 912
    .local v8, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v13}, Lcom/miui/milk/model/ContactProtos2$Postal;->getValue()Ljava/lang/String;

    move-result-object v19

    .line 913
    .local v19, value:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/miui/milk/model/ContactProtos2$Postal;->getType()I

    move-result v18

    .line 914
    .local v18, type:I
    invoke-virtual {v13}, Lcom/miui/milk/model/ContactProtos2$Postal;->getLabel()Ljava/lang/String;

    move-result-object v9

    .line 916
    .local v9, label:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/miui/milk/model/ContactProtos2$Postal;->getStreet()Ljava/lang/String;

    move-result-object v17

    .line 917
    .local v17, street:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/miui/milk/model/ContactProtos2$Postal;->getPobox()Ljava/lang/String;

    move-result-object v12

    .line 918
    .local v12, pobox:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/miui/milk/model/ContactProtos2$Postal;->getNeighborhood()Ljava/lang/String;

    move-result-object v10

    .line 919
    .local v10, neighborhood:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/miui/milk/model/ContactProtos2$Postal;->getCity()Ljava/lang/String;

    move-result-object v5

    .line 920
    .local v5, city:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/miui/milk/model/ContactProtos2$Postal;->getRegion()Ljava/lang/String;

    move-result-object v16

    .line 921
    .local v16, region:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/miui/milk/model/ContactProtos2$Postal;->getPostcode()Ljava/lang/String;

    move-result-object v14

    .line 922
    .local v14, postcode:Ljava/lang/String;
    invoke-virtual {v13}, Lcom/miui/milk/model/ContactProtos2$Postal;->getCountry()Ljava/lang/String;

    move-result-object v6

    .line 924
    .local v6, country:Ljava/lang/String;
    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object v15, v0

    const/16 v20, 0x0

    aput-object v19, v15, v20

    const/16 v20, 0x1

    aput-object v17, v15, v20

    const/16 v20, 0x2

    aput-object v5, v15, v20

    const/16 v20, 0x3

    aput-object v16, v15, v20

    const/16 v20, 0x4

    aput-object v6, v15, v20

    .line 925
    .local v15, propValues:[Ljava/lang/String;
    invoke-static {v15}, Lcom/miui/milk/util/StringUtil;->isFieldEmpty([Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 930
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/postal-address_v2"

    move-object v0, v8

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 932
    const-string v20, "data1"

    move-object v0, v8

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 933
    const-string v20, "data2"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v0, v8

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 934
    if-eqz v9, :cond_2

    .line 935
    const-string v20, "data3"

    move-object v0, v8

    move-object/from16 v1, v20

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 937
    :cond_2
    if-eqz v17, :cond_3

    .line 938
    const-string v20, "data4"

    move-object v0, v8

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 940
    :cond_3
    if-eqz v12, :cond_4

    .line 941
    const-string v20, "data5"

    move-object v0, v8

    move-object/from16 v1, v20

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 943
    :cond_4
    if-eqz v10, :cond_5

    .line 944
    const-string v20, "data6"

    move-object v0, v8

    move-object/from16 v1, v20

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 946
    :cond_5
    if-eqz v5, :cond_6

    .line 947
    const-string v20, "data7"

    move-object v0, v8

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 949
    :cond_6
    if-eqz v16, :cond_7

    .line 950
    const-string v20, "data8"

    move-object v0, v8

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 952
    :cond_7
    if-eqz v14, :cond_8

    .line 953
    const-string v20, "data9"

    move-object v0, v8

    move-object/from16 v1, v20

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 955
    :cond_8
    if-eqz v6, :cond_9

    .line 956
    const-string v20, "data10"

    move-object v0, v8

    move-object/from16 v1, v20

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    .line 959
    :cond_9
    invoke-virtual {v8}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    .line 960
    .local v11, operation:Landroid/content/ContentProviderOperation;
    move-object/from16 v0, p2

    move-object v1, v11

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 963
    .end local v5           #city:Ljava/lang/String;
    .end local v6           #country:Ljava/lang/String;
    .end local v8           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v9           #label:Ljava/lang/String;
    .end local v10           #neighborhood:Ljava/lang/String;
    .end local v11           #operation:Landroid/content/ContentProviderOperation;
    .end local v12           #pobox:Ljava/lang/String;
    .end local v13           #postal:Lcom/miui/milk/model/ContactProtos2$Postal;
    .end local v14           #postcode:Ljava/lang/String;
    .end local v15           #propValues:[Ljava/lang/String;
    .end local v16           #region:Ljava/lang/String;
    .end local v17           #street:Ljava/lang/String;
    .end local v18           #type:I
    .end local v19           #value:Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private prepareUpdateRawContact(JLcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/ArrayList;I)V
    .locals 10
    .parameter "luid"
    .parameter "contact"
    .parameter
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "_id = ? "

    .line 576
    iget-object v5, p0, Lcom/miui/milk/source/contact2/ContactManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 577
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v5, "caller_is_syncadapter"

    iget-boolean v6, p0, Lcom/miui/milk/source/contact2/ContactManager;->mIsSync:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 578
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 579
    .local v4, rawContactBuilder:Landroid/content/ContentProviderOperation$Builder;
    const-wide/16 v5, -0x1

    cmp-long v5, p1, v5

    if-nez v5, :cond_3

    .line 580
    const-string v5, "_id = ? "

    new-array v5, v8, [Ljava/lang/String;

    invoke-virtual {v4, v9, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 581
    invoke-virtual {v4, v7, p5}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 585
    :goto_0
    const/4 v2, 0x0

    .line 586
    .local v2, needUpdate:Z
    invoke-virtual {p3}, Lcom/miui/milk/model/ContactProtos2$Contact;->hasStarred()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 587
    const-string v5, "starred"

    invoke-virtual {p3}, Lcom/miui/milk/model/ContactProtos2$Contact;->getStarred()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v8

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 588
    const/4 v2, 0x1

    .line 590
    :cond_0
    invoke-virtual {p3}, Lcom/miui/milk/model/ContactProtos2$Contact;->hasCallIncomingPhoto()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 591
    invoke-virtual {p3}, Lcom/miui/milk/model/ContactProtos2$Contact;->getCallIncomingPhoto()Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, callIncomingPhoto:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 593
    const-string v5, "custom_call_incoming_photo"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 594
    const/4 v2, 0x1

    .line 598
    .end local v1           #callIncomingPhoto:Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 599
    const-string v5, "ContactManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updating raw contact data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 601
    .local v3, operation:Landroid/content/ContentProviderOperation;
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    .end local v3           #operation:Landroid/content/ContentProviderOperation;
    :cond_2
    return-void

    .line 583
    .end local v2           #needUpdate:Z
    :cond_3
    const-string v5, "_id = ? "

    new-array v5, v8, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v9, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    goto :goto_0

    .restart local v2       #needUpdate:Z
    :cond_4
    move v6, v7

    .line 587
    goto :goto_1
.end method

.method private prepareWebsiteOps(Lcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZJI)V
    .locals 9
    .parameter "contact"
    .parameter
    .parameter "insert"
    .parameter "oldLuid"
    .parameter "backRefIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;ZJI)V"
        }
    .end annotation

    .prologue
    .line 1017
    .local p2, ops:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    if-nez p3, :cond_0

    const-wide/16 v7, -0x1

    cmp-long v7, p4, v7

    if-eqz v7, :cond_0

    .line 1018
    const-string v7, "ContactManager"

    const-string v8, "Updating contact data: remove old fields firstly"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    const-string v7, "vnd.android.cursor.item/website"

    invoke-direct {p0, p2, p4, p5, v7}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDeleteOps(Ljava/util/List;JLjava/lang/String;)V

    .line 1023
    :cond_0
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos2$Contact;->getWebsiteList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/milk/model/ContactProtos2$Website;

    .line 1024
    .local v6, website:Lcom/miui/milk/model/ContactProtos2$Website;
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareBuilder(ZJI)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1025
    .local v1, insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos2$Website;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 1026
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos2$Website;->getType()I

    move-result v4

    .line 1027
    .local v4, type:I
    invoke-virtual {v6}, Lcom/miui/milk/model/ContactProtos2$Website;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 1028
    .local v2, label:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 1031
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/website"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1033
    const-string v7, "data1"

    invoke-virtual {v1, v7, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1034
    const-string v7, "data2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1035
    if-eqz v2, :cond_2

    .line 1036
    const-string v7, "data3"

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1038
    :cond_2
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    .line 1039
    .local v3, operation:Landroid/content/ContentProviderOperation;
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1042
    .end local v1           #insertBuilder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #operation:Landroid/content/ContentProviderOperation;
    .end local v4           #type:I
    .end local v5           #value:Ljava/lang/String;
    .end local v6           #website:Lcom/miui/milk/model/ContactProtos2$Website;
    :cond_3
    return-void
.end method

.method private setRawContactField(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;Landroid/database/Cursor;I)V
    .locals 4
    .parameter "contact"
    .parameter "cursor"
    .parameter "index"

    .prologue
    .line 102
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, columnName:Ljava/lang/String;
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const-string v2, "version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setVersion(I)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_0

    .line 107
    :cond_2
    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setDeleted(I)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_0

    .line 109
    :cond_3
    const-string v2, "starred"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 110
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v2}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setStarred(Z)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    .line 111
    :cond_5
    const-string v2, "custom_call_incoming_photo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, callIncomingPhoto:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1, v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->setCallIncomingPhoto(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;)J
    .locals 16
    .parameter "contact"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    const-string v1, "ContactManager"

    const-string v2, "Saving contact"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v5, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/source/contact2/ContactManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 477
    .local v9, builder:Landroid/net/Uri$Builder;
    const-string v1, "caller_is_syncadapter"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/milk/source/contact2/ContactManager;->mIsSync:Z

    move v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 481
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 482
    .local v13, rawContactBuilder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz p2, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

    move-object v1, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_NAME:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 490
    :goto_0
    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    .line 491
    .local v14, rawContactOps:Landroid/content/ContentProviderOperation;
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v8, v1, v2

    .line 494
    .local v8, backRefIndex:I
    const-wide/16 v2, -0x1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDataFieldsOps(JLcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZLandroid/accounts/Account;I)V

    .line 495
    const-wide/16 v2, -0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/miui/milk/source/contact2/ContactManager;->prepareUpdateRawContact(JLcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/ArrayList;I)V

    .line 499
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/source/contact2/ContactManager;->mResolver:Landroid/content/ContentResolver;

    move-object v1, v0

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v15

    .line 501
    .local v15, res:[Landroid/content/ContentProviderResult;
    const/4 v1, 0x0

    aget-object v1, v15, v1

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v11

    .line 502
    .local v11, id:J
    const-string v1, "ContactManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The new contact has id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    return-wide v11

    .line 486
    .end local v8           #backRefIndex:I
    .end local v11           #id:J
    .end local v14           #rawContactOps:Landroid/content/ContentProviderOperation;
    .end local v15           #res:[Landroid/content/ContentProviderResult;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_NAME:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    goto :goto_0

    .line 505
    .restart local v8       #backRefIndex:I
    .restart local v14       #rawContactOps:Landroid/content/ContentProviderOperation;
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 506
    .local v10, e:Ljava/lang/Exception;
    const-string v1, "ContactManager"

    const-string v2, "Cannot create contact "

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Cannot create contact in db"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v5, "ContactManager"

    const-string v4, "Cannot apply contact batch "

    .line 606
    const/4 v1, 0x0

    .line 608
    .local v1, res:[Landroid/content/ContentProviderResult;
    :try_start_0
    iget-object v2, p0, Lcom/miui/milk/source/contact2/ContactManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 616
    return-object v1

    .line 609
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 610
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ContactManager"

    const-string v2, "Cannot apply contact batch "

    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    throw v0

    .line 612
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 613
    .local v0, e:Landroid/content/OperationApplicationException;
    const-string v2, "ContactManager"

    const-string v2, "Cannot apply contact batch "

    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    throw v0
.end method

.method public exists(J)Z
    .locals 10
    .parameter "id"

    .prologue
    .line 1161
    const/4 v6, 0x0

    .line 1164
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 1165
    .local v9, whereClause:Ljava/lang/StringBuffer;
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ID:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "= ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1167
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1168
    .local v8, selectArgsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1170
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/contact2/ContactManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ID:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1176
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1177
    const/4 v7, 0x1

    .line 1183
    .local v7, found:Z
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1186
    :cond_0
    return v7

    .line 1179
    .end local v7           #found:Z
    :cond_1
    const/4 v7, 0x0

    .restart local v7       #found:Z
    goto :goto_0

    .line 1183
    .end local v7           #found:Z
    .end local v8           #selectArgsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #whereClause:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public exists(JLandroid/accounts/Account;)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "= ? "

    const-string v0, " AND "

    .line 1112
    .line 1115
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1117
    if-nez p3, :cond_2

    .line 1118
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1119
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1120
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " is null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1121
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1128
    :goto_0
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_DELETED:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1129
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1130
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ID:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "= ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1132
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1133
    if-eqz p3, :cond_0

    .line 1134
    iget-object v0, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1135
    iget-object v0, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1137
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1139
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/contact2/ContactManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ID:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1145
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-eqz v1, :cond_4

    move v1, v8

    .line 1152
    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1155
    :cond_1
    return v1

    .line 1123
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "= ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1124
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1125
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "= ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1126
    const-string v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1152
    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move v1, v7

    .line 1148
    goto :goto_1

    .line 1152
    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_2
.end method

.method public isEmpty()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1190
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ID:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 1193
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/contact2/ContactManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1196
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1197
    const/4 v7, 0x0

    .line 1202
    .local v7, empty:Z
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1203
    return v7

    .line 1199
    .end local v7           #empty:Z
    :cond_0
    const/4 v7, 0x1

    .restart local v7       #empty:Z
    goto :goto_0
.end method

.method public load(J)Lcom/miui/milk/model/ContactProtos2$Contact;
    .locals 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const-string v1, "ContactManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading contact: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/miui/milk/source/contact2/ContactManager;->loadRawContact(J)Lcom/miui/milk/model/ContactProtos2$Contact$Builder;

    move-result-object v0

    .line 67
    .local v0, contact:Lcom/miui/milk/model/ContactProtos2$Contact$Builder;
    if-nez v0, :cond_0

    .line 69
    const/4 v1, 0x0

    .line 72
    :goto_0
    return-object v1

    .line 71
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/miui/milk/source/contact2/ContactManager;->loadDataFields(Lcom/miui/milk/model/ContactProtos2$Contact$Builder;J)V

    .line 72
    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos2$Contact$Builder;->build()Lcom/miui/milk/model/ContactProtos2$Contact;

    move-result-object v1

    goto :goto_0
.end method

.method public prepareAdd(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    .locals 11
    .parameter "contact"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v1, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 539
    const-string v0, "ContactManager"

    const-string v3, "prepare Saving contact"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 543
    .local v8, builder:Landroid/net/Uri$Builder;
    const-string v0, "caller_is_syncadapter"

    iget-boolean v3, p0, Lcom/miui/milk/source/contact2/ContactManager;->mIsSync:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 547
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 548
    .local v9, rawContactBuilder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz p2, :cond_0

    .line 549
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_NAME:Ljava/lang/String;

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 556
    :goto_0
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v10

    .line 557
    .local v10, rawContactOps:Landroid/content/ContentProviderOperation;
    invoke-virtual {p3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v7, v0, v5

    .local v7, backRefIndex:I
    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move-object v6, p2

    .line 560
    invoke-direct/range {v0 .. v7}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDataFieldsOps(JLcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZLandroid/accounts/Account;I)V

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    move v5, v7

    .line 561
    invoke-direct/range {v0 .. v5}, Lcom/miui/milk/source/contact2/ContactManager;->prepareUpdateRawContact(JLcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/ArrayList;I)V

    .line 563
    return-void

    .line 552
    .end local v7           #backRefIndex:I
    .end local v10           #rawContactOps:Landroid/content/ContentProviderOperation;
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v9, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/milk/source/contact2/ContactManager;->COLUMN_ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    goto :goto_0
.end method

.method public prepareUpdate(JLcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "luid"
    .parameter "contact"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, -0x1

    .line 567
    const-string v0, "ContactManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare Updating contact: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/miui/milk/model/ContactProtos2$Contact;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDataFieldsOps(JLcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZLandroid/accounts/Account;I)V

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p5

    .line 571
    invoke-direct/range {v2 .. v7}, Lcom/miui/milk/source/contact2/ContactManager;->prepareUpdateRawContact(JLcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/ArrayList;I)V

    .line 573
    return-void
.end method

.method public update(JLcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;)V
    .locals 10
    .parameter "luid"
    .parameter "contact"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const-string v9, "ContactManager"

    .line 513
    const-string v0, "ContactManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating contact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/miui/milk/model/ContactProtos2$Contact;->getGuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {p0, p1, p2, p4}, Lcom/miui/milk/source/contact2/ContactManager;->exists(JLandroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    const-string v0, "ContactManager"

    const-string v0, "Tried to update a non existing contact. Creating a new one "

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {p0, p3, p4}, Lcom/miui/milk/source/contact2/ContactManager;->add(Lcom/miui/milk/model/ContactProtos2$Contact;Landroid/accounts/Account;)J

    .line 536
    :goto_0
    return-void

    .line 523
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/miui/milk/source/contact2/ContactManager;->prepareDataFieldsOps(JLcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/List;ZLandroid/accounts/Account;I)V

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, v7

    .line 526
    invoke-direct/range {v0 .. v5}, Lcom/miui/milk/source/contact2/ContactManager;->prepareUpdateRawContact(JLcom/miui/milk/model/ContactProtos2$Contact;Ljava/util/ArrayList;I)V

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/contact2/ContactManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 533
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "ContactManager"

    const-string v0, "Cannot update contact "

    invoke-static {v9, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 534
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot update contact in db"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
