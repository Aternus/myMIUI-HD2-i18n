.class Lcom/android/mms/ui/Bookmark$CDMADeliveryPduGenerator;
.super Ljava/lang/Object;
.source "Bookmark.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/Bookmark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CDMADeliveryPduGenerator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/Bookmark;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/Bookmark;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/mms/ui/Bookmark$CDMADeliveryPduGenerator;->this$0:Lcom/android/mms/ui/Bookmark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized getNextMessageId()I
    .locals 5

    .prologue
    const-string v2, "CDMA DeliveryPduGenerator"

    const-string v2, "persist.radio.cdma.msgid"

    .line 753
    monitor-enter p0

    :try_start_0
    const-string v2, "persist.radio.cdma.msgid"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 754
    .local v0, msgId:I
    const v2, 0xffff

    rem-int v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 755
    .local v1, nextMsgId:Ljava/lang/String;
    const-string v2, "persist.radio.cdma.msgid"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v2, "CDMA:SMS"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 757
    const-string v2, "CDMA DeliveryPduGenerator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "next persist.radio.cdma.msgid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const-string v2, "CDMA DeliveryPduGenerator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readback gets "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "persist.radio.cdma.msgid"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    :cond_0
    monitor-exit p0

    return v0

    .line 753
    .end local v0           #msgId:I
    .end local v1           #nextMsgId:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private privateGetDeliveryPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;J)Lcom/android/mms/ui/Bookmark$DeliveryPdu;
    .locals 21
    .parameter "originatorAddress"
    .parameter "statusReportRequested"
    .parameter "userData"
    .parameter "time"

    .prologue
    .line 613
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v12

    .line 615
    .local v12, originAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez p1, :cond_0

    .line 616
    const/16 v18, 0x0

    .line 700
    :goto_0
    return-object v18

    .line 618
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 619
    .local v5, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 620
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/Bookmark$CDMADeliveryPduGenerator;->getNextMessageId()I

    move-result v18

    move/from16 v0, v18

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 621
    move/from16 v0, p2

    move-object v1, v5

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 622
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object v1, v5

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 623
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object v1, v5

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 624
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object v1, v5

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 625
    move-object/from16 v0, p3

    move-object v1, v5

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 627
    invoke-static {v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v9

    .line 628
    .local v9, encodedBearerData:[B
    const-string v18, "CDMA:SMS"

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 629
    const-string v18, "CDMA DeliveryPduGenerator"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MO (encoded) BearerData = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string v18, "CDMA DeliveryPduGenerator"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MO raw BearerData = \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v9}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_1
    if-nez v9, :cond_2

    .line 634
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 639
    :cond_2
    new-instance v16, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;-><init>()V

    .line 640
    .local v16, timeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;
    move-object/from16 v0, v16

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->set(J)V

    .line 641
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 642
    .local v6, byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    new-instance v13, Ljava/io/DataOutputStream;

    invoke-direct {v13, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 644
    .local v13, outputStream:Ljava/io/DataOutputStream;
    const/16 v18, 0x0

    :try_start_0
    move-object v0, v9

    array-length v0, v0

    move/from16 v19, v0

    move-object v0, v13

    move-object v1, v9

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 645
    const/16 v18, 0x3

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 646
    const/16 v18, 0x6

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 647
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/Bookmark$CDMADeliveryPduGenerator;->timeStampToBCDBytes(Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;)[B

    move-result-object v17

    .line 648
    .local v17, tsb:[B
    const/16 v18, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    move-object v0, v13

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    .end local v17           #tsb:[B
    :goto_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 655
    move-object v0, v5

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    const/16 v18, 0x1005

    move/from16 v15, v18

    .line 658
    .local v15, teleservice:I
    :goto_2
    new-instance v10, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v10}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 659
    .local v10, envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object v1, v10

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 660
    iput v15, v10, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 661
    iput-object v12, v10, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 662
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object v1, v10

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 663
    iput-object v9, v10, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 669
    :try_start_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    const/16 v18, 0x1f4

    move-object v0, v4

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 670
    .local v4, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 671
    .local v7, dos:Ljava/io/DataOutputStream;
    move-object v0, v10

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    move/from16 v18, v0

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 672
    const/16 v18, 0x0

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 673
    const/16 v18, 0x0

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 674
    move-object v0, v12

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v18, v0

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 675
    move-object v0, v12

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v18, v0

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 676
    move-object v0, v12

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    move/from16 v18, v0

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 677
    move-object v0, v12

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    move/from16 v18, v0

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 678
    move-object v0, v12

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v18, v0

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 679
    move-object v0, v12

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object v0, v12

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move-object v0, v7

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 680
    const/16 v18, 0x24

    move-object v0, v12

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 683
    const/16 v18, 0x0

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 684
    const/16 v18, 0x0

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 685
    const/16 v18, 0x0

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 686
    const/16 v18, 0x24

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 688
    move-object v0, v9

    array-length v0, v0

    move/from16 v18, v0

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 689
    const/16 v18, 0x0

    move-object v0, v9

    array-length v0, v0

    move/from16 v19, v0

    move-object v0, v7

    move-object v1, v9

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 690
    const/16 v18, 0xff

    move-object v0, v9

    array-length v0, v0

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 691
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    .line 693
    new-instance v14, Lcom/android/mms/ui/Bookmark$DeliveryPdu;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/Bookmark$CDMADeliveryPduGenerator;->this$0:Lcom/android/mms/ui/Bookmark;

    move-object/from16 v18, v0

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/mms/ui/Bookmark$DeliveryPdu;-><init>(Lcom/android/mms/ui/Bookmark;)V

    .line 694
    .local v14, pdu:Lcom/android/mms/ui/Bookmark$DeliveryPdu;
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    iput-object v0, v1, Lcom/android/mms/ui/Bookmark$DeliveryPdu;->encodedMessage:[B

    .line 695
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object v1, v14

    iput-object v0, v1, Lcom/android/mms/ui/Bookmark$DeliveryPdu;->encodedScAddress:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v18, v14

    .line 696
    goto/16 :goto_0

    .line 649
    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #dos:Ljava/io/DataOutputStream;
    .end local v10           #envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v14           #pdu:Lcom/android/mms/ui/Bookmark$DeliveryPdu;
    .end local v15           #teleservice:I
    :catch_0
    move-exception v18

    move-object/from16 v8, v18

    .line 650
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 655
    .end local v8           #e:Ljava/io/IOException;
    :cond_3
    const/16 v18, 0x1002

    move/from16 v15, v18

    goto/16 :goto_2

    .line 697
    .restart local v10       #envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .restart local v15       #teleservice:I
    :catch_1
    move-exception v18

    move-object/from16 v11, v18

    .line 698
    .local v11, ex:Ljava/io/IOException;
    const-string v18, "CDMA DeliveryPduGenerator"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "creating Delivery failed: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/16 v18, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public createCDMABCD(I)B
    .locals 4
    .parameter "decimal"

    .prologue
    .line 736
    and-int/lit16 v2, p1, 0xff

    div-int/lit8 v1, v2, 0xa

    .line 737
    .local v1, tens:I
    and-int/lit16 v2, p1, 0xff

    mul-int/lit8 v3, v1, 0xa

    sub-int v0, v2, v3

    .line 738
    .local v0, ones:I
    shl-int/lit8 v2, v1, 0x4

    or-int/2addr v2, v0

    int-to-byte v2, v2

    return v2
.end method

.method public getDeliveryPdu(Ljava/lang/String;Ljava/lang/String;ZJ)Lcom/android/mms/ui/Bookmark$DeliveryPdu;
    .locals 6
    .parameter "originatorAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "time"

    .prologue
    const/4 v0, 0x0

    .line 598
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-object v0

    .line 602
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 603
    .local v3, localUserData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 604
    iput-object v0, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-wide v4, p4

    .line 608
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/Bookmark$CDMADeliveryPduGenerator;->privateGetDeliveryPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;J)Lcom/android/mms/ui/Bookmark$DeliveryPdu;

    move-result-object v0

    goto :goto_0
.end method

.method public timeStampToBCDBytes(Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;)[B
    .locals 12
    .parameter "ts"

    .prologue
    const/16 v8, 0x7d0

    const/16 v11, 0x3b

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 704
    const/4 v7, 0x6

    new-array v4, v7, [B

    .line 706
    .local v4, ret:[B
    iget v6, p1, Landroid/text/format/Time;->year:I

    .line 707
    .local v6, year:I
    const/16 v7, 0x82f

    if-gt v6, v7, :cond_0

    const/16 v7, 0x7cc

    if-ge v6, v7, :cond_1

    :cond_0
    move-object v7, v9

    .line 731
    :goto_0
    return-object v7

    .line 708
    :cond_1
    if-lt v6, v8, :cond_3

    sub-int v7, v6, v8

    move v6, v7

    .line 709
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/Bookmark$CDMADeliveryPduGenerator;->createCDMABCD(I)B

    move-result v8

    aput-byte v8, v4, v7

    .line 711
    iget v7, p1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->month:I

    add-int/lit8 v3, v7, 0x1

    .line 712
    .local v3, month:I
    if-lt v3, v10, :cond_2

    const/16 v7, 0xc

    if-le v3, v7, :cond_4

    :cond_2
    move-object v7, v9

    goto :goto_0

    .line 708
    .end local v3           #month:I
    :cond_3
    const/16 v7, 0x76c

    sub-int v7, v6, v7

    move v6, v7

    goto :goto_1

    .line 713
    .restart local v3       #month:I
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/Bookmark$CDMADeliveryPduGenerator;->createCDMABCD(I)B

    move-result v7

    aput-byte v7, v4, v10

    .line 715
    iget v0, p1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->monthDay:I

    .line 716
    .local v0, day:I
    if-lt v0, v10, :cond_5

    const/16 v7, 0x1f

    if-le v0, v7, :cond_6

    :cond_5
    move-object v7, v9

    goto :goto_0

    .line 717
    :cond_6
    const/4 v7, 0x2

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/Bookmark$CDMADeliveryPduGenerator;->createCDMABCD(I)B

    move-result v8

    aput-byte v8, v4, v7

    .line 719
    iget v1, p1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->hour:I

    .line 720
    .local v1, hour:I
    if-ltz v1, :cond_7

    const/16 v7, 0x17

    if-le v1, v7, :cond_8

    :cond_7
    move-object v7, v9

    goto :goto_0

    .line 721
    :cond_8
    const/4 v7, 0x3

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/Bookmark$CDMADeliveryPduGenerator;->createCDMABCD(I)B

    move-result v8

    aput-byte v8, v4, v7

    .line 723
    iget v2, p1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->minute:I

    .line 724
    .local v2, minute:I
    if-ltz v2, :cond_9

    if-le v2, v11, :cond_a

    :cond_9
    move-object v7, v9

    goto :goto_0

    .line 725
    :cond_a
    const/4 v7, 0x4

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/Bookmark$CDMADeliveryPduGenerator;->createCDMABCD(I)B

    move-result v8

    aput-byte v8, v4, v7

    .line 727
    iget v5, p1, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->second:I

    .line 728
    .local v5, second:I
    if-ltz v5, :cond_b

    if-le v5, v11, :cond_c

    :cond_b
    move-object v7, v9

    goto :goto_0

    .line 729
    :cond_c
    const/4 v7, 0x5

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/Bookmark$CDMADeliveryPduGenerator;->createCDMABCD(I)B

    move-result v8

    aput-byte v8, v4, v7

    move-object v7, v4

    .line 731
    goto :goto_0
.end method
