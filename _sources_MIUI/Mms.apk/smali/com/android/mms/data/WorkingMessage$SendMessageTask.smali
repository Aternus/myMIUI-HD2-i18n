.class Lcom/android/mms/data/WorkingMessage$SendMessageTask;
.super Landroid/os/AsyncTask;
.source "WorkingMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/WorkingMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mConv:Lcom/android/mms/data/Conversation;

.field private mMmsUri:Landroid/net/Uri;

.field private mMsgText:Ljava/lang/String;

.field private mNeedShow:Z

.field private mPersister:Lcom/google/android/mms/pdu/PduPersister;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRecipientsInUI:Ljava/lang/String;

.field private mSendReq:Lcom/google/android/mms/pdu/SendReq;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;


# direct methods
.method public constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V
    .locals 1
    .parameter
    .parameter "conv"
    .parameter "mmsUri"
    .parameter "slideshow"

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1134
    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mConv:Lcom/android/mms/data/Conversation;

    .line 1135
    #getter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/mms/data/WorkingMessage;->access$000(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mMmsUri:Landroid/net/Uri;

    .line 1136
    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 1137
    iput-object p4, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1138
    #getter for: Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/android/mms/data/WorkingMessage;->access$200(Lcom/android/mms/data/WorkingMessage;)Ljava/lang/CharSequence;

    move-result-object v0

    #calls: Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;
    invoke-static {p2, v0}, Lcom/android/mms/data/WorkingMessage;->access$300(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    .line 1140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mNeedShow:Z

    .line 1141
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "conv"
    .parameter "msgText"
    .parameter "recipientsInUI"

    .prologue
    const/4 v1, 0x1

    .line 1143
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1145
    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mConv:Lcom/android/mms/data/Conversation;

    .line 1146
    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mMsgText:Ljava/lang/String;

    .line 1147
    iput-object p4, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mRecipientsInUI:Ljava/lang/String;

    .line 1149
    invoke-virtual {p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mNeedShow:Z

    .line 1150
    return-void

    .line 1149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onMessageSent()V
    .locals 1

    .prologue
    .line 1327
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->onPostExecute(Ljava/lang/Void;)V

    .line 1328
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$400(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    .line 1329
    return-void
.end method

.method private preSendSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "conv"
    .parameter "msgText"
    .parameter "recipientsInUI"

    .prologue
    const-wide/16 v7, 0x0

    .line 1187
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    .line 1189
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    invoke-static {v6}, Lcom/android/mms/data/WorkingMessage;->access$400(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    .line 1191
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    .line 1194
    .local v1, origThreadId:J
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v4

    .line 1196
    .local v4, threadId:J
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v3

    .line 1199
    .local v3, semiSepRecipients:Ljava/lang/String;
    cmp-long v6, v1, v7

    if-eqz v6, :cond_0

    cmp-long v6, v1, v4

    if-nez v6, :cond_1

    :cond_0
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1201
    :cond_1
    cmp-long v6, v1, v7

    if-eqz v6, :cond_3

    cmp-long v6, v1, v4

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WorkingMessage.preSendSmsWorker threadId changed or recipients changed. origThreadId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " new threadId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " also mConversation.getThreadId(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v7}, Lcom/android/mms/data/WorkingMessage;->access$500(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1212
    .local v0, msg:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/mms/LogTag;->warnPossibleRecipientMismatch(Ljava/lang/String;Landroid/app/Activity;)V

    .line 1217
    .end local v0           #msg:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p2, v3, v4, v5}, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->sendSmsWorker(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1220
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #calls: Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V
    invoke-static {v6, v4, v5}, Lcom/android/mms/data/WorkingMessage;->access$600(Lcom/android/mms/data/WorkingMessage;J)V

    .line 1221
    return-void

    .line 1201
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Recipients in window: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" differ from recipients from conv: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method private sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 22
    .parameter "conv"
    .parameter "mmsUri"
    .parameter "persister"
    .parameter "slideshow"
    .parameter "sendReq"

    .prologue
    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    move-object v6, v0

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    .line 1248
    const/4 v12, 0x0

    .line 1250
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    move-object v6, v0

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    move-object v6, v0

    #getter for: Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v6}, Lcom/android/mms/data/WorkingMessage;->access$800(Lcom/android/mms/data/WorkingMessage;)Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/data/WorkingMessage;->access$900()[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1252
    if-eqz v12, :cond_2

    .line 1253
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSizeScaleForPendingMmsAllowed()I

    move-result v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v7

    mul-int/2addr v6, v7

    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 1255
    .local v16, maxMessageSize:J
    const-wide/16 v20, 0x0

    .line 1256
    .local v20, totalPendingSize:J
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1257
    const/4 v6, 0x1

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    add-long v20, v20, v6

    goto :goto_0

    .line 1259
    :cond_0
    cmp-long v6, v20, v16

    if-ltz v6, :cond_2

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    move-object v6, v0

    #getter for: Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    invoke-static {v6}, Lcom/android/mms/data/WorkingMessage;->access$400(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMaxPendingMessagesReached()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1266
    if-eqz v12, :cond_1

    .line 1267
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1324
    .end local v16           #maxMessageSize:J
    .end local v20           #totalPendingSize:J
    :cond_1
    :goto_1
    return-void

    .line 1266
    :cond_2
    if-eqz v12, :cond_3

    .line 1267
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1270
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    move-object v6, v0

    #getter for: Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    invoke-static {v6}, Lcom/android/mms/data/WorkingMessage;->access$400(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    .line 1274
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v18

    .line 1276
    .local v18, threadId:J
    const-string v6, "Mms:app"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1277
    const-string v6, "sendMmsWorker: update draft MMS message %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1280
    :cond_4
    if-nez p2, :cond_6

    .line 1282
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p4

    #calls: Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;
    invoke-static {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->access$1000(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object p2

    .line 1289
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, v18

    #calls: Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->access$600(Lcom/android/mms/data/WorkingMessage;J)V

    .line 1293
    const/4 v15, 0x0

    .line 1295
    .local v15, error:I
    :try_start_1
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->finalResize(Landroid/net/Uri;)V
    :try_end_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1301
    :goto_3
    if-eqz v15, :cond_7

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p2

    #calls: Lcom/android/mms/data/WorkingMessage;->markMmsMessageWithError(Landroid/net/Uri;)V
    invoke-static {v0, v1}, Lcom/android/mms/data/WorkingMessage;->access$1200(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    move-object v6, v0

    #getter for: Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    invoke-static {v6}, Lcom/android/mms/data/WorkingMessage;->access$400(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    move-result-object v6

    invoke-interface {v6, v15}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onAttachmentError(I)V

    goto :goto_1

    .line 1266
    .end local v15           #error:I
    .end local v18           #threadId:J
    :catchall_0
    move-exception v6

    if-eqz v12, :cond_5

    .line 1267
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v6

    .line 1285
    .restart local v18       #threadId:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    #calls: Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/data/WorkingMessage;->access$1100(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    goto :goto_2

    .line 1296
    .restart local v15       #error:I
    :catch_0
    move-exception v14

    .line 1297
    .local v14, e1:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v15, -0x2

    .line 1300
    goto :goto_3

    .line 1298
    .end local v14           #e1:Lcom/android/mms/ExceedMessageSizeException;
    :catch_1
    move-exception v14

    .line 1299
    .local v14, e1:Lcom/google/android/mms/MmsException;
    const/4 v15, -0x1

    goto :goto_3

    .line 1307
    .end local v14           #e1:Lcom/google/android/mms/MmsException;
    :cond_7
    const-string v6, "sendMmsWorker sending message: threadId=%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1308
    new-instance v5, Lcom/android/mms/transaction/MmsMessageSender;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    move-object v6, v0

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v7

    int-to-long v8, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    move-object v7, v0

    #getter for: Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J
    invoke-static {v7}, Lcom/android/mms/data/WorkingMessage;->access$700(Lcom/android/mms/data/WorkingMessage;)J

    move-result-wide v10

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v11}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;JJ)V

    .line 1311
    .local v5, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_2
    invoke-interface {v5}, Lcom/android/mms/transaction/MessageSender;->sendMessage()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    move-object v6, v0

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    move-object v7, v0

    #getter for: Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/android/mms/data/WorkingMessage;->access$800(Lcom/android/mms/data/WorkingMessage;)Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, p2

    move-object v3, v8

    move-object v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1318
    :cond_8
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    move-object v7, v0

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1323
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->onMessageSent()V

    goto/16 :goto_1

    .line 1319
    :catch_2
    move-exception v6

    move-object v13, v6

    .line 1320
    .local v13, e:Ljava/lang/Exception;
    const-string v6, "WorkingMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to send message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", threadId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private sendSmsWorker(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .parameter "msgText"
    .parameter "semiSepRecipients"
    .parameter "threadId"

    .prologue
    .line 1224
    const-string v1, ";"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1226
    .local v2, dests:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSmsWorker sending message: recipients="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", threadId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1229
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mTimeToSend:J
    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->access$700(Lcom/android/mms/data/WorkingMessage;)J

    move-result-wide v6

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 1231
    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_0
    invoke-interface {v0}, Lcom/android/mms/transaction/MessageSender;->sendMessage()Z

    .line 1234
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3, p3, p4}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->onMessageSent()V

    .line 1240
    return-void

    .line 1235
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 1236
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send SMS message, threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1111
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->prepareForSend()V

    .line 1177
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mConv:Lcom/android/mms/data/Conversation;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mMmsUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    .line 1181
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mConv:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mMsgText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mRecipientsInUI:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->preSendSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1111
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1154
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mNeedShow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1158
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 1162
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mNeedShow:Z

    if-eqz v0, :cond_0

    .line 1163
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1164
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09016b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1165
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1166
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$SendMessageTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1168
    :cond_0
    return-void
.end method
