.class public Lcom/android/contacts/AttachImage;
.super Landroid/app/Activity;
.source "AttachImage.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mRawContactIds:[Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    return-void
.end method

.method private insertPhoto(Landroid/content/ContentValues;Landroid/net/Uri;Z)V
    .locals 9
    .parameter "values"
    .parameter "rawContactDataUri"
    .parameter "assertAccount"

    .prologue
    const/4 v7, 0x0

    const-string v8, "vnd.android.cursor.item/photo"

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p3, :cond_0

    .line 191
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "mimetype=? AND account_type IN (?,?)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/photo"

    aput-object v8, v4, v7

    const/4 v5, 0x1

    const-string v6, "com.google"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "com.android.exchange"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_0
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {p1, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/AttachImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 216
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 207
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Problem querying raw_contacts/data"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 208
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 210
    .local v0, e:Landroid/content/OperationApplicationException;
    if-eqz p3, :cond_1

    .line 211
    invoke-direct {p0, p1, p2, v7}, Lcom/android/contacts/AttachImage;->updatePhoto(Landroid/content/ContentValues;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 213
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Problem inserting photo into raw_contacts/data"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static toClassArray([J)[Ljava/lang/Long;
    .locals 4
    .parameter "in"

    .prologue
    .line 102
    if-nez p0, :cond_0

    .line 103
    const/4 v2, 0x0

    .line 109
    :goto_0
    return-object v2

    .line 105
    :cond_0
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Long;

    .line 106
    .local v1, out:[Ljava/lang/Long;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 107
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 109
    goto :goto_0
.end method

.method private static toPrimativeArray([Ljava/lang/Long;)[J
    .locals 4
    .parameter "in"

    .prologue
    .line 91
    if-nez p0, :cond_0

    .line 92
    const/4 v2, 0x0

    .line 98
    :goto_0
    return-object v2

    .line 94
    :cond_0
    array-length v2, p0

    new-array v1, v2, [J

    .line 95
    .local v1, out:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 96
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 98
    goto :goto_0
.end method

.method private updatePhoto(Landroid/content/ContentValues;Landroid/net/Uri;Z)V
    .locals 9
    .parameter "values"
    .parameter "rawContactDataUri"
    .parameter "allowInsert"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "vnd.android.cursor.item/photo"

    const-string v7, "mimetype=?"

    .line 224
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v2, "mimetype"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 230
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "mimetype=?"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/photo"

    aput-object v8, v3, v5

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "mimetype=?"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/photo"

    aput-object v8, v3, v5

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/AttachImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 251
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 242
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Problem querying raw_contacts/data"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 243
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 244
    .local v0, e:Landroid/content/OperationApplicationException;
    if-eqz p3, :cond_0

    .line 246
    invoke-direct {p0, p1, p2, v5}, Lcom/android/contacts/AttachImage;->insertPhoto(Landroid/content/ContentValues;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 248
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Problem inserting photo raw_contacts/data"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 24
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "result"

    .prologue
    .line 114
    const/16 v21, -0x1

    move/from16 v0, p2

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/AttachImage;->finish()V

    .line 175
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 119
    .restart local p1
    :cond_1
    const/16 v21, 0x1

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/AttachImage;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 123
    .local v13, myIntent:Landroid/content/Intent;
    new-instance v10, Landroid/content/Intent;

    const-string v21, "com.android.camera.action.CROP"

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v10, intent:Landroid/content/Intent;
    const-string v21, "mimeType"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 125
    .local v12, mimeType:Ljava/lang/String;
    if-nez v12, :cond_2

    .line 126
    invoke-virtual {v13}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    .line 128
    :cond_2
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    move-object v0, v10

    move-object/from16 v1, v21

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v21, "crop"

    const-string v22, "true"

    move-object v0, v10

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v21, "aspectX"

    const/16 v22, 0x1

    move-object v0, v10

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const-string v21, "aspectY"

    const/16 v22, 0x1

    move-object v0, v10

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    const-string v21, "outputX"

    const/16 v22, 0x60

    move-object v0, v10

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    const-string v21, "outputY"

    const/16 v22, 0x60

    move-object v0, v10

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    const-string v21, "return-data"

    const/16 v22, 0x1

    move-object v0, v10

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 135
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/AttachImage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 139
    .local v5, contactId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/AttachImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Lcom/android/contacts/ContactsUtils;->queryForAllRawContactIds(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;

    move-result-object v17

    .line 141
    .local v17, rawContactIdsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Long;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Ljava/lang/Long;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 145
    :cond_3
    const v21, 0x7f0b0047

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 147
    .end local v5           #contactId:J
    .end local v10           #intent:Landroid/content/Intent;
    .end local v12           #mimeType:Ljava/lang/String;
    .end local v13           #myIntent:Landroid/content/Intent;
    .end local v17           #rawContactIdsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local p1
    :cond_4
    const/16 v21, 0x2

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 149
    .local v7, extras:Landroid/os/Bundle;
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 150
    const-string v21, "data"

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/graphics/Bitmap;

    .line 151
    .local v14, photo:Landroid/graphics/Bitmap;
    if-eqz v14, :cond_5

    .line 152
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 153
    .local v20, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v21, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v22, 0x4b

    move-object v0, v14

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 155
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 156
    .local v9, imageValues:Landroid/content/ContentValues;
    const-string v21, "data15"

    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v22

    move-object v0, v9

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 157
    const-string v21, "is_super_primary"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object v0, v9

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    move-object v4, v0

    .local v4, arr$:[Ljava/lang/Long;
    array-length v11, v4

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v11, :cond_5

    aget-object v16, v4, v8

    .line 163
    .local v16, rawContactId:Ljava/lang/Long;
    const/16 v19, 0x0

    .line 165
    .local v19, shouldUpdate:Z
    sget-object v21, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-static/range {v21 .. v23}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 167
    .local v18, rawContactUri:Landroid/net/Uri;
    const-string v21, "data"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 169
    .local v15, rawContactDataUri:Landroid/net/Uri;
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v15

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/AttachImage;->insertPhoto(Landroid/content/ContentValues;Landroid/net/Uri;Z)V

    .line 160
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 173
    .end local v4           #arr$:[Ljava/lang/Long;
    .end local v8           #i$:I
    .end local v9           #imageValues:Landroid/content/ContentValues;
    .end local v11           #len$:I
    .end local v14           #photo:Landroid/graphics/Bitmap;
    .end local v15           #rawContactDataUri:Landroid/net/Uri;
    .end local v16           #rawContactId:Ljava/lang/Long;
    .end local v18           #rawContactUri:Landroid/net/Uri;
    .end local v19           #shouldUpdate:Z
    .end local v20           #stream:Ljava/io/ByteArrayOutputStream;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/AttachImage;->finish()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    if-eqz p1, :cond_0

    .line 71
    const-string v1, "raw_contact_uris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/AttachImage;->toClassArray([J)[Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    .line 78
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/AttachImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/AttachImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 79
    return-void

    .line 73
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/AttachImage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 85
    iget-object v0, p0, Lcom/android/contacts/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "raw_contact_uris"

    iget-object v1, p0, Lcom/android/contacts/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    invoke-static {v1}, Lcom/android/contacts/AttachImage;->toPrimativeArray([Ljava/lang/Long;)[J

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 88
    :cond_0
    return-void
.end method
