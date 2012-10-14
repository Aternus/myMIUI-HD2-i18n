.class public Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColumnsMap"
.end annotation


# instance fields
.field public mColumnCount:I

.field public mColumnMmsContentLocation:I

.field public mColumnMmsDate:I

.field public mColumnMmsDeliveryReport:I

.field public mColumnMmsErrorType:I

.field public mColumnMmsExpiry:I

.field public mColumnMmsLocked:I

.field public mColumnMmsMessageBox:I

.field public mColumnMmsMessageSize:I

.field public mColumnMmsMessageType:I

.field public mColumnMmsReadReport:I

.field public mColumnMmsServerDate:I

.field public mColumnMmsSubject:I

.field public mColumnMmsSubjectCharset:I

.field public mColumnMmsTimed:I

.field public mColumnMsgId:I

.field public mColumnMsgType:I

.field public mColumnSmsAddress:I

.field public mColumnSmsBody:I

.field public mColumnSmsDate:I

.field public mColumnSmsErrorCode:I

.field public mColumnSmsLocked:I

.field public mColumnSmsServerDate:I

.field public mColumnSmsStatus:I

.field public mColumnSmsTimed:I

.field public mColumnSmsType:I

.field public mColumnThreadId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    .line 414
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    .line 415
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnThreadId:I

    .line 416
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    .line 417
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    .line 418
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    .line 419
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsServerDate:I

    .line 420
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    .line 421
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsStatus:I

    .line 422
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I

    .line 423
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsErrorCode:I

    .line 424
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsTimed:I

    .line 425
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I

    .line 426
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I

    .line 427
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDate:I

    .line 428
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsServerDate:I

    .line 429
    const/16 v0, 0x12

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I

    .line 430
    const/16 v0, 0x13

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    .line 431
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDeliveryReport:I

    .line 432
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReadReport:I

    .line 433
    const/16 v0, 0x16

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsErrorType:I

    .line 434
    const/16 v0, 0x17

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsLocked:I

    .line 435
    const/16 v0, 0x18

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsContentLocation:I

    .line 436
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageSize:I

    .line 437
    const/16 v0, 0x1a

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsExpiry:I

    .line 438
    const/16 v0, 0x1b

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsTimed:I

    .line 439
    const/16 v0, 0x1c

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnCount:I

    .line 440
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    const-string v1, "timed"

    const-string v1, "server_date"

    const-string v1, "locked"

    const-string v1, "date"

    const-string v2, "colsMap"

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    :try_start_0
    const-string v1, "transport_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_0
    :try_start_1
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 459
    :goto_1
    :try_start_2
    const-string v1, "thread_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnThreadId:I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 465
    :goto_2
    :try_start_3
    const-string v1, "address"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 471
    :goto_3
    :try_start_4
    const-string v1, "body"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 477
    :goto_4
    :try_start_5
    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5

    .line 483
    :goto_5
    :try_start_6
    const-string v1, "server_date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsServerDate:I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6

    .line 489
    :goto_6
    :try_start_7
    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_7

    .line 495
    :goto_7
    :try_start_8
    const-string v1, "status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsStatus:I
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_8

    .line 501
    :goto_8
    :try_start_9
    const-string v1, "locked"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_9

    .line 507
    :goto_9
    :try_start_a
    const-string v1, "error_code"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsErrorCode:I
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_a

    .line 513
    :goto_a
    :try_start_b
    const-string v1, "timed"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsTimed:I
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_b

    .line 519
    :goto_b
    :try_start_c
    const-string v1, "sub"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_c

    .line 525
    :goto_c
    :try_start_d
    const-string v1, "sub_cs"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_d

    .line 531
    :goto_d
    :try_start_e
    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDate:I
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_e

    .line 537
    :goto_e
    :try_start_f
    const-string v1, "server_date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsServerDate:I
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_f

    .line 543
    :goto_f
    :try_start_10
    const-string v1, "m_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_10

    .line 549
    :goto_10
    :try_start_11
    const-string v1, "msg_box"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_11

    .line 555
    :goto_11
    :try_start_12
    const-string v1, "d_rpt"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDeliveryReport:I
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_12

    .line 561
    :goto_12
    :try_start_13
    const-string v1, "rr"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReadReport:I
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_13

    .line 567
    :goto_13
    :try_start_14
    const-string v1, "err_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsErrorType:I
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_14

    .line 573
    :goto_14
    :try_start_15
    const-string v1, "locked"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsLocked:I
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_15

    .line 579
    :goto_15
    :try_start_16
    const-string v1, "ct_l"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsContentLocation:I
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_16

    .line 585
    :goto_16
    :try_start_17
    const-string v1, "m_size"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageSize:I
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_17

    .line 591
    :goto_17
    :try_start_18
    const-string v1, "exp"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsExpiry:I
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_18

    .line 597
    :goto_18
    :try_start_19
    const-string v1, "timed"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsTimed:I
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_19} :catch_19

    .line 603
    :goto_19
    :try_start_1a
    const-string v1, "count(*)"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnCount:I
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 607
    :goto_1a
    return-void

    .line 448
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 449
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 454
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 455
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 460
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 461
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 466
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    move-object v0, v1

    .line 467
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 472
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v1

    move-object v0, v1

    .line 473
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 478
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v1

    move-object v0, v1

    .line 479
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 484
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 485
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 490
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 491
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 496
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 497
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 502
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 503
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 508
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 509
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 514
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 515
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 520
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 521
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 526
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 527
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 532
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 533
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 538
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 539
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 544
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 545
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 550
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 551
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 556
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 557
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 562
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_13
    move-exception v1

    move-object v0, v1

    .line 563
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 568
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 569
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 574
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_15
    move-exception v1

    move-object v0, v1

    .line 575
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 580
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_16
    move-exception v1

    move-object v0, v1

    .line 581
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 586
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_17
    move-exception v1

    move-object v0, v1

    .line 587
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 592
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 593
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 598
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 599
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 604
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1a
    move-exception v1

    move-object v0, v1

    .line 605
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a
.end method
