.class public Lcom/android/voicedialer/VoiceContact;
.super Ljava/lang/Object;
.source "VoiceContact.java"


# instance fields
.field public final mContactId:J

.field public final mHomeId:J

.field public final mMobileId:J

.field public final mName:Ljava/lang/String;

.field public final mOtherId:J

.field public final mPrimaryId:J

.field public final mWorkId:J


# direct methods
.method private constructor <init>(Ljava/lang/String;JJJJJJ)V
    .locals 0
    .parameter "name"
    .parameter "contactId"
    .parameter "primaryId"
    .parameter "homeId"
    .parameter "mobileId"
    .parameter "workId"
    .parameter "otherId"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/voicedialer/VoiceContact;->mName:Ljava/lang/String;

    .line 68
    iput-wide p2, p0, Lcom/android/voicedialer/VoiceContact;->mContactId:J

    .line 69
    iput-wide p4, p0, Lcom/android/voicedialer/VoiceContact;->mPrimaryId:J

    .line 70
    iput-wide p6, p0, Lcom/android/voicedialer/VoiceContact;->mHomeId:J

    .line 71
    iput-wide p8, p0, Lcom/android/voicedialer/VoiceContact;->mMobileId:J

    .line 72
    iput-wide p10, p0, Lcom/android/voicedialer/VoiceContact;->mWorkId:J

    .line 73
    iput-wide p12, p0, Lcom/android/voicedialer/VoiceContact;->mOtherId:J

    .line 74
    return-void
.end method

.method public static getVoiceContacts(Landroid/app/Activity;)Ljava/util/List;
    .locals 32
    .parameter "activity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/voicedialer/VoiceContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    const-string v2, "VoiceContact"

    const-string v3, "VoiceContact.getVoiceContacts"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v19, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/android/voicedialer/VoiceContact;>;"
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "data2"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "is_primary"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "data3"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "display_name"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "contact_id"

    aput-object v3, v4, v2

    .line 122
    .local v4, phonesProjection:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "data1 NOT NULL"

    const/4 v6, 0x0

    const-string v7, "last_time_contacted DESC, display_name ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 127
    .local p0, cursor:Landroid/database/Cursor;
    const-string v2, "_id"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 128
    .local v29, phoneIdColumn:I
    const-string v2, "data2"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 129
    .local v31, typeColumn:I
    const-string v2, "is_primary"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 130
    .local v4, isPrimaryColumn:I
    const-string v2, "data3"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 131
    .local v21, labelColumn:I
    const-string v2, "display_name"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 132
    .local v23, nameColumn:I
    const-string v2, "contact_id"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 135
    .local v26, personIdColumn:I
    const/4 v6, 0x0

    .line 136
    .local v6, name:Ljava/lang/String;
    const-wide/16 v7, -0x1

    .line 137
    .local v7, personId:J
    const-wide/16 v9, -0x1

    .line 138
    .local v9, primaryId:J
    const-wide/16 v11, -0x1

    .line 139
    .local v11, homeId:J
    const-wide/16 v13, -0x1

    .line 140
    .local v13, mobileId:J
    const-wide/16 v15, -0x1

    .line 141
    .local v15, workId:J
    const-wide/16 v17, -0x1

    .line 144
    .local v17, otherId:J
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_9

    .line 145
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 146
    .local v27, phoneIdAtCursor:J
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 147
    .local v30, typeAtCursor:I
    move-object/from16 v0, p0

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 148
    .local v2, isPrimaryAtCursor:J
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 149
    .local v20, labelAtCursor:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 150
    .local v22, nameAtCursor:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 165
    .local v24, personIdAtCursor:J
    if-eqz v6, :cond_0

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 166
    new-instance v5, Lcom/android/voicedialer/VoiceContact;

    invoke-direct/range {v5 .. v18}, Lcom/android/voicedialer/VoiceContact;-><init>(Ljava/lang/String;JJJJJJ)V

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    const/4 v6, 0x0

    .line 172
    :cond_0
    if-nez v6, :cond_1

    .line 173
    move-object/from16 v6, v22

    .line 174
    move-wide/from16 v7, v24

    .line 175
    const-wide/16 v9, -0x1

    .line 176
    const-wide/16 v11, -0x1

    .line 177
    const-wide/16 v13, -0x1

    .line 178
    const-wide/16 v15, -0x1

    .line 179
    const-wide/16 v17, -0x1

    .line 183
    :cond_1
    if-nez v30, :cond_b

    if-eqz v20, :cond_b

    .line 185
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, label:Ljava/lang/String;
    const-string v20, "home"

    .end local v20           #labelAtCursor:Ljava/lang/String;
    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    const-string v20, "house"

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 187
    :cond_2
    const/4 v5, 0x1

    .line 201
    .end local v30           #typeAtCursor:I
    .local v5, typeAtCursor:I
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 144
    .end local v2           #isPrimaryAtCursor:J
    .end local v24           #personIdAtCursor:J
    :cond_3
    :goto_2
    :pswitch_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 189
    .restart local v2       #isPrimaryAtCursor:J
    .local v5, label:Ljava/lang/String;
    .restart local v24       #personIdAtCursor:J
    .restart local v30       #typeAtCursor:I
    :cond_4
    const-string v20, "mobile"

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    const-string v20, "cell"

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 190
    :cond_5
    const/4 v5, 0x2

    .end local v30           #typeAtCursor:I
    .local v5, typeAtCursor:I
    goto :goto_1

    .line 192
    .local v5, label:Ljava/lang/String;
    .restart local v30       #typeAtCursor:I
    :cond_6
    const-string v20, "work"

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    const-string v20, "office"

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 193
    :cond_7
    const/4 v5, 0x3

    .end local v30           #typeAtCursor:I
    .local v5, typeAtCursor:I
    goto :goto_1

    .line 195
    .local v5, label:Ljava/lang/String;
    .restart local v30       #typeAtCursor:I
    :cond_8
    const-string v20, "other"

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .end local v5           #label:Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 196
    const/4 v5, 0x7

    .end local v30           #typeAtCursor:I
    .local v5, typeAtCursor:I
    goto :goto_1

    .line 203
    :pswitch_1
    move-wide/from16 v11, v27

    .line 204
    const-wide/16 v24, 0x0

    cmp-long v2, v2, v24

    if-eqz v2, :cond_3

    .line 205
    .end local v2           #isPrimaryAtCursor:J
    .end local v24           #personIdAtCursor:J
    move-wide/from16 v9, v27

    goto :goto_2

    .line 209
    .restart local v2       #isPrimaryAtCursor:J
    .restart local v24       #personIdAtCursor:J
    :pswitch_2
    move-wide/from16 v13, v27

    .line 210
    const-wide/16 v24, 0x0

    cmp-long v2, v2, v24

    if-eqz v2, :cond_3

    .line 211
    .end local v2           #isPrimaryAtCursor:J
    .end local v24           #personIdAtCursor:J
    move-wide/from16 v9, v27

    goto :goto_2

    .line 215
    .restart local v2       #isPrimaryAtCursor:J
    .restart local v24       #personIdAtCursor:J
    :pswitch_3
    move-wide/from16 v15, v27

    .line 216
    const-wide/16 v24, 0x0

    cmp-long v2, v2, v24

    if-eqz v2, :cond_3

    .line 217
    .end local v2           #isPrimaryAtCursor:J
    .end local v24           #personIdAtCursor:J
    move-wide/from16 v9, v27

    goto :goto_2

    .line 221
    .restart local v2       #isPrimaryAtCursor:J
    .restart local v24       #personIdAtCursor:J
    :pswitch_4
    move-wide/from16 v17, v27

    .line 222
    const-wide/16 v24, 0x0

    cmp-long v2, v2, v24

    if-eqz v2, :cond_3

    .line 223
    .end local v2           #isPrimaryAtCursor:J
    .end local v24           #personIdAtCursor:J
    move-wide/from16 v9, v27

    goto :goto_2

    .line 230
    .end local v5           #typeAtCursor:I
    .end local v22           #nameAtCursor:Ljava/lang/String;
    .end local v27           #phoneIdAtCursor:J
    :cond_9
    if-eqz v6, :cond_a

    .line 231
    new-instance v5, Lcom/android/voicedialer/VoiceContact;

    invoke-direct/range {v5 .. v18}, Lcom/android/voicedialer/VoiceContact;-><init>(Ljava/lang/String;JJJJJJ)V

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_a
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    .line 238
    const-string p0, "VoiceContact"

    .end local p0           #cursor:Landroid/database/Cursor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoiceContact.getVoiceContacts "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-object v19

    .restart local v2       #isPrimaryAtCursor:J
    .restart local v22       #nameAtCursor:Ljava/lang/String;
    .restart local v24       #personIdAtCursor:J
    .restart local v27       #phoneIdAtCursor:J
    .restart local v30       #typeAtCursor:I
    .restart local p0       #cursor:Landroid/database/Cursor;
    :cond_b
    move/from16 v5, v30

    .end local v30           #typeAtCursor:I
    .restart local v5       #typeAtCursor:I
    goto/16 :goto_1

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getVoiceContactsFromFile(Ljava/io/File;)Ljava/util/List;
    .locals 20
    .parameter "contactsFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/voicedialer/VoiceContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    const-string v3, "VoiceContact"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVoiceContactsFromFile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v18, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/android/voicedialer/VoiceContact;>;"
    const/4 v3, 0x0

    .line 256
    .local v3, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 p0, 0x2000

    move-object/from16 v0, v17

    move-object v1, v4

    move/from16 v2, p0

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v3           #br:Ljava/io/BufferedReader;
    .end local p0
    .local v17, br:Ljava/io/BufferedReader;
    const/16 p0, 0x1

    .local p0, id:I
    :goto_0
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 259
    new-instance v3, Lcom/android/voicedialer/VoiceContact;

    move/from16 v0, p0

    int-to-long v0, v0

    move-wide v5, v0

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const-wide/16 v13, -0x1

    const-wide/16 v15, -0x1

    invoke-direct/range {v3 .. v16}, Lcom/android/voicedialer/VoiceContact;-><init>(Ljava/lang/String;JJJJJJ)V

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 258
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 268
    :cond_0
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v4           #name:Ljava/lang/String;
    .end local p0           #id:I
    :goto_1
    move-object/from16 p0, v17

    .line 274
    .end local v17           #br:Ljava/io/BufferedReader;
    .local p0, br:Ljava/io/BufferedReader;
    :goto_2
    const-string p0, "VoiceContact"

    .end local p0           #br:Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVoiceContactsFromFile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-object v18

    .line 263
    .restart local v3       #br:Ljava/io/BufferedReader;
    :catch_0
    move-exception p0

    move-object/from16 v19, p0

    move-object/from16 p0, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local p0       #br:Ljava/io/BufferedReader;
    move-object/from16 v3, v19

    .line 264
    .local v3, e:Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v4, "VoiceContact"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVoiceContactsFromFile failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .end local v3           #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 268
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 269
    :catch_1
    move-exception v3

    .line 270
    .restart local v3       #e:Ljava/io/IOException;
    const-string v4, "VoiceContact"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVoiceContactsFromFile failed during close "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .end local v3           #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 267
    .end local p0           #br:Ljava/io/BufferedReader;
    .local v3, br:Ljava/io/BufferedReader;
    :catchall_0
    move-exception p0

    move-object/from16 v19, p0

    move-object/from16 p0, v3

    .end local v3           #br:Ljava/io/BufferedReader;
    .restart local p0       #br:Ljava/io/BufferedReader;
    move-object/from16 v3, v19

    .line 268
    :goto_4
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 267
    .end local p0           #br:Ljava/io/BufferedReader;
    :goto_5
    throw v3

    .line 269
    .restart local p0       #br:Ljava/io/BufferedReader;
    :catch_2
    move-exception p0

    .line 270
    .local p0, e:Ljava/io/IOException;
    const-string v4, "VoiceContact"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVoiceContactsFromFile failed during close "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #e:Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 269
    .restart local v4       #name:Ljava/lang/String;
    .restart local v17       #br:Ljava/io/BufferedReader;
    .local p0, id:I
    :catch_3
    move-exception p0

    .line 270
    .local p0, e:Ljava/io/IOException;
    const-string v3, "VoiceContact"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #name:Ljava/lang/String;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVoiceContactsFromFile failed during close "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #e:Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 267
    .local p0, id:I
    :catchall_1
    move-exception p0

    move-object/from16 v3, p0

    move-object/from16 p0, v17

    .end local v17           #br:Ljava/io/BufferedReader;
    .local p0, br:Ljava/io/BufferedReader;
    goto :goto_4

    :catchall_2
    move-exception v3

    goto :goto_4

    .line 263
    .restart local v17       #br:Ljava/io/BufferedReader;
    .local p0, id:I
    :catch_4
    move-exception p0

    move-object/from16 v3, p0

    move-object/from16 p0, v17

    .end local v17           #br:Ljava/io/BufferedReader;
    .local p0, br:Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

.method public static redialNumber(Landroid/app/Activity;)Ljava/lang/String;
    .locals 11
    .parameter "activity"

    .prologue
    const/4 v9, 0x1

    const-string v10, "number"

    .line 284
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "number"

    aput-object v10, v2, v3

    const-string v3, "type=2"

    const/4 v4, 0x0

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 290
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 291
    .local v8, number:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v9, :cond_0

    .line 292
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 293
    const-string v0, "number"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 294
    .local v6, column:I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 296
    .end local v6           #column:I
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 298
    const-string v0, "VoiceContact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "redialNumber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-object v8
.end method


# virtual methods
.method public hashCode()I
    .locals 5

    .prologue
    const v4, 0x60000005

    .line 78
    const v0, 0x60000005

    .line 79
    .local v0, LARGE_PRIME:I
    const/4 v1, 0x0

    .line 80
    .local v1, hash:I
    iget-wide v2, p0, Lcom/android/voicedialer/VoiceContact;->mContactId:J

    long-to-int v2, v2

    add-int/2addr v2, v1

    mul-int v1, v4, v2

    .line 81
    iget-wide v2, p0, Lcom/android/voicedialer/VoiceContact;->mPrimaryId:J

    long-to-int v2, v2

    add-int/2addr v2, v1

    mul-int v1, v4, v2

    .line 82
    iget-wide v2, p0, Lcom/android/voicedialer/VoiceContact;->mHomeId:J

    long-to-int v2, v2

    add-int/2addr v2, v1

    mul-int v1, v4, v2

    .line 83
    iget-wide v2, p0, Lcom/android/voicedialer/VoiceContact;->mMobileId:J

    long-to-int v2, v2

    add-int/2addr v2, v1

    mul-int v1, v4, v2

    .line 84
    iget-wide v2, p0, Lcom/android/voicedialer/VoiceContact;->mWorkId:J

    long-to-int v2, v2

    add-int/2addr v2, v1

    mul-int v1, v4, v2

    .line 85
    iget-wide v2, p0, Lcom/android/voicedialer/VoiceContact;->mOtherId:J

    long-to-int v2, v2

    add-int/2addr v2, v1

    mul-int v1, v4, v2

    .line 86
    iget-object v2, p0, Lcom/android/voicedialer/VoiceContact;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicedialer/VoiceContact;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPersonId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/voicedialer/VoiceContact;->mContactId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPrimaryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/voicedialer/VoiceContact;->mPrimaryId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHomeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/voicedialer/VoiceContact;->mHomeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMobileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/voicedialer/VoiceContact;->mMobileId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mWorkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/voicedialer/VoiceContact;->mWorkId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mOtherId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/voicedialer/VoiceContact;->mOtherId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
