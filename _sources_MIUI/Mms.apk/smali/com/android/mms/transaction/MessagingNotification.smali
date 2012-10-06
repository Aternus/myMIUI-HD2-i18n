.class public Lcom/android/mms/transaction/MessagingNotification;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;,
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;,
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;,
        Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;
    }
.end annotation


# static fields
.field private static final INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

.field private static final MMS_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final SMS_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final UNDELIVERED_URI:Landroid/net/Uri;

.field private static mToastHandler:Landroid/os/Handler;

.field private static sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

.field private static sNotificationOnDeleteIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v2

    const-string v1, "date"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "sub"

    aput-object v1, v0, v5

    const-string v1, "sub_cs"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 93
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v2

    const-string v1, "date"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "subject"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 116
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;-><init>(Lcom/android/mms/transaction/MessagingNotification$1;)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

    .line 119
    const-string v0, "content://mms-sms/undelivered"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    .line 134
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    invoke-direct {v0}, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->mToastHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->getSmsNewDeliveryInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 81
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/mms/transaction/MessagingNotification;->updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 81
    invoke-static/range {p0 .. p10}, Lcom/android/mms/transaction/MessagingNotification;->updateNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->sendApplicationUpdateMessage(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->playDeliveryReportRingTone(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method private static final accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I
    .locals 1
    .parameter "set"
    .parameter "info"

    .prologue
    .line 238
    if-eqz p1, :cond_0

    .line 239
    invoke-interface {p0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 241
    iget v0, p1, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mCount:I

    .line 244
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static blockingUpdateAllNotifications(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 231
    invoke-static {p0, v0, v0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 232
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 233
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 234
    return-void
.end method

.method public static blockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V
    .locals 6
    .parameter "context"
    .parameter "isNew"
    .parameter "isStatusMessage"

    .prologue
    const-string v5, "Mms:app"

    .line 203
    new-instance v0, Ljava/util/TreeSet;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

    invoke-direct {v0, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 206
    .local v0, accumulator:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 208
    .local v2, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 209
    .local v1, count:I
    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->getMmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/transaction/MessagingNotification;->accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I

    move-result v3

    add-int/2addr v1, v3

    .line 211
    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->getSmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/transaction/MessagingNotification;->accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I

    move-result v3

    add-int/2addr v1, v3

    .line 214
    const/16 v3, 0x7b

    invoke-static {p0, v3}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 215
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/mms/transaction/MessagingNotification;->sendApplicationUpdateMessage(Landroid/content/Context;I)V

    .line 217
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 218
    const-string v3, "Mms:app"

    const/4 v3, 0x2

    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    const-string v3, "Mms:app"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blockingUpdateNewMessageIndicator: count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isNew="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, p0, p1, v1, v4}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->deliver(Landroid/content/Context;ZII)V

    .line 224
    :cond_1
    return-void
.end method

.method protected static buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "context"
    .parameter "address"
    .parameter "subject"
    .parameter "body"

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x20

    .line 662
    invoke-static {p1, v8}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, displayAddress:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    if-nez v1, :cond_2

    const-string v4, ""

    :goto_0
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 668
    .local v0, buf:Ljava/lang/StringBuilder;
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 671
    .local v2, offset:I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 672
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 673
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 677
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 678
    invoke-virtual {p3, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 679
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    :cond_1
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 683
    .local v3, spanText:Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 686
    return-object v3

    .line 664
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v2           #offset:I
    .end local v3           #spanText:Landroid/text/SpannableString;
    :cond_2
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "notificationId"

    .prologue
    .line 526
    invoke-static {}, Lcom/android/mms/util/VibratorManager;->cancel()V

    .line 527
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 529
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 530
    const/16 v1, 0x7b

    if-ne p1, v1, :cond_0

    .line 531
    invoke-static {p0}, Lcom/android/mms/util/Reminder;->cancelReminder(Landroid/content/Context;)V

    .line 533
    :cond_0
    return-void
.end method

.method private static getDownloadFailedMessageCount(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 836
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m_type="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "st"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x87

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 843
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 844
    const/4 v0, 0x0

    .line 848
    :goto_0
    return v0

    .line 846
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 847
    .local v8, count:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 848
    goto :goto_0
.end method

.method private static final getMmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .locals 12
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;"
        }
    .end annotation

    .prologue
    .line 306
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 313
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(msg_box=1 AND seen=0 AND (m_type=130 OR m_type=132))"

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 317
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 318
    const/4 p0, 0x0

    .line 385
    .end local p0
    .end local p1           #threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :goto_0
    return-object p0

    .line 322
    .restart local p0
    .restart local p1       #threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 323
    const/4 p0, 0x0

    .line 385
    .end local p0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 325
    .restart local p0
    :cond_1
    const/4 v0, 0x2

    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 326
    .local v2, msgId:J
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .end local v2           #msgId:J
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 328
    .local v0, msgUri:Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, address:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefNotificationBodyEnabledWithSecure(Landroid/content/Context;)Z

    move-result v0

    .end local v0           #msgUri:Landroid/net/Uri;
    if-eqz v0, :cond_4

    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/mms/transaction/MessagingNotification;->getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 331
    .local v3, subject:Ljava/lang/String;
    :goto_1
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 332
    .local v7, threadId:J
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v4

    .line 334
    .local v9, timeMillis:J
    const/4 v0, 0x0

    .line 335
    .local v0, insertFw:Z
    const/4 v4, 0x0

    .line 336
    .local v4, reason:I
    invoke-static {p0, v2}, Landroid/provider/Telephony;->shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 337
    .local v5, ret:I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 338
    const/4 v0, 0x1

    .line 339
    const/4 v4, 0x5

    .line 345
    :cond_2
    :goto_2
    if-eqz v0, :cond_8

    .line 346
    invoke-static {p0}, Landroid/provider/Telephony;->getSmsAct(Landroid/content/Context;)I

    move-result v0

    .line 348
    .local v0, act:I
    const/4 v5, 0x1

    if-ne v0, v5, :cond_8

    .line 349
    .end local v5           #ret:I
    const/16 p1, 0x105

    if-ne v4, p1, :cond_6

    .line 350
    .end local p1           #threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const-string p1, "\u9759\u97f3\u975e\u767d\u540d\u5355\u6210\u5458\u5f69\u4fe1."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .end local v0           #act:I
    invoke-static {p1, v0}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    :cond_3
    :goto_3
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 355
    .local p1, values:Landroid/content/ContentValues;
    const-string v0, "number"

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v0, "date"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .end local v2           #address:Ljava/lang/String;
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 357
    const-string v0, "type"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    const-string v0, "data1"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    .end local v3           #subject:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090038

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v0, "reason"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 361
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .end local p0
    sget-object v0, Landroid/provider/Telephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    const/4 p0, 0x0

    .line 385
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 329
    .end local v4           #reason:I
    .end local v7           #threadId:J
    .end local v9           #timeMillis:J
    .restart local v2       #address:Ljava/lang/String;
    .restart local p0
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_4
    :try_start_2
    const-string v0, ""

    move-object v3, v0

    goto/16 :goto_1

    .line 340
    .local v0, insertFw:Z
    .restart local v3       #subject:Ljava/lang/String;
    .restart local v4       #reason:I
    .restart local v5       #ret:I
    .restart local v7       #threadId:J
    .restart local v9       #timeMillis:J
    :cond_5
    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 341
    const/4 v0, 0x1

    .line 342
    const/16 v4, 0x105

    goto :goto_2

    .line 351
    .end local v5           #ret:I
    .end local p1           #threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local v0, act:I
    :cond_6
    const/4 p1, 0x5

    if-ne v4, p1, :cond_3

    .line 352
    const-string p1, "\u9759\u97f3\u9ed1\u540d\u5355\u6210\u5458\u5f69\u4fe1."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .end local v0           #act:I
    invoke-static {p1, v0}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 385
    .end local v2           #address:Ljava/lang/String;
    .end local v3           #subject:Ljava/lang/String;
    .end local v4           #reason:I
    .end local v7           #threadId:J
    .end local v9           #timeMillis:J
    .end local p0
    :catchall_0
    move-exception p0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p0

    .restart local v3       #subject:Ljava/lang/String;
    .restart local v4       #reason:I
    .restart local v7       #threadId:J
    .restart local v9       #timeMillis:J
    .restart local p0
    .local p1, values:Landroid/content/ContentValues;
    :cond_7
    move-object v2, v3

    .line 358
    goto :goto_4

    .line 368
    .restart local v2       #address:Ljava/lang/String;
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_8
    :try_start_3
    const-string v0, "Mms:app"

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .end local v4           #reason:I
    move-result v0

    if-eqz v0, :cond_9

    .line 369
    const-string v0, "Mms:app"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMmsNewMessageNotificationInfo: count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", first addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", thread_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_9
    const v5, 0x7f0200ed

    const/4 v6, 0x0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    move-object v4, p0

    invoke-static/range {v2 .. v11}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJI)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object p0

    .line 378
    .local p0, info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 379
    .end local v2           #address:Ljava/lang/String;
    :goto_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 380
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 385
    :cond_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private static getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "sub"
    .parameter "charset"

    .prologue
    .line 690
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJI)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .locals 9
    .parameter "address"
    .parameter "body"
    .parameter "context"
    .parameter "iconResourceId"
    .parameter "subject"
    .parameter "threadId"
    .parameter "timeMillis"
    .parameter "count"

    .prologue
    .line 504
    invoke-static {p2, p5, p6}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 505
    .local v1, clickIntent:Landroid/content/Intent;
    const/high16 p5, 0x3400

    invoke-virtual {v1, p5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 509
    .end local p5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 510
    const p1, 0x7f090107

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p1
    move-result-object p1

    .line 513
    .restart local p1
    :cond_0
    const/4 p5, 0x0

    const/4 p6, 0x0

    invoke-static {p2, p0, p5, p6}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    .line 515
    .local p5, senderInfo:Ljava/lang/String;
    const/4 p6, 0x0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {p5, p6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 517
    .local v7, senderInfoName:Ljava/lang/String;
    invoke-static {p2, p0, p4, p1}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 520
    .local v4, ticker:Ljava/lang/CharSequence;
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-object v2, p1

    move v3, p3

    move-wide/from16 v5, p7

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/CharSequence;JLjava/lang/String;I)V

    return-object v0
.end method

.method private static final getSmsNewDeliveryInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    .locals 12
    .parameter "context"
    .parameter "messageUri"

    .prologue
    const/4 v4, 0x0

    .line 390
    if-nez p1, :cond_0

    move-object v0, v4

    .line 415
    :goto_0
    return-object v0

    .line 392
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 393
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 396
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_1

    move-object v0, v4

    .line 397
    goto :goto_0

    .line 400
    :cond_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 415
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v4

    goto :goto_0

    .line 403
    :cond_2
    const/4 v0, 0x2

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 404
    .local v7, address:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getRealName()Ljava/lang/String;

    move-result-object v9

    .line 405
    .local v9, name:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 409
    :cond_3
    const-wide/16 v10, 0xbb8

    .line 410
    .local v10, timeMillis:J
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    const v2, 0x7f0900c6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v10, v11}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;-><init>(Ljava/lang/CharSequence;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #address:Ljava/lang/String;
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #timeMillis:J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static final getSmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .locals 12
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;"
        }
    .end annotation

    .prologue
    .line 421
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 422
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(type = 1 AND seen = 0)"

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 426
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 427
    const/4 p0, 0x0

    .line 491
    .end local p0
    .end local p1           #threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :goto_0
    return-object p0

    .line 431
    .restart local p0
    .restart local p1       #threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 432
    const/4 p0, 0x0

    .line 491
    .end local p0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 435
    .restart local p0
    :cond_1
    const/4 v0, 0x2

    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, address:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefNotificationBodyEnabledWithSecure(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 438
    .local v3, body:Ljava/lang/String;
    :goto_1
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 439
    .local v7, threadId:J
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 441
    .local v9, timeMillis:J
    const/4 v0, 0x0

    .line 442
    .local v0, insertFw:Z
    const/4 v4, 0x0

    .line 443
    .local v4, reason:I
    invoke-static {p0, v2}, Landroid/provider/Telephony;->shouldBlockByFirewall(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 444
    .local v5, ret:I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 445
    const/4 v0, 0x1

    .line 446
    const/4 v4, 0x3

    .line 452
    :cond_2
    :goto_2
    if-eqz v0, :cond_7

    .line 453
    invoke-static {p0}, Landroid/provider/Telephony;->getSmsAct(Landroid/content/Context;)I

    move-result v0

    .line 455
    .local v0, act:I
    const/4 v5, 0x1

    if-ne v0, v5, :cond_7

    .line 456
    .end local v5           #ret:I
    const/4 p1, 0x3

    if-ne v4, p1, :cond_6

    .line 457
    .end local p1           #threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const-string p1, "\u9759\u97f3\u9ed1\u540d\u5355\u6210\u5458\u77ed\u4fe1."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .end local v0           #act:I
    invoke-static {p1, v0}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    :cond_3
    :goto_3
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 463
    .local p1, values:Landroid/content/ContentValues;
    const-string v0, "number"

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v0, "date"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .end local v2           #address:Ljava/lang/String;
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 465
    const-string v0, "type"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 466
    const-string v0, "data1"

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v0, "reason"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 468
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .end local p0
    sget-object v0, Landroid/provider/Telephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    const/4 p0, 0x0

    .line 491
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 436
    .end local v3           #body:Ljava/lang/String;
    .end local v4           #reason:I
    .end local v7           #threadId:J
    .end local v9           #timeMillis:J
    .restart local v2       #address:Ljava/lang/String;
    .restart local p0
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_4
    :try_start_2
    const-string v0, ""

    move-object v3, v0

    goto :goto_1

    .line 447
    .local v0, insertFw:Z
    .restart local v3       #body:Ljava/lang/String;
    .restart local v4       #reason:I
    .restart local v5       #ret:I
    .restart local v7       #threadId:J
    .restart local v9       #timeMillis:J
    :cond_5
    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 448
    const/4 v0, 0x1

    .line 449
    const/16 v4, 0x103

    goto :goto_2

    .line 458
    .end local v5           #ret:I
    .end local p1           #threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local v0, act:I
    :cond_6
    const/16 p1, 0x103

    if-ne v4, p1, :cond_3

    .line 459
    const-string p1, "\u9759\u97f3\u975e\u767d\u540d\u5355\u6210\u5458\u77ed\u4fe1."

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .end local v0           #act:I
    invoke-static {p1, v0}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 491
    .end local v2           #address:Ljava/lang/String;
    .end local v3           #body:Ljava/lang/String;
    .end local v4           #reason:I
    .end local v7           #threadId:J
    .end local v9           #timeMillis:J
    .end local p0
    :catchall_0
    move-exception p0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p0

    .line 475
    .restart local v2       #address:Ljava/lang/String;
    .restart local v3       #body:Ljava/lang/String;
    .restart local v4       #reason:I
    .restart local v7       #threadId:J
    .restart local v9       #timeMillis:J
    .restart local p0
    .restart local p1       #threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_7
    :try_start_3
    const-string v0, "Mms:app"

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .end local v4           #reason:I
    move-result v0

    if-eqz v0, :cond_8

    .line 476
    const-string v0, "Mms:app"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSmsNewMessageNotificationInfo: count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", first addr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", thread_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_8
    const v5, 0x7f0200ee

    const/4 v6, 0x0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v11

    move-object v4, p0

    invoke-static/range {v2 .. v11}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJI)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object p0

    .line 484
    .local p0, info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 485
    .end local v2           #address:Ljava/lang/String;
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 486
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 491
    :cond_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private static getUndeliveredMessageCount(Landroid/content/Context;[J)I
    .locals 12
    .parameter "context"
    .parameter "threadIdResult"

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v11, 0x0

    .line 783
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v11

    const-string v4, "read=0"

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 785
    .local v10, undeliveredCursor:Landroid/database/Cursor;
    if-nez v10, :cond_0

    move v0, v11

    .line 808
    :goto_0
    return v0

    .line 788
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 790
    .local v7, count:I
    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 791
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p1, v0

    .line 793
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 795
    const/4 v0, 0x0

    aget-wide v8, p1, v0

    .line 796
    .local v8, firstId:J
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 797
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_1

    .line 798
    const-wide/16 v8, 0x0

    .line 802
    :cond_2
    const/4 v0, 0x1

    aput-wide v8, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    .end local v8           #firstId:J
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 808
    goto :goto_0

    .line 806
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const-string v3, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    .line 143
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 144
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    .line 149
    return-void
.end method

.method public static isFailedToDeliver(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 858
    if-eqz p0, :cond_0

    const-string v0, "undelivered_flag"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isFailedToDownload(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 862
    if-eqz p0, :cond_0

    const-string v0, "failed_download_flag"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static nonBlockingUpdateDeliveryInfo(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "messageUri"

    .prologue
    .line 176
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 177
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_delivery_reports"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 180
    .local v0, deliverReport:Z
    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 182
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/transaction/MessagingNotification$2;

    invoke-direct {v3, p0, p1}, Lcom/android/mms/transaction/MessagingNotification$2;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V
    .locals 2
    .parameter "context"
    .parameter "isNew"
    .parameter "isStatusMessage"

    .prologue
    .line 161
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/transaction/MessagingNotification$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification$1;-><init>(Landroid/content/Context;ZZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 166
    return-void
.end method

.method public static notifyDownloadFailed(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 695
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 696
    return-void
.end method

.method private static notifyFailed(Landroid/content/Context;ZJZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 709
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 711
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 712
    if-nez v0, :cond_0

    .line 776
    :goto_0
    return-void

    .line 716
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 726
    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    .line 727
    invoke-static {p0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v2

    .line 730
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 733
    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    .line 734
    const p2, 0x7f0900c9

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v1

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 736
    const p3, 0x7f0900ca

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 738
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 756
    :goto_1
    const/high16 v2, 0x1400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 757
    const/4 v2, 0x0

    const/high16 v4, 0x800

    invoke-static {p0, v2, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 760
    const v2, 0x7f0200ef

    iput v2, v3, Landroid/app/Notification;->icon:I

    .line 761
    iput-object p3, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 762
    invoke-virtual {v3, p0, p3, p2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 764
    if-eqz p4, :cond_1

    .line 765
    invoke-static {p0}, Lcom/android/mms/util/VibratorManager;->vibrate(Landroid/content/Context;)V

    .line 766
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "sms_received_sound"

    invoke-static {p0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 768
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p0, 0x0

    :goto_2
    iput-object p0, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 771
    :cond_1
    if-eqz p1, :cond_7

    .line 772
    const/16 p0, 0x213

    invoke-virtual {v0, p0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 740
    :cond_2
    if-eqz p1, :cond_3

    const v2, 0x7f0900de

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 744
    :goto_3
    const v4, 0x7f0900e0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 745
    if-eqz p1, :cond_4

    .line 747
    invoke-static {p0, p2, p3}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object p2

    .line 748
    const-string p3, "failed_download_flag"

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object p3, v2

    move-object v1, p2

    move-object p2, v4

    goto :goto_1

    .line 740
    :cond_3
    const v2, 0x7f0900df

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 750
    :cond_4
    const/4 p2, 0x0

    aget-wide p2, v1, p2

    const-wide/16 v5, 0x0

    cmp-long p2, p2, v5

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    aget-wide p2, v1, p2

    .line 751
    :goto_4
    invoke-static {p0, p2, p3}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object p2

    .line 752
    const-string p3, "undelivered_flag"

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object p3, v2

    move-object v1, p2

    move-object p2, v4

    goto :goto_1

    .line 750
    :cond_5
    const-wide/16 p2, 0x0

    goto :goto_4

    .line 768
    :cond_6
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_2

    .line 774
    :cond_7
    const/16 p0, 0x315

    invoke-virtual {v0, p0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method public static notifySendFailed(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 699
    const-wide/16 v0, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 700
    return-void
.end method

.method public static notifySendFailed(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "noisy"

    .prologue
    .line 703
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 704
    return-void
.end method

.method private static playDeliveryReportRingTone(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter "context"
    .parameter "sp"

    .prologue
    .line 558
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sms_delivered_sound"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, ringtoneStr:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 561
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 563
    .local v0, ringtone:Landroid/media/Ringtone;
    if-eqz v0, :cond_0

    .line 564
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/Ringtone;->setNeedAudioFocus(Z)V

    .line 565
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 566
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 569
    .end local v0           #ringtone:Landroid/media/Ringtone;
    :cond_0
    return-void
.end method

.method private static sendApplicationUpdateMessage(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "count"

    .prologue
    .line 572
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 573
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.update_application_message"

    if-lez p1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    const-string v1, "android.intent.extra.update_application_flatten_name"

    const-string v2, "com.android.mms/.ui.MmsTabActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 578
    return-void

    .line 573
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    .locals 7
    .parameter "context"
    .parameter "isStatusMessage"
    .parameter "message"
    .parameter "timeMillis"

    .prologue
    .line 539
    if-nez p1, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 545
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    sget-object v6, Lcom/android/mms/transaction/MessagingNotification;->mToastHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$3;

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification$3;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/CharSequence;J)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static updateDownloadFailedNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 852
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getDownloadFailedMessageCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 853
    const/16 v0, 0x213

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 855
    :cond_0
    return-void
.end method

.method private static updateNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V
    .locals 1
    .parameter "context"
    .parameter "clickIntent"
    .parameter "description"
    .parameter "iconRes"
    .parameter "isNew"
    .parameter "ticker"
    .parameter "timeMillis"
    .parameter "title"
    .parameter "messageCount"
    .parameter "uniqueThreadCount"

    .prologue
    .line 591
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 593
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    .end local v0           #sp:Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 658
    .end local p0
    .end local p3
    .end local p4
    .end local p5
    .end local p6
    :goto_0
    return-void

    .line 597
    .restart local p0
    .restart local p3
    .restart local p4
    .restart local p5
    .restart local p6
    :cond_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0, p3, p5, p6, p7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 603
    .local v0, notification:Landroid/app/Notification;
    const/4 p3, 0x1

    if-le p10, p3, :cond_1

    .line 604
    .end local p3
    const p1, 0x7f0900c8

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p1
    move-result-object p8

    .line 605
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.MAIN"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 607
    .restart local p1
    const/high16 p3, 0x3400

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 611
    const-string p3, "vnd.android-dir/mms-sms"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    :cond_1
    const/4 p3, 0x1

    if-le p9, p3, :cond_2

    .line 618
    const p2, 0x7f0900c7

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .end local p2
    const/4 p5, 0x0

    invoke-static {p9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .end local p5
    move-result-object p6

    .end local p6
    aput-object p6, p3, p5

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 623
    .restart local p2
    :cond_2
    const/4 p3, 0x0

    const/high16 p5, 0x800

    invoke-static {p0, p3, p1, p5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 627
    .local p3, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, p0, p8, p2, p3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 629
    iget p3, v0, Landroid/app/Notification;->flags:I

    .end local p3           #pendingIntent:Landroid/app/PendingIntent;
    or-int/lit8 p3, p3, 0x1

    iput p3, v0, Landroid/app/Notification;->flags:I

    .line 630
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p5, 0x1060074

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 632
    .local p3, defaultColor:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const p6, 0x10e0010

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p5

    .line 634
    .local p5, defaultFreq:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p6

    const-string p7, "mms_breathing_light_color"

    invoke-static {p6, p7, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    .line 636
    .local p3, color:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p6

    const-string p7, "mms_breathing_light_freq"

    invoke-static {p6, p7, p5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p5

    .line 638
    .local p5, freq:I
    iput p3, v0, Landroid/app/Notification;->ledARGB:I

    .line 639
    invoke-static {p5}, Landroid/app/Notification;->getLedPwmOffOn(I)[I

    move-result-object p3

    .line 640
    .local p3, offOn:[I
    const/4 p5, 0x0

    aget p5, p3, p5

    .end local p5           #freq:I
    iput p5, v0, Landroid/app/Notification;->ledOffMS:I

    .line 641
    const/4 p5, 0x1

    aget p3, p3, p5

    .end local p3           #offOn:[I
    iput p3, v0, Landroid/app/Notification;->ledOnMS:I

    .line 642
    iget p3, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p3, p3, -0x5

    iput p3, v0, Landroid/app/Notification;->defaults:I

    .line 645
    const/4 p3, 0x0

    sget-object p5, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    const/4 p6, 0x0

    invoke-static {p0, p3, p5, p6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    iput-object p3, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 648
    if-eqz p4, :cond_4

    .line 649
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string p4, "sms_received_sound"

    .end local p4
    invoke-static {p3, p4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 651
    .local p3, ringtoneStr:Ljava/lang/String;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_3

    const/4 p3, 0x0

    .end local p3           #ringtoneStr:Ljava/lang/String;
    :goto_1
    iput-object p3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 652
    invoke-static {p0, v0}, Lcom/android/mms/util/Reminder;->newNotification(Landroid/content/Context;Landroid/app/Notification;)V

    goto/16 :goto_0

    .line 651
    .restart local p3       #ringtoneStr:Ljava/lang/String;
    :cond_3
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    goto :goto_1

    .line 654
    .end local p3           #ringtoneStr:Ljava/lang/String;
    .restart local p4
    :cond_4
    const-string p3, "notification"

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    .line 656
    .local p0, nm:Landroid/app/NotificationManager;
    const/16 p3, 0x7b

    invoke-virtual {p0, p3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method public static updateSendFailedNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 812
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 813
    const/16 v0, 0x315

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 817
    :goto_0
    return-void

    .line 815
    :cond_0
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static updateSendFailedNotificationForThread(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 823
    const/4 v1, 0x2

    new-array v0, v1, [J

    fill-array-data v0, :array_0

    .line 824
    .local v0, msgThreadId:[J
    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 827
    const/16 v1, 0x315

    invoke-static {p0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 829
    :cond_0
    return-void

    .line 823
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
