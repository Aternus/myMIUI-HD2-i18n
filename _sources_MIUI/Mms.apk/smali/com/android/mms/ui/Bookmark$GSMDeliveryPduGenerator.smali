.class Lcom/android/mms/ui/Bookmark$GSMDeliveryPduGenerator;
.super Ljava/lang/Object;
.source "Bookmark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/Bookmark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GSMDeliveryPduGenerator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/Bookmark;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/Bookmark;)V
    .locals 0
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/mms/ui/Bookmark$GSMDeliveryPduGenerator;->this$0:Lcom/android/mms/ui/Bookmark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .parameter "message"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 534
    const-string v3, "utf-16be"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 536
    .local v1, textPart:[B
    if-eqz p2, :cond_0

    .line 538
    array-length v3, p2

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 540
    .local v2, userData:[B
    array-length v3, p2

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 541
    array-length v3, p2

    invoke-static {p2, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    array-length v3, p2

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 546
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 547
    .local v0, ret:[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 548
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 549
    return-object v0

    .line 544
    .end local v0           #ret:[B
    .end local v2           #userData:[B
    :cond_0
    move-object v2, v1

    .restart local v2       #userData:[B
    goto :goto_0
.end method

.method private getDeliveryPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/mms/ui/Bookmark$DeliveryPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 7
    .parameter "scAddress"
    .parameter "originatorAddress"
    .parameter "mtiByte"
    .parameter "ret"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 554
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 556
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p1, :cond_0

    .line 557
    const/4 v2, 0x0

    iput-object v2, p4, Lcom/android/mms/ui/Bookmark$DeliveryPdu;->encodedScAddress:[B

    .line 563
    :goto_0
    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 567
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 572
    .local v1, daBytes:[B
    array-length v2, v1

    sub-int/2addr v2, v6

    mul-int/lit8 v2, v2, 0x2

    array-length v3, v1

    sub-int/2addr v3, v6

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0xf0

    if-ne v3, v4, :cond_1

    move v3, v6

    :goto_1
    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 576
    array-length v2, v1

    invoke-virtual {v0, v1, v5, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 579
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 580
    return-object v0

    .line 559
    .end local v1           #daBytes:[B
    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/mms/ui/Bookmark$DeliveryPdu;->encodedScAddress:[B

    goto :goto_0

    .restart local v1       #daBytes:[B
    :cond_1
    move v3, v5

    .line 572
    goto :goto_1
.end method

.method private writeTimeStampStringForDate(JLjava/io/ByteArrayOutputStream;)V
    .locals 16
    .parameter "timestamp"
    .parameter "bo"

    .prologue
    .line 498
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 499
    .local v3, cal:Ljava/util/Calendar;
    move-object v0, v3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 500
    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/16 v15, 0x7d0

    sub-int v13, v14, v15

    .line 501
    .local v13, year:I
    const/4 v14, 0x2

    invoke-virtual {v3, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/lit8 v8, v14, 0x1

    .line 502
    .local v8, month:I
    const/4 v14, 0x5

    invoke-virtual {v3, v14}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 503
    .local v4, dayOfMonth:I
    const/16 v14, 0xb

    invoke-virtual {v3, v14}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 504
    .local v5, hourOfDay:I
    const/16 v14, 0xc

    invoke-virtual {v3, v14}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 505
    .local v7, minute:I
    const/16 v14, 0xd

    invoke-virtual {v3, v14}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 506
    .local v10, sec:I
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v11

    .line 507
    .local v11, tz:Ljava/util/TimeZone;
    move-object v0, v11

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v9

    .line 508
    .local v9, offset:I
    const v14, 0xea60

    div-int v6, v9, v14

    .line 509
    .local v6, minOffset:I
    div-int/lit8 v12, v6, 0xf

    .line 511
    .local v12, tzValue:I
    if-gez v12, :cond_0

    .line 512
    const/16 v14, 0x80

    sub-int v12, v14, v12

    .line 515
    :cond_0
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/Bookmark$GSMDeliveryPduGenerator;->createSwappedBCD(I)I

    move-result v14

    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 516
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/Bookmark$GSMDeliveryPduGenerator;->createSwappedBCD(I)I

    move-result v14

    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 517
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/Bookmark$GSMDeliveryPduGenerator;->createSwappedBCD(I)I

    move-result v14

    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 518
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/Bookmark$GSMDeliveryPduGenerator;->createSwappedBCD(I)I

    move-result v14

    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 519
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/Bookmark$GSMDeliveryPduGenerator;->createSwappedBCD(I)I

    move-result v14

    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 520
    move-object/from16 v0, p0

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/Bookmark$GSMDeliveryPduGenerator;->createSwappedBCD(I)I

    move-result v14

    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 521
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/Bookmark$GSMDeliveryPduGenerator;->createSwappedBCD(I)I

    move-result v14

    move-object/from16 v0, p3

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 522
    return-void
.end method


# virtual methods
.method public createSwappedBCD(I)I
    .locals 4
    .parameter "decimal"

    .prologue
    .line 526
    and-int/lit16 v2, p1, 0xff

    div-int/lit8 v1, v2, 0xa

    .line 527
    .local v1, tens:I
    and-int/lit16 v2, p1, 0xff

    mul-int/lit8 v3, v1, 0xa

    sub-int v0, v2, v3

    .line 528
    .local v0, ones:I
    shl-int/lit8 v2, v0, 0x4

    or-int/2addr v2, v1

    return v2
.end method

.method public getDeliveryPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/android/mms/ui/Bookmark$DeliveryPdu;
    .locals 9
    .parameter "scAddress"
    .parameter "originatorAddress"
    .parameter "message"
    .parameter "time"

    .prologue
    .line 436
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 437
    :cond_0
    const/4 v7, 0x0

    .line 494
    :goto_0
    return-object v7

    .line 440
    :cond_1
    new-instance v4, Lcom/android/mms/ui/Bookmark$DeliveryPdu;

    iget-object v7, p0, Lcom/android/mms/ui/Bookmark$GSMDeliveryPduGenerator;->this$0:Lcom/android/mms/ui/Bookmark;

    invoke-direct {v4, v7}, Lcom/android/mms/ui/Bookmark$DeliveryPdu;-><init>(Lcom/android/mms/ui/Bookmark;)V

    .line 442
    .local v4, ret:Lcom/android/mms/ui/Bookmark$DeliveryPdu;
    const/4 v3, 0x0

    .line 443
    .local v3, mtiByte:B
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/mms/ui/Bookmark$GSMDeliveryPduGenerator;->getDeliveryPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/mms/ui/Bookmark$DeliveryPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 447
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x1

    .line 449
    .local v1, encoding:I
    const/4 v7, 0x0

    :try_start_0
    invoke-static {p3, v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 464
    .local v6, userData:[B
    :goto_1
    const/4 v7, 0x1

    if-ne v1, v7, :cond_3

    .line 465
    const/4 v7, 0x0

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0xa0

    if-le v7, v8, :cond_2

    .line 467
    const/4 v7, 0x0

    goto :goto_0

    .line 450
    .end local v6           #userData:[B
    :catch_0
    move-exception v2

    .line 454
    .local v2, ex:Lcom/android/internal/telephony/EncodeException;
    const/4 v7, 0x0

    :try_start_1
    invoke-direct {p0, p3, v7}, Lcom/android/mms/ui/Bookmark$GSMDeliveryPduGenerator;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 455
    .restart local v6       #userData:[B
    const/4 v1, 0x3

    goto :goto_1

    .line 456
    .end local v6           #userData:[B
    :catch_1
    move-exception v5

    .line 457
    .local v5, uex:Ljava/io/UnsupportedEncodingException;
    const-string v7, "GSM DeliveryPduGenerator"

    const-string v8, "Implausible UnsupportedEncodingException "

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    const/4 v7, 0x0

    goto :goto_0

    .line 477
    .end local v2           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v5           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v6       #userData:[B
    :cond_2
    const/16 v7, 0x12

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 490
    :goto_2
    invoke-direct {p0, p4, p5, v0}, Lcom/android/mms/ui/Bookmark$GSMDeliveryPduGenerator;->writeTimeStampStringForDate(JLjava/io/ByteArrayOutputStream;)V

    .line 492
    const/4 v7, 0x0

    array-length v8, v6

    invoke-virtual {v0, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 493
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iput-object v7, v4, Lcom/android/mms/ui/Bookmark$DeliveryPdu;->encodedMessage:[B

    move-object v7, v4

    .line 494
    goto :goto_0

    .line 479
    :cond_3
    const/4 v7, 0x0

    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x8c

    if-le v7, v8, :cond_4

    .line 481
    const/4 v7, 0x0

    goto :goto_0

    .line 486
    :cond_4
    sget-boolean v7, Landroid/os/Build;->IS_NEED_UNCOMPRESSED_UCS2_SMS_DEVICE:Z

    if-eqz v7, :cond_5

    const/16 v7, 0x8

    :goto_3
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_5
    const/16 v7, 0xb

    goto :goto_3
.end method
