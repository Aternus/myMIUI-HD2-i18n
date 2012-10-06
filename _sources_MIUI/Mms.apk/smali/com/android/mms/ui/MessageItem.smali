.class public Lcom/android/mms/ui/MessageItem;
.super Ljava/lang/Object;
.source "MessageItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageItem$DeliveryStatus;,
        Lcom/android/mms/ui/MessageItem$FailedItem;
    }
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mBody:Ljava/lang/String;

.field private final mBoxId:I

.field private mCachedFormattedMessage:Ljava/lang/CharSequence;

.field private mContact:Ljava/lang/String;

.field private mContactMessage:Lcom/android/mms/model/ContactMessage;

.field private final mContext:Landroid/content/Context;

.field private mDate:J

.field private mDeliveRepotrMode:I

.field private mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

.field private mErrorCode:I

.field private mErrorType:I

.field private mExpireTimestamp:Ljava/lang/String;

.field private mFailedMsgInGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageItem$FailedItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlight:Ljava/util/regex/Pattern;

.field private mIsGroup:Z

.field private mIsReadOnly:Z

.field private mLastSendingState:Z

.field private mLayoutStyle:I

.field private mLocked:Z

.field private mMessageSize:I

.field private mMessageType:I

.field private mMessageUri:Landroid/net/Uri;

.field private final mMsgId:J

.field private mQueueMsgInGroup:I

.field private mReadReport:Z

.field private mResendMsgInGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mSendingAddressInGroup:Ljava/lang/String;

.field private mSendingBodyInGroup:Ljava/lang/String;

.field private mSentMsgInGroup:I

.field private mServerDate:J

.field private mShowTimeStamp:Z

.field private mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private mSubject:Ljava/lang/String;

.field private mTextContentType:Ljava/lang/String;

.field private final mThreadId:J

.field private mTimedValue:J

.field private mTimestamp:Ljava/lang/String;

.field private mTotalMsgInGroup:I

.field private final mType:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    .locals 23
    .parameter "context"
    .parameter "type"
    .parameter "cursor"
    .parameter "columnsMap"
    .parameter "highlight"
    .parameter "isGroup"
    .parameter "isReadOnly"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const/4 v4, -0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    .line 325
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveRepotrMode:I

    .line 330
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mShowTimeStamp:Z

    .line 337
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    .line 338
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    .line 339
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnThreadId:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    .line 340
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    .line 341
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    .line 342
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsGroup:Z

    .line 343
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsReadOnly:Z

    .line 344
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mTotalMsgInGroup:I

    .line 345
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mFailedMsgInGroup:Ljava/util/ArrayList;

    .line 346
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mResendMsgInGroup:Ljava/util/ArrayList;

    .line 347
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mQueueMsgInGroup:I

    .line 348
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mSentMsgInGroup:I

    .line 349
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSendingAddressInGroup:Ljava/lang/String;

    .line 350
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSendingBodyInGroup:Ljava/lang/String;

    .line 352
    const-string v4, "sms"

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 353
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 354
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 356
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsStatus:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 357
    .local v15, status:J
    const-wide/16 v4, -0x1

    cmp-long v4, v15, v4

    if-nez v4, :cond_0

    .line 359
    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 375
    :goto_0
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 377
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 379
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 380
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mDate:J

    .line 381
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsServerDate:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mServerDate:J

    .line 382
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 383
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsErrorCode:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mErrorCode:I

    .line 384
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsTimed:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mTimedValue:J

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/mms/model/ContactParser;->getContactParser(Landroid/content/Context;)Lcom/android/mms/model/ContactParser;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/model/ContactParser;->parseFromMessage(Ljava/lang/String;)Lcom/android/mms/model/ContactMessage;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContactMessage:Lcom/android/mms/model/ContactMessage;

    .line 393
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsGroup:Z

    move v4, v0

    if-eqz v4, :cond_b

    .line 395
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnCount:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mTotalMsgInGroup:I

    .line 397
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "address"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "_id"

    aput-object v8, v6, v7

    const-string v7, "thread_id=? AND date=? AND type=?"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    move-wide v10, v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mDate:J

    move-wide v10, v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 404
    .local v11, countC:Landroid/database/Cursor;
    if-eqz v11, :cond_6

    .line 405
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 406
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 407
    .local v10, address:Ljava/lang/String;
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 408
    .local v21, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mFailedMsgInGroup:Ljava/util/ArrayList;

    move-object v4, v0

    new-instance v5, Lcom/android/mms/ui/MessageItem$FailedItem;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageItem$FailedItem;-><init>(Lcom/android/mms/ui/MessageItem;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mResendMsgInGroup:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 360
    .end local v10           #address:Ljava/lang/String;
    .end local v11           #countC:Landroid/database/Cursor;
    .end local v21           #uri:Landroid/net/Uri;
    :cond_0
    const-wide/16 v4, 0x40

    cmp-long v4, v15, v4

    if-ltz v4, :cond_1

    .line 362
    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->FAILED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_0

    .line 363
    :cond_1
    const-wide/16 v4, 0x20

    cmp-long v4, v15, v4

    if-ltz v4, :cond_3

    .line 364
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    move v4, v0

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 365
    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->SENT:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_0

    .line 368
    :cond_2
    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->PENDING:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_0

    .line 372
    :cond_3
    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_0

    .line 382
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 411
    .restart local v11       #countC:Landroid/database/Cursor;
    :cond_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 412
    const/4 v11, 0x0

    .line 415
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "address"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "body"

    aput-object v8, v6, v7

    const-string v7, "thread_id=? AND date=? AND type=?"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    move-wide v10, v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mDate:J

    move-wide v10, v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x6

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 423
    if-eqz v11, :cond_8

    .line 424
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mQueueMsgInGroup:I

    .line 425
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 426
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSendingAddressInGroup:Ljava/lang/String;

    .line 427
    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSendingBodyInGroup:Ljava/lang/String;

    .line 429
    :cond_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 430
    const/4 v11, 0x0

    .line 432
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSendingAddressInGroup:Ljava/lang/String;

    move-object v4, v0

    if-nez v4, :cond_9

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSendingAddressInGroup:Ljava/lang/String;

    .line 435
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSendingBodyInGroup:Ljava/lang/String;

    move-object v4, v0

    if-nez v4, :cond_a

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSendingBodyInGroup:Ljava/lang/String;

    .line 439
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "address"

    aput-object v8, v6, v7

    const-string v7, "thread_id=? AND date=? AND (type=? OR type=? OR type=?)"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    move-wide v10, v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mDate:J

    move-wide v10, v0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 449
    if-eqz v11, :cond_b

    .line 450
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mSentMsgInGroup:I

    .line 451
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 457
    .end local v11           #countC:Landroid/database/Cursor;
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    move v4, v0

    invoke-static {v4}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 458
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsGroup:Z

    move v4, v0

    if-eqz v4, :cond_c

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSendingAddressInGroup:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 585
    .end local v15           #status:J
    :goto_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mDate:J

    move-wide v4, v0

    move-object/from16 v0, p1

    move-wide v1, v4

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getPreciseTimeStamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    .line 586
    return-void

    .line 460
    .restart local v15       #status:J
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsReadOnly:Z

    move v4, v0

    if-eqz v4, :cond_d

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto :goto_3

    .line 463
    :cond_d
    const v4, 0x7f09000e

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto :goto_3

    .line 467
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto :goto_3

    .line 469
    .end local v15           #status:J
    :cond_f
    const-string v4, "mms"

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 470
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 471
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 472
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    .line 473
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsServerDate:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mServerDate:J

    .line 474
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsErrorType:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    .line 475
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsTimed:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mTimedValue:J

    .line 476
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 477
    .local v18, subject:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 478
    new-instance v22, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    move-object/from16 v0, v22

    move v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 481
    .local v22, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    .line 483
    .end local v22           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_10
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsLocked:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, 0x1

    :goto_4
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 485
    const-wide/16 v19, 0x0

    .line 487
    .local v19, timestamp:J
    new-instance v4, Lcom/android/mms/ui/SimplePduDoc;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/android/mms/ui/SimplePduDoc;-><init>(Landroid/content/Context;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SimplePduDoc;->load(Landroid/net/Uri;)Z

    .line 490
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsContentLocation:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_11

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    move-object v4, v0

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsContentLocation:I

    move v5, v0

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SimplePduDoc;->setContentLocation([B)V

    .line 494
    :cond_11
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageSize:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_12

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    move-object v4, v0

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageSize:I

    move v5, v0

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SimplePduDoc;->setMessageSize(Ljava/lang/Integer;)V

    .line 497
    :cond_12
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDate:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_13

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    move-object v4, v0

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDate:I

    move v5, v0

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SimplePduDoc;->setDate(Ljava/lang/Integer;)V

    .line 500
    :cond_13
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsExpiry:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_14

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    move-object v4, v0

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsExpiry:I

    move v5, v0

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SimplePduDoc;->setExpiry(Ljava/lang/Integer;)V

    .line 504
    :cond_14
    const/16 v4, 0x82

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move v5, v0

    if-ne v4, v5, :cond_16

    .line 505
    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/ui/SimplePduDoc;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 508
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/mms/ui/SimplePduDoc;->getContentLocation()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/ui/SimplePduDoc;->getMessageSize()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/ui/SimplePduDoc;->getExpiry()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long v19, v4, v6

    .line 511
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDate:I

    move v4, v0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mDate:J

    .line 512
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageItem;->getExpireTimestampStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mExpireTimestamp:Ljava/lang/String;

    goto/16 :goto_3

    .line 483
    .end local v19           #timestamp:J
    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 514
    .restart local v19       #timestamp:J
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move v4, v0

    const/16 v5, 0x84

    if-ne v4, v5, :cond_1a

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/ui/SimplePduDoc;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/ui/SimplePduDoc;->getDate()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long v19, v4, v6

    .line 523
    :goto_5
    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 524
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageItem;->isOutMessage()Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsGroup:Z

    move v4, v0

    if-nez v4, :cond_18

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->getMmsReportStatus(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/util/Map;

    move-result-object v17

    .line 533
    .local v17, statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/MessageUtils$MmsReportStatus;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_18

    .line 534
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 535
    .local v14, recipient:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object v1, v14

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/mms/ui/MessageUtils$MmsReportStatus;

    .line 537
    .local v15, status:Lcom/android/mms/ui/MessageUtils$MmsReportStatus;
    iget v4, v15, Lcom/android/mms/ui/MessageUtils$MmsReportStatus;->readStatus:I

    if-eqz v4, :cond_17

    .line 538
    iget v4, v15, Lcom/android/mms/ui/MessageUtils$MmsReportStatus;->readStatus:I

    packed-switch v4, :pswitch_data_0

    .line 548
    :cond_17
    :goto_6
    iget v4, v15, Lcom/android/mms/ui/MessageUtils$MmsReportStatus;->deliveryStatus:I

    sparse-switch v4, :sswitch_data_0

    .line 560
    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->FAILED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 568
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #recipient:Ljava/lang/String;
    .end local v15           #status:Lcom/android/mms/ui/MessageUtils$MmsReportStatus;
    .end local v17           #statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/MessageUtils$MmsReportStatus;>;"
    :cond_18
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SimplePduDoc;->getPageTextPart(I)Lcom/android/mms/ui/SimplePduPart;

    move-result-object v13

    .line 569
    .local v13, part:Lcom/android/mms/ui/SimplePduPart;
    if-eqz v13, :cond_19

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/SimplePduDoc;->getPageText(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 571
    invoke-virtual {v13}, Lcom/android/mms/ui/SimplePduPart;->getContentType()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTextContentType:Ljava/lang/String;

    .line 578
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/ui/SimplePduDoc;->getMessageSize()I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    .line 579
    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mDate:J

    goto/16 :goto_3

    .line 519
    .end local v13           #part:Lcom/android/mms/ui/SimplePduPart;
    :cond_1a
    const v4, 0x7f09000e

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/ui/SimplePduDoc;->getDate()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long v19, v4, v6

    goto/16 :goto_5

    .line 540
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v14       #recipient:Ljava/lang/String;
    .restart local v15       #status:Lcom/android/mms/ui/MessageUtils$MmsReportStatus;
    .restart local v17       #statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/MessageUtils$MmsReportStatus;>;"
    :pswitch_0
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    goto :goto_6

    .line 543
    :pswitch_1
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    goto :goto_6

    .line 550
    :sswitch_0
    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto :goto_7

    .line 554
    :sswitch_1
    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto :goto_7

    .line 557
    :sswitch_2
    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->REJECTED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_7

    .line 582
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #recipient:Ljava/lang/String;
    .end local v15           #status:Lcom/android/mms/ui/MessageUtils$MmsReportStatus;
    .end local v17           #statusMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/mms/ui/MessageUtils$MmsReportStatus;>;"
    .end local v18           #subject:Ljava/lang/String;
    .end local v19           #timestamp:J
    :cond_1b
    new-instance v4, Lcom/google/android/mms/MmsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown type of the message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 538
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 548
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x81 -> :sswitch_1
        0x82 -> :sswitch_2
        0x86 -> :sswitch_1
    .end sparse-switch
.end method

.method private getExpireTimestampStr(Landroid/content/Context;J)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "timestamp"

    .prologue
    .line 602
    const v0, 0x7f090013

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V
    .locals 2
    .parameter "from"
    .parameter "messageUri"

    .prologue
    .line 589
    if-eqz p1, :cond_0

    .line 590
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 598
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 599
    return-void

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    goto :goto_0

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized addToResend(Landroid/net/Uri;)V
    .locals 4
    .parameter "messageUri"

    .prologue
    .line 190
    monitor-enter p0

    const/4 v0, 0x0

    .line 191
    .local v0, found:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageItem;->mResendMsgInGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 192
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    const/4 v0, 0x1

    .line 197
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    if-nez v0, :cond_2

    .line 198
    iget-object v3, p0, Lcom/android/mms/ui/MessageItem;->mResendMsgInGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_2
    monitor-exit p0

    return-void

    .line 190
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public failedMsgInGroup()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageItem$FailedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mFailedMsgInGroup:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getBoxId()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    return v0
.end method

.method public getCachedFormattedMessage()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    .line 680
    .local v0, isSending:Z
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    if-eq v0, v1, :cond_0

    .line 681
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    .line 682
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    return-object v1
.end method

.method public getContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    return-object v0
.end method

.method public getContactMessage()Lcom/android/mms/model/ContactMessage;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContactMessage:Lcom/android/mms/model/ContactMessage;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    return-wide v0
.end method

.method public getDeliverReportMode()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mDeliveRepotrMode:I

    return v0
.end method

.method public getDeliveryStatus()Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    return-object v0
.end method

.method public getExpireTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mExpireTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getHighlight()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public getLayoutStyle()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    return v0
.end method

.method public getMessageSize()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    return v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    return v0
.end method

.method public getMessageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getMsgId()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    return-wide v0
.end method

.method public getSendingBodyInGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSendingBodyInGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getServerDate()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mServerDate:J

    return-wide v0
.end method

.method public getSimplePduDoc()Lcom/android/mms/ui/SimplePduDoc;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSimplePduDoc:Lcom/android/mms/ui/SimplePduDoc;

    return-object v0
.end method

.method public getSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v0, :cond_0

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0

    .line 267
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getStyledTimeStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mShowTimeStamp:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getTextContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mTextContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    return-wide v0
.end method

.method public getTimedValue()J
    .locals 2

    .prologue
    .line 301
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mTimedValue:J

    return-wide v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public initLayoutStyle(Ljava/lang/String;ZI)V
    .locals 2
    .parameter "style"
    .parameter "showTimeStamp"
    .parameter "deliverReportMode"

    .prologue
    .line 689
    iput-boolean p2, p0, Lcom/android/mms/ui/MessageItem;->mShowTimeStamp:Z

    .line 690
    iput p3, p0, Lcom/android/mms/ui/MessageItem;->mDeliveRepotrMode:I

    .line 691
    sget-object v0, Lcom/android/mms/ui/MessageListItem$Style;->list:Lcom/android/mms/ui/MessageListItem$Style;

    invoke-static {p1}, Lcom/android/mms/ui/MessageListItem$Style;->valueOf(Ljava/lang/String;)Lcom/android/mms/ui/MessageListItem$Style;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 692
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isOutMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    .line 712
    :goto_0
    return-void

    .line 696
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    goto :goto_0

    .line 699
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    goto :goto_0

    .line 702
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isOutMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 703
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 704
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    goto :goto_0

    .line 706
    :cond_3
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    goto :goto_0

    .line 709
    :cond_4
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    goto :goto_0
.end method

.method public isDownloaded()Z
    .locals 2

    .prologue
    .line 615
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v1, 0x82

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailedMessage()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 656
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_1

    move v0, v5

    .line 659
    .local v0, isFailedMms:Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mIsGroup:Z

    if-eqz v2, :cond_3

    .line 660
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/MessageItem;->mFailedMsgInGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    move v1, v5

    .line 664
    .local v1, isFailedSms:Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_5

    :cond_0
    move v2, v5

    :goto_2
    return v2

    .end local v0           #isFailedMms:Z
    .end local v1           #isFailedSms:Z
    :cond_1
    move v0, v4

    .line 656
    goto :goto_0

    .restart local v0       #isFailedMms:Z
    :cond_2
    move v1, v4

    .line 660
    goto :goto_1

    .line 662
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    move v1, v5

    .restart local v1       #isFailedSms:Z
    :goto_3
    goto :goto_1

    .end local v1           #isFailedSms:Z
    :cond_4
    move v1, v4

    goto :goto_3

    .restart local v1       #isFailedSms:Z
    :cond_5
    move v2, v4

    .line 664
    goto :goto_2
.end method

.method public isGroup()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mIsGroup:Z

    return v0
.end method

.method isListLayoutStyle()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 715
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mLayoutStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    return v0
.end method

.method public isMms()Z
    .locals 2

    .prologue
    .line 607
    const-string v0, "mms"

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOutMessage()Z
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 628
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-eq v2, v7, :cond_0

    iget v2, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v2, v6, :cond_3

    :cond_0
    move v0, v5

    .line 630
    .local v0, isOutMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-eq v2, v7, :cond_1

    iget v2, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v2, v6, :cond_4

    :cond_1
    move v1, v5

    .line 634
    .local v1, isOutSms:Z
    :goto_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mIsGroup:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mIsReadOnly:Z

    if-eqz v2, :cond_5

    :cond_2
    move v2, v5

    :goto_2
    return v2

    .end local v0           #isOutMms:Z
    .end local v1           #isOutSms:Z
    :cond_3
    move v0, v4

    .line 628
    goto :goto_0

    .restart local v0       #isOutMms:Z
    :cond_4
    move v1, v4

    .line 630
    goto :goto_1

    .restart local v1       #isOutSms:Z
    :cond_5
    move v2, v4

    .line 634
    goto :goto_2
.end method

.method public isOutgoingMessage()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 619
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v2, v6, :cond_2

    move v0, v5

    .line 620
    .local v0, isOutgoingMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-eq v2, v6, :cond_0

    iget v2, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    :cond_0
    move v1, v5

    .line 624
    .local v1, isOutgoingSms:Z
    :goto_1
    if-nez v0, :cond_1

    if-eqz v1, :cond_4

    :cond_1
    move v2, v5

    :goto_2
    return v2

    .end local v0           #isOutgoingMms:Z
    .end local v1           #isOutgoingSms:Z
    :cond_2
    move v0, v4

    .line 619
    goto :goto_0

    .restart local v0       #isOutgoingMms:Z
    :cond_3
    move v1, v4

    .line 620
    goto :goto_1

    .restart local v1       #isOutgoingSms:Z
    :cond_4
    move v2, v4

    .line 624
    goto :goto_2
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mIsReadOnly:Z

    return v0
.end method

.method public isReadReport()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    return v0
.end method

.method public isSending()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 643
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mIsGroup:Z

    if-eqz v0, :cond_1

    .line 644
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mQueueMsgInGroup:I

    if-lez v0, :cond_0

    move v0, v2

    .line 646
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 644
    goto :goto_0

    .line 646
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isSms()Z
    .locals 2

    .prologue
    .line 611
    const-string v0, "sms"

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTimed()Z
    .locals 4

    .prologue
    .line 304
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mTimedValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized removeFromResend(Landroid/net/Uri;)V
    .locals 4
    .parameter "messageUri"

    .prologue
    .line 203
    monitor-enter p0

    const/4 v0, -0x1

    .line 204
    .local v0, foundIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageItem;->mResendMsgInGroup:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 205
    iget-object v3, p0, Lcom/android/mms/ui/MessageItem;->mResendMsgInGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 206
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 207
    move v0, v1

    .line 211
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 212
    iget-object v3, p0, Lcom/android/mms/ui/MessageItem;->mResendMsgInGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_1
    monitor-exit p0

    return-void

    .line 204
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v2           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public resendMsgInGroup()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mResendMsgInGroup:Ljava/util/ArrayList;

    return-object v0
.end method

.method public sentMsgInGroup()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mSentMsgInGroup:I

    return v0
.end method

.method public setCachedFormattedMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "formattedMessage"

    .prologue
    .line 675
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    .line 676
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " box: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delivery status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalMsgInGroup()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mTotalMsgInGroup:I

    return v0
.end method
