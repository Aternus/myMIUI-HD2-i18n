.class public Lcom/miui/milk/source/sms/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# instance fields
.field protected COLUMN_ADDRESS:Ljava/lang/String;

.field protected COLUMN_DATE:Ljava/lang/String;

.field protected COLUMN_ID:Ljava/lang/String;

.field protected CONTENT_URI:Landroid/net/Uri;

.field protected mContext:Landroid/content/Context;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->CONTENT_URI:Landroid/net/Uri;

    .line 23
    const-string v0, "_id"

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_ID:Ljava/lang/String;

    .line 24
    const-string v0, "date"

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_DATE:Ljava/lang/String;

    .line 25
    const-string v0, "address"

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_ADDRESS:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/miui/milk/source/sms/SmsManager;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mResolver:Landroid/content/ContentResolver;

    .line 32
    return-void
.end method

.method private prepareContentValues(Lcom/miui/milk/model/SmsProtos$Sms;)Landroid/content/ContentValues;
    .locals 5
    .parameter "sms"

    .prologue
    .line 154
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 156
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getType()I

    move-result v0

    .line 157
    .local v0, type:I
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 158
    const/4 v0, 0x5

    .line 161
    :cond_0
    const-string v2, "type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 163
    const-string v2, "address"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getSubject()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 166
    const-string v2, "subject"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getBody()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 169
    const-string v2, "body"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_3
    const-string v2, "date"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getDate()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 172
    const-string v2, "read"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getRead()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 173
    const-string v2, "seen"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getSeen()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 174
    const-string v2, "status"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v2, "server_date"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getServerDate()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 176
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getServiceCenter()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 177
    const-string v2, "service_center"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getServiceCenter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_4
    const-string v2, "protocol"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getProtocol()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    const-string v2, "reply_path_present"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getReplyPathPresent()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 181
    const-string v2, "locked"

    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getLocked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 182
    return-object v1
.end method

.method private setSmsField(Lcom/miui/milk/model/SmsProtos$Sms$Builder;Landroid/database/Cursor;I)V
    .locals 5
    .parameter "sms"
    .parameter "cursor"
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, columnName:Ljava/lang/String;
    const-string v2, "_id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    const-string v2, "type"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 110
    .local v1, type:I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 111
    const/4 v1, 0x5

    .line 113
    :cond_2
    invoke-virtual {p1, v1}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setType(I)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto :goto_0

    .line 115
    .end local v1           #type:I
    :cond_3
    const-string v2, "address"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 116
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setAddress(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto :goto_0

    .line 118
    :cond_4
    const-string v2, "subject"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 119
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setSubject(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto :goto_0

    .line 121
    :cond_5
    const-string v2, "body"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 122
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setBody(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto :goto_0

    .line 124
    :cond_6
    const-string v2, "date"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 125
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setDate(J)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto :goto_0

    .line 127
    :cond_7
    const-string v2, "read"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 128
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setRead(Z)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto :goto_0

    :cond_8
    move v2, v4

    goto :goto_1

    .line 130
    :cond_9
    const-string v2, "seen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 131
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_a

    move v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setSeen(Z)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto/16 :goto_0

    :cond_a
    move v2, v4

    goto :goto_2

    .line 133
    :cond_b
    const-string v2, "status"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 134
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setStatus(I)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto/16 :goto_0

    .line 136
    :cond_c
    const-string v2, "server_date"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 137
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setServerDate(J)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto/16 :goto_0

    .line 139
    :cond_d
    const-string v2, "service_center"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 140
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setServiceCenter(Ljava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto/16 :goto_0

    .line 142
    :cond_e
    const-string v2, "protocol"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 143
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setProtocol(I)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto/16 :goto_0

    .line 145
    :cond_f
    const-string v2, "reply_path_present"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 146
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_10

    move v2, v3

    :goto_3
    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setReplyPathPresent(Z)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto/16 :goto_0

    :cond_10
    move v2, v4

    goto :goto_3

    .line 148
    :cond_11
    const-string v2, "locked"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 149
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_12

    move v2, v3

    :goto_4
    invoke-virtual {p1, v2}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->setLocked(Z)Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    goto/16 :goto_0

    :cond_12
    move v2, v4

    goto :goto_4
.end method


# virtual methods
.method public add(Lcom/miui/milk/model/SmsProtos$Sms;)J
    .locals 10
    .parameter "sms"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v9, "SmsManager"

    .line 84
    const-string v7, "SmsManager"

    const-string v7, "Saving sms"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getDate()J

    move-result-wide v1

    .line 88
    .local v1, date:J
    invoke-virtual {p1}, Lcom/miui/milk/model/SmsProtos$Sms;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v0}, Lcom/miui/milk/source/sms/SmsManager;->exists(JLjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 91
    invoke-direct {p0, p1}, Lcom/miui/milk/source/sms/SmsManager;->prepareContentValues(Lcom/miui/milk/model/SmsProtos$Sms;)Landroid/content/ContentValues;

    move-result-object v6

    .line 92
    .local v6, values:Landroid/content/ContentValues;
    iget-object v7, p0, Lcom/miui/milk/source/sms/SmsManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v8, p0, Lcom/miui/milk/source/sms/SmsManager;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 93
    .local v5, insertedUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 94
    .local v3, id:J
    const-string v7, "SmsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The new sms has id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-wide v3

    .line 97
    .end local v3           #id:J
    .end local v5           #insertedUri:Landroid/net/Uri;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_0
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Cannot create sms  which is existed in db"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public exists(JLjava/lang/String;)Z
    .locals 10
    .parameter "date"
    .parameter "address"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 186
    new-array v2, v9, [Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_ID:Ljava/lang/String;

    aput-object v0, v2, v8

    .line 187
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/sms/SmsManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_DATE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_ADDRESS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object p3, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 194
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    .line 195
    .local v7, found:Z
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 196
    return v7
.end method

.method public isEmpty()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 200
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_ID:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 203
    .local v2, cols:[Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/sms/SmsManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 206
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const/4 v7, 0x0

    .line 212
    .local v7, empty:Z
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 213
    return v7

    .line 209
    .end local v7           #empty:Z
    :cond_0
    const/4 v7, 0x1

    .restart local v7       #empty:Z
    goto :goto_0
.end method

.method public load(J)Lcom/miui/milk/model/SmsProtos$Sms;
    .locals 11
    .parameter "id"

    .prologue
    const/4 v10, 0x1

    .line 35
    const-string v0, "SmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading sms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$Sms;->newBuilder()Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    move-result-object v8

    .line 39
    .local v8, sms:Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    const/4 v6, 0x0

    .line 41
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/sms/SmsManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_ID:Ljava/lang/String;

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

    const-string v5, "date DESC LIMIT 1"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 46
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    sub-int v7, v0, v10

    .local v7, index:I
    :goto_0
    if-ltz v7, :cond_0

    .line 48
    invoke-direct {p0, v8, v6, v7}, Lcom/miui/milk/source/sms/SmsManager;->setSmsField(Lcom/miui/milk/model/SmsProtos$Sms$Builder;Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 52
    .end local v7           #index:I
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 55
    :cond_1
    invoke-virtual {v8}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->build()Lcom/miui/milk/model/SmsProtos$Sms;

    move-result-object v0

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public load(JLjava/lang/String;)Lcom/miui/milk/model/SmsProtos$Sms;
    .locals 11
    .parameter "date"
    .parameter "address"

    .prologue
    const/4 v10, 0x1

    .line 60
    invoke-static {}, Lcom/miui/milk/model/SmsProtos$Sms;->newBuilder()Lcom/miui/milk/model/SmsProtos$Sms$Builder;

    move-result-object v8

    .line 62
    .local v8, sms:Lcom/miui/milk/model/SmsProtos$Sms$Builder;
    const/4 v6, 0x0

    .line 64
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/sms/SmsManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/milk/source/sms/SmsManager;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_DATE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/milk/source/sms/SmsManager;->COLUMN_ADDRESS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 71
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    sub-int v7, v0, v10

    .local v7, index:I
    :goto_0
    if-ltz v7, :cond_0

    .line 73
    invoke-direct {p0, v8, v6, v7}, Lcom/miui/milk/source/sms/SmsManager;->setSmsField(Lcom/miui/milk/model/SmsProtos$Sms$Builder;Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 77
    .end local v7           #index:I
    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 80
    :cond_1
    invoke-virtual {v8}, Lcom/miui/milk/model/SmsProtos$Sms$Builder;->build()Lcom/miui/milk/model/SmsProtos$Sms;

    move-result-object v0

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method
