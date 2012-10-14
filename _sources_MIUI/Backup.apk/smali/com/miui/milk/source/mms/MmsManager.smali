.class public Lcom/miui/milk/source/mms/MmsManager;
.super Ljava/lang/Object;
.source "MmsManager.java"


# static fields
.field private static final PDU_ADDR_COLUMNS:[Ljava/lang/String;

.field private static final PDU_COLUMNS:[Ljava/lang/String;

.field private static final PDU_PART_COLUMNS:[Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "server_date"

    aput-object v1, v0, v5

    const-string v1, "msg_box"

    aput-object v1, v0, v6

    const-string v1, "read"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "m_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ct_t"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ct_l"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "exp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "m_cls"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "m_size"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "rpt_a"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "resp_st"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "tr_id"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "retr_st"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "retr_txt"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "retr_txt_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "read_status"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ct_cls"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "resp_txt"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "d_tm"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "seen"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/milk/source/mms/MmsManager;->PDU_COLUMNS:[Ljava/lang/String;

    .line 63
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "charset"

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/milk/source/mms/MmsManager;->PDU_ADDR_COLUMNS:[Ljava/lang/String;

    .line 69
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "seq"

    aput-object v1, v0, v4

    const-string v1, "ct"

    aput-object v1, v0, v5

    const-string v1, "name"

    aput-object v1, v0, v6

    const-string v1, "chset"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "cd"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fn"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cid"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cl"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ctt_s"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ctt_t"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "text"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/milk/source/mms/MmsManager;->PDU_PART_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/miui/milk/source/mms/MmsManager;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    .line 88
    return-void
.end method

.method private buildPduAddr(Landroid/database/Cursor;)Lcom/miui/milk/model/MmsProtos$PduAddr;
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 260
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$PduAddr;->newBuilder()Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

    move-result-object v0

    .line 261
    .local v0, addr:Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->setAddress(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

    .line 264
    :cond_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 265
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->setType(I)Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

    .line 267
    :cond_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 268
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->setCharset(I)Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;

    .line 270
    :cond_2
    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$PduAddr$Builder;->build()Lcom/miui/milk/model/MmsProtos$PduAddr;

    move-result-object v1

    return-object v1
.end method

.method private buildPduPart(Landroid/database/Cursor;)Lcom/miui/milk/model/MmsProtos$PduPart;
    .locals 17
    .parameter "cursor"

    .prologue
    .line 274
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$PduPart;->newBuilder()Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    move-result-object v8

    .line 275
    .local v8, part:Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    const/4 v13, 0x0

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 277
    .local v9, partId:J
    const/4 v13, 0x1

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_0

    .line 278
    const/4 v13, 0x1

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setSequence(I)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 280
    :cond_0
    const/4 v13, 0x2

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_1

    .line 281
    const/4 v13, 0x2

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentType(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 283
    :cond_1
    const/4 v13, 0x3

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_2

    .line 284
    const/4 v13, 0x3

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setName(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 286
    :cond_2
    const/4 v13, 0x4

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_3

    .line 287
    const/4 v13, 0x4

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setCharset(I)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 289
    :cond_3
    const/4 v13, 0x5

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_4

    .line 290
    const/4 v13, 0x5

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentDisposition(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 292
    :cond_4
    const/4 v13, 0x6

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_5

    .line 293
    const/4 v13, 0x6

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setFileName(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 295
    :cond_5
    const/4 v13, 0x7

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_6

    .line 296
    const/4 v13, 0x7

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentId(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 298
    :cond_6
    const/16 v13, 0x8

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_7

    .line 299
    const/16 v13, 0x8

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentLocation(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 301
    :cond_7
    const/16 v13, 0x9

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_8

    .line 302
    const/16 v13, 0x9

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentTypeStart(I)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 304
    :cond_8
    const/16 v13, 0xa

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_9

    .line 305
    const/16 v13, 0xa

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setContentTypeType(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 307
    :cond_9
    const/16 v13, 0xb

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_a

    .line 308
    const/16 v13, 0xb

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setText(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;

    .line 311
    :cond_a
    sget-object v13, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "part/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 312
    .local v12, uri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 313
    .local v4, input:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 315
    .local v6, output:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    move-object v13, v0

    invoke-virtual {v13, v12}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 316
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 317
    .end local v6           #output:Ljava/io/ByteArrayOutputStream;
    .local v7, output:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 318
    .local v5, len:I
    const/16 v13, 0x1000

    :try_start_1
    new-array v2, v13, [B

    .line 319
    .local v2, buffer:[B
    :goto_0
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_d

    .line 320
    const/4 v13, 0x0

    invoke-virtual {v7, v2, v13, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    goto :goto_0

    .line 325
    .end local v2           #buffer:[B
    :catch_0
    move-exception v13

    move-object v6, v7

    .line 330
    .end local v5           #len:I
    .end local v7           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #output:Ljava/io/ByteArrayOutputStream;
    :goto_1
    if-eqz v4, :cond_b

    .line 332
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 337
    :cond_b
    :goto_2
    if-eqz v6, :cond_c

    .line 339
    :try_start_3
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 345
    :cond_c
    :goto_3
    invoke-virtual {v8}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->build()Lcom/miui/milk/model/MmsProtos$PduPart;

    move-result-object v13

    return-object v13

    .line 322
    .end local v6           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buffer:[B
    .restart local v5       #len:I
    .restart local v7       #output:Ljava/io/ByteArrayOutputStream;
    :cond_d
    :try_start_4
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-static {v13}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v11

    .line 324
    .local v11, string:Lcom/google/protobuf/ByteString;
    invoke-virtual {v8, v11}, Lcom/miui/milk/model/MmsProtos$PduPart$Builder;->setData(Lcom/google/protobuf/ByteString;)Lcom/miui/milk/model/MmsProtos$PduPart$Builder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    .line 330
    if-eqz v4, :cond_e

    .line 332
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 337
    :cond_e
    :goto_4
    if-eqz v7, :cond_12

    .line 339
    :try_start_6
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v6, v7

    .line 342
    .end local v7           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #output:Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 333
    .end local v6           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #output:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v3

    .line 334
    .local v3, e:Ljava/io/IOException;
    const-string v13, "MmsManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error closing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 340
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 341
    .restart local v3       #e:Ljava/io/IOException;
    const-string v13, "MmsManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error closing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 342
    .end local v7           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #output:Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 333
    .end local v2           #buffer:[B
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #len:I
    .end local v11           #string:Lcom/google/protobuf/ByteString;
    :catch_3
    move-exception v3

    .line 334
    .restart local v3       #e:Ljava/io/IOException;
    const-string v13, "MmsManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error closing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 340
    .end local v3           #e:Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 341
    .restart local v3       #e:Ljava/io/IOException;
    const-string v13, "MmsManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error closing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 327
    .end local v3           #e:Ljava/io/IOException;
    :catch_5
    move-exception v13

    move-object v3, v13

    .line 328
    .restart local v3       #e:Ljava/io/IOException;
    :goto_5
    :try_start_7
    const-string v13, "MmsManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "IO exception on "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for reading pdu part."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 330
    if-eqz v4, :cond_f

    .line 332
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 337
    :cond_f
    :goto_6
    if-eqz v6, :cond_c

    .line 339
    :try_start_9
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_3

    .line 340
    :catch_6
    move-exception v3

    .line 341
    const-string v13, "MmsManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error closing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 333
    :catch_7
    move-exception v3

    .line 334
    const-string v13, "MmsManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error closing "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 330
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    :goto_7
    if-eqz v4, :cond_10

    .line 332
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 337
    :cond_10
    :goto_8
    if-eqz v6, :cond_11

    .line 339
    :try_start_b
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 342
    :cond_11
    :goto_9
    throw v13

    .line 333
    :catch_8
    move-exception v3

    .line 334
    .restart local v3       #e:Ljava/io/IOException;
    const-string v14, "MmsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error closing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 340
    .end local v3           #e:Ljava/io/IOException;
    :catch_9
    move-exception v3

    .line 341
    .restart local v3       #e:Ljava/io/IOException;
    const-string v14, "MmsManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error closing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 330
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #len:I
    .restart local v7       #output:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v13

    move-object v6, v7

    .end local v7           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #output:Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 327
    .end local v6           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #output:Ljava/io/ByteArrayOutputStream;
    :catch_a
    move-exception v13

    move-object v3, v13

    move-object v6, v7

    .end local v7           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #output:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_5

    .line 325
    .end local v5           #len:I
    :catch_b
    move-exception v13

    goto/16 :goto_1

    .end local v6           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #buffer:[B
    .restart local v5       #len:I
    .restart local v7       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #string:Lcom/google/protobuf/ByteString;
    :cond_12
    move-object v6, v7

    .end local v7           #output:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #output:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_3
.end method

.method private getOrCreateThreadId(Lcom/miui/milk/model/MmsProtos$Pdu;)J
    .locals 6
    .parameter "pdu"

    .prologue
    .line 376
    const/4 v1, 0x0

    .line 377
    .local v1, addressType:I
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMsgType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 389
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 390
    .local v2, addresses:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getAddrsCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 391
    invoke-virtual {p1, v3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getAddrs(I)Lcom/miui/milk/model/MmsProtos$PduAddr;

    move-result-object v0

    .line 392
    .local v0, addr:Lcom/miui/milk/model/MmsProtos$PduAddr;
    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$PduAddr;->hasAddress()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$PduAddr;->hasType()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$PduAddr;->getType()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 393
    invoke-virtual {v0}, Lcom/miui/milk/model/MmsProtos$PduAddr;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 380
    .end local v0           #addr:Lcom/miui/milk/model/MmsProtos$PduAddr;
    .end local v2           #addresses:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3           #i:I
    :pswitch_1
    const/16 v1, 0x89

    .line 381
    goto :goto_0

    .line 383
    :pswitch_2
    const/16 v1, 0x97

    .line 384
    goto :goto_0

    .line 397
    .restart local v2       #addresses:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v3       #i:I
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 398
    iget-object v4, p0, Lcom/miui/milk/source/mms/MmsManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v4

    .line 400
    :goto_2
    return-wide v4

    :cond_2
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private restorePdu(JLcom/miui/milk/model/MmsProtos$Pdu;)Landroid/net/Uri;
    .locals 6
    .parameter "threadId"
    .parameter "pdu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 405
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 406
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "thread_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 408
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasDate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    const-string v1, "date"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 412
    :cond_0
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasServerDate()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 413
    const-string v1, "server_date"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getServerDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 416
    :cond_1
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMsgBox()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 417
    const-string v1, "msg_box"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMsgBox()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 420
    :cond_2
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasRead()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 421
    const-string v1, "read"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getRead()Z

    move-result v2

    if-eqz v2, :cond_1e

    move v2, v5

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 424
    :cond_3
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMId()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 425
    const-string v1, "m_id"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_4
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasSubject()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 429
    const-string v1, "sub"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_5
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasSubjectCharset()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 433
    const-string v1, "sub_cs"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getSubjectCharset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 436
    :cond_6
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasContentType()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 437
    const-string v1, "ct_t"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_7
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasContentLocation()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 441
    const-string v1, "ct_l"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getContentLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    :cond_8
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasExpiry()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 445
    const-string v1, "exp"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getExpiry()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 448
    :cond_9
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMsgClass()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 449
    const-string v1, "m_cls"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMsgClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_a
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMsgType()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 453
    const-string v1, "m_type"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMsgType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 456
    :cond_b
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMmsVersion()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 457
    const-string v1, "v"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMmsVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    :cond_c
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasMsgSize()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 461
    const-string v1, "m_size"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getMsgSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 464
    :cond_d
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasPriority()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 465
    const-string v1, "pri"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getPriority()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 468
    :cond_e
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasReadReport()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 469
    const-string v1, "rr"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getReadReport()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 472
    :cond_f
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasReportAllowed()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 473
    const-string v1, "rpt_a"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getReportAllowed()Z

    move-result v2

    if-eqz v2, :cond_1f

    move v2, v5

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 476
    :cond_10
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasResponseStatus()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 477
    const-string v1, "resp_st"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getResponseStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 480
    :cond_11
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 481
    const-string v1, "st"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 484
    :cond_12
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasTransactionId()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 485
    const-string v1, "tr_id"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_13
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasRetrieveStatus()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 489
    const-string v1, "retr_st"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getRetrieveStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 492
    :cond_14
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasRetrieveText()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 493
    const-string v1, "retr_txt"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getRetrieveText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_15
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasRetrieveTextCharset()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 497
    const-string v1, "retr_txt_cs"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getRetrieveTextCharset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 500
    :cond_16
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasReadStatus()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 501
    const-string v1, "read_status"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getReadStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 504
    :cond_17
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasContentClass()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 505
    const-string v1, "ct_cls"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getContentClass()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 508
    :cond_18
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasResponseText()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 509
    const-string v1, "resp_txt"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getResponseText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_19
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasDeliveryTime()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 513
    const-string v1, "d_tm"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getDeliveryTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 516
    :cond_1a
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasDeliveryReport()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 517
    const-string v1, "d_rpt"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getDeliveryReport()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 520
    :cond_1b
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasLocked()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 521
    const-string v1, "locked"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getLocked()Z

    move-result v2

    if-eqz v2, :cond_20

    move v2, v5

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 524
    :cond_1c
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->hasSeen()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 525
    const-string v1, "seen"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$Pdu;->getSeen()Z

    move-result v2

    if-eqz v2, :cond_21

    move v2, v5

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 528
    :cond_1d
    iget-object v1, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    :cond_1e
    move v2, v4

    .line 421
    goto/16 :goto_0

    :cond_1f
    move v2, v4

    .line 473
    goto/16 :goto_1

    :cond_20
    move v2, v4

    .line 521
    goto :goto_2

    :cond_21
    move v2, v4

    .line 525
    goto :goto_3
.end method

.method private restorePduAddr(JLcom/miui/milk/model/MmsProtos$PduAddr;)Landroid/net/Uri;
    .locals 5
    .parameter "msgId"
    .parameter "addr"

    .prologue
    .line 532
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 533
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduAddr;->hasAddress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 534
    const-string v2, "address"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduAddr;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    :cond_0
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduAddr;->hasType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 538
    const-string v2, "type"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduAddr;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 541
    :cond_1
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduAddr;->hasCharset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 542
    const-string v2, "charset"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduAddr;->getCharset()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 545
    :cond_2
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/addr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 546
    .local v0, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private restorePduPart(JLcom/miui/milk/model/MmsProtos$PduPart;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const-string v6, "Error closing "

    const-string v5, "MmsManager"

    .line 550
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 551
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasSequence()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    const-string v1, "seq"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getSequence()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 555
    :cond_0
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 556
    const-string v1, "ct"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :cond_1
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasName()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 560
    const-string v1, "name"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :cond_2
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasCharset()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 564
    const-string v1, "chset"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getCharset()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 567
    :cond_3
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentDisposition()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 568
    const-string v1, "cd"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentDisposition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_4
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasFileName()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 572
    const-string v1, "fn"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_5
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentId()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 576
    const-string v1, "cid"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_6
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentLocation()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 580
    const-string v1, "cl"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :cond_7
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentTypeStart()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 584
    const-string v1, "ctt_s"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentTypeStart()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 587
    :cond_8
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasContentTypeType()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 588
    const-string v1, "ctt_t"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getContentTypeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_9
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasText()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 592
    const-string v1, "text"

    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :cond_a
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/part"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 596
    iget-object v2, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 597
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->hasData()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 598
    invoke-virtual {p3}, Lcom/miui/milk/model/MmsProtos$PduPart;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 599
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    .line 600
    const/4 v2, 0x0

    .line 602
    :try_start_0
    iget-object v3, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 603
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 607
    if-eqz v2, :cond_b

    .line 609
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 616
    :cond_b
    :goto_0
    return-void

    .line 610
    :catch_0
    move-exception v1

    .line 611
    const-string v1, "MmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error closing "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 604
    :catch_1
    move-exception v1

    move-object v1, v2

    .line 605
    :goto_1
    :try_start_3
    const-string v2, "MmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO exception for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 607
    if-eqz v1, :cond_b

    .line 609
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 610
    :catch_2
    move-exception v1

    .line 611
    const-string v1, "MmsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error closing "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 607
    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v2, :cond_c

    .line 609
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 612
    :cond_c
    :goto_3
    throw v1

    .line 610
    :catch_3
    move-exception v2

    .line 611
    const-string v2, "MmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 607
    :catchall_1
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_2

    .line 604
    :catch_4
    move-exception v1

    move-object v1, v2

    goto :goto_1
.end method

.method private setBasicPduFields(Lcom/miui/milk/model/MmsProtos$Pdu$Builder;Landroid/database/Cursor;)V
    .locals 7
    .parameter "pdu"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 164
    invoke-interface {p2, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 167
    :cond_0
    invoke-interface {p2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setDate(J)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 170
    :cond_1
    invoke-interface {p2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setServerDate(J)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 173
    :cond_2
    invoke-interface {p2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 174
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMsgBox(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 176
    :cond_3
    invoke-interface {p2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 177
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1f

    move v0, v3

    :goto_0
    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setRead(Z)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 179
    :cond_4
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 180
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMId(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 182
    :cond_5
    const/4 v0, 0x6

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 183
    const/4 v0, 0x6

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setSubject(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 185
    :cond_6
    const/4 v0, 0x7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 186
    const/4 v0, 0x7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setSubjectCharset(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 188
    :cond_7
    const/16 v0, 0x8

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 189
    const/16 v0, 0x8

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setContentType(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 191
    :cond_8
    const/16 v0, 0x9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 192
    const/16 v0, 0x9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setContentLocation(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 194
    :cond_9
    const/16 v0, 0xa

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 195
    const/16 v0, 0xa

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setExpiry(J)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 197
    :cond_a
    const/16 v0, 0xb

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 198
    const/16 v0, 0xb

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMsgClass(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 200
    :cond_b
    const/16 v0, 0xc

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 201
    const/16 v0, 0xc

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMsgType(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 203
    :cond_c
    const/16 v0, 0xd

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 204
    const/16 v0, 0xd

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMmsVersion(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 206
    :cond_d
    const/16 v0, 0xe

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 207
    const/16 v0, 0xe

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setMsgSize(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 209
    :cond_e
    const/16 v0, 0xf

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 210
    const/16 v0, 0xf

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setPriority(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 212
    :cond_f
    const/16 v0, 0x10

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 213
    const/16 v0, 0x10

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setReadReport(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 215
    :cond_10
    const/16 v0, 0x11

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 216
    const/16 v0, 0x11

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_20

    move v0, v3

    :goto_1
    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setReportAllowed(Z)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 218
    :cond_11
    const/16 v0, 0x12

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 219
    const/16 v0, 0x12

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setResponseStatus(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 221
    :cond_12
    const/16 v0, 0x13

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 222
    const/16 v0, 0x13

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setStatus(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 224
    :cond_13
    const/16 v0, 0x14

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 225
    const/16 v0, 0x14

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setTransactionId(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 227
    :cond_14
    const/16 v0, 0x15

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 228
    const/16 v0, 0x15

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setRetrieveStatus(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 230
    :cond_15
    const/16 v0, 0x16

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 231
    const/16 v0, 0x16

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setRetrieveText(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 233
    :cond_16
    const/16 v0, 0x17

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 234
    const/16 v0, 0x17

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setRetrieveTextCharset(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 236
    :cond_17
    const/16 v0, 0x18

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 237
    const/16 v0, 0x18

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setReadStatus(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 239
    :cond_18
    const/16 v0, 0x19

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 240
    const/16 v0, 0x19

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setContentClass(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 242
    :cond_19
    const/16 v0, 0x1a

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 243
    const/16 v0, 0x1a

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setResponseText(Ljava/lang/String;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 245
    :cond_1a
    const/16 v0, 0x1b

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 246
    const/16 v0, 0x1b

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setDeliveryTime(J)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 248
    :cond_1b
    const/16 v0, 0x1c

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 249
    const/16 v0, 0x1c

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setDeliveryReport(I)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 251
    :cond_1c
    const/16 v0, 0x1d

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 252
    const/16 v0, 0x1d

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_21

    move v0, v3

    :goto_2
    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setLocked(Z)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 254
    :cond_1d
    const/16 v0, 0x1e

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 255
    const/16 v0, 0x1e

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_22

    move v0, v3

    :goto_3
    invoke-virtual {p1, v0}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->setSeen(Z)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    .line 257
    :cond_1e
    return-void

    :cond_1f
    move v0, v2

    .line 177
    goto/16 :goto_0

    :cond_20
    move v0, v2

    .line 216
    goto/16 :goto_1

    :cond_21
    move v0, v2

    .line 252
    goto :goto_2

    :cond_22
    move v0, v2

    .line 255
    goto :goto_3
.end method


# virtual methods
.method public backupToProtocolBuffer(J)Lcom/miui/milk/model/MmsProtos$Pdu;
    .locals 10
    .parameter "id"

    .prologue
    .line 91
    const-string v0, "MmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading mms: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lcom/miui/milk/model/MmsProtos$Pdu;->newBuilder()Lcom/miui/milk/model/MmsProtos$Pdu$Builder;

    move-result-object v9

    .line 95
    .local v9, pdu:Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    const/4 v7, 0x0

    .line 97
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 98
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/miui/milk/source/mms/MmsManager;->PDU_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 99
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0, v9, v7}, Lcom/miui/milk/source/mms/MmsManager;->setBasicPduFields(Lcom/miui/milk/model/MmsProtos$Pdu$Builder;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_1
    :try_start_1
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 108
    iget-object v0, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/miui/milk/source/mms/MmsManager;->PDU_ADDR_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 109
    if-eqz v7, :cond_4

    .line 110
    const/4 v0, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 111
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    invoke-direct {p0, v7}, Lcom/miui/milk/source/mms/MmsManager;->buildPduAddr(Landroid/database/Cursor;)Lcom/miui/milk/model/MmsProtos$PduAddr;

    move-result-object v6

    .line 113
    .local v6, addr:Lcom/miui/milk/model/MmsProtos$PduAddr;
    invoke-virtual {v9, v6}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->addAddrs(Lcom/miui/milk/model/MmsProtos$PduAddr;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    .end local v6           #addr:Lcom/miui/milk/model/MmsProtos$PduAddr;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 103
    .end local v1           #uri:Landroid/net/Uri;
    :catchall_1
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 117
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_5
    :try_start_2
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/part"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 122
    iget-object v0, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/miui/milk/source/mms/MmsManager;->PDU_PART_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 123
    if-eqz v7, :cond_7

    .line 124
    const/4 v0, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 125
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 126
    invoke-direct {p0, v7}, Lcom/miui/milk/source/mms/MmsManager;->buildPduPart(Landroid/database/Cursor;)Lcom/miui/milk/model/MmsProtos$PduPart;

    move-result-object v8

    .line 127
    .local v8, part:Lcom/miui/milk/model/MmsProtos$PduPart;
    invoke-virtual {v9, v8}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->addPduParts(Lcom/miui/milk/model/MmsProtos$PduPart;)Lcom/miui/milk/model/MmsProtos$Pdu$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 131
    .end local v8           #part:Lcom/miui/milk/model/MmsProtos$PduPart;
    :catchall_2
    move-exception v0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 133
    :cond_8
    invoke-virtual {v9}, Lcom/miui/milk/model/MmsProtos$Pdu$Builder;->build()Lcom/miui/milk/model/MmsProtos$Pdu;

    move-result-object v0

    return-object v0
.end method

.method public exists(J)Z
    .locals 10
    .parameter "date"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 619
    const/4 v6, 0x0

    .line 621
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/mms/MmsManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const-string v3, "date= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 628
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    .line 632
    if-eqz v6, :cond_0

    .line 633
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v9

    .line 636
    :goto_0
    return v0

    .line 632
    :cond_1
    if-eqz v6, :cond_2

    .line 633
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 636
    goto :goto_0

    .line 632
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 633
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public restoreFromProtocolBuffer(Lcom/miui/milk/model/MmsProtos$Pdu;)Z
    .locals 11
    .parameter "pdu"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v10, "MmsManager"

    .line 350
    const-string v8, "MmsManager"

    const-string v8, "Saving mms"

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getDate()J

    move-result-wide v0

    .line 354
    .local v0, date:J
    invoke-virtual {p0, v0, v1}, Lcom/miui/milk/source/mms/MmsManager;->exists(J)Z

    move-result v8

    if-nez v8, :cond_2

    .line 356
    invoke-direct {p0, p1}, Lcom/miui/milk/source/mms/MmsManager;->getOrCreateThreadId(Lcom/miui/milk/model/MmsProtos$Pdu;)J

    move-result-wide v6

    .line 357
    .local v6, threadId:J
    invoke-direct {p0, v6, v7, p1}, Lcom/miui/milk/source/mms/MmsManager;->restorePdu(JLcom/miui/milk/model/MmsProtos$Pdu;)Landroid/net/Uri;

    move-result-object v3

    .line 358
    .local v3, insertedUri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 360
    .local v4, msgId:J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getAddrsCount()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 361
    invoke-virtual {p1, v2}, Lcom/miui/milk/model/MmsProtos$Pdu;->getAddrs(I)Lcom/miui/milk/model/MmsProtos$PduAddr;

    move-result-object v8

    invoke-direct {p0, v4, v5, v8}, Lcom/miui/milk/source/mms/MmsManager;->restorePduAddr(JLcom/miui/milk/model/MmsProtos$PduAddr;)Landroid/net/Uri;

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/miui/milk/model/MmsProtos$Pdu;->getPduPartsCount()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 365
    invoke-virtual {p1, v2}, Lcom/miui/milk/model/MmsProtos$Pdu;->getPduParts(I)Lcom/miui/milk/model/MmsProtos$PduPart;

    move-result-object v8

    invoke-direct {p0, v4, v5, v8}, Lcom/miui/milk/source/mms/MmsManager;->restorePduPart(JLcom/miui/milk/model/MmsProtos$PduPart;)V

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 367
    :cond_1
    const-string v8, "MmsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The new mms has id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v8, 0x1

    .line 371
    .end local v2           #i:I
    .end local v3           #insertedUri:Landroid/net/Uri;
    .end local v4           #msgId:J
    .end local v6           #threadId:J
    :goto_2
    return v8

    .line 370
    :cond_2
    const-string v8, "MmsManager"

    const-string v8, "Cannot create mms  which is existed in db"

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v8, 0x0

    goto :goto_2
.end method
