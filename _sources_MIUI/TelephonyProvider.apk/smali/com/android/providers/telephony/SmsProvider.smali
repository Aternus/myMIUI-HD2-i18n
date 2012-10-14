.class public Lcom/android/providers/telephony/SmsProvider;
.super Landroid/content/ContentProvider;
.source "SmsProvider.java"


# static fields
.field private static final CONTACT_QUERY_PROJECTION:[Ljava/lang/String;

.field private static final ICC_COLUMNS:[Ljava/lang/String;

.field private static final ICC_URI:Landroid/net/Uri;

.field private static final NOTIFICATION_URI:Landroid/net/Uri;

.field private static final ONE:Ljava/lang/Integer;

.field private static final sConversationProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIDProjection:[Ljava/lang/String;

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v3, "sms"

    .line 52
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->NOTIFICATION_URI:Landroid/net/Uri;

    .line 53
    const-string v0, "content://sms/icc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->ICC_URI:Landroid/net/Uri;

    .line 59
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->ONE:Ljava/lang/Integer;

    .line 61
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "person"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->CONTACT_QUERY_PROJECTION:[Ljava/lang/String;

    .line 70
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "service_center_address"

    aput-object v1, v0, v5

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "message_class"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "index_on_icc"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_status_report"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "timed"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->ICC_COLUMNS:[Ljava/lang/String;

    .line 791
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    .line 793
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->sIDProjection:[Ljava/lang/String;

    .line 821
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 825
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 826
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "#"

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 827
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "inbox"

    invoke-virtual {v0, v3, v1, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 828
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "inbox/#"

    invoke-virtual {v0, v3, v1, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 829
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "sent"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 830
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "sent/#"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 831
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "draft"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 832
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "draft/#"

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 833
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "outbox"

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 834
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "outbox/#"

    const/16 v2, 0x9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 835
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "undelivered"

    const/16 v2, 0x1b

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 836
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "failed"

    const/16 v2, 0x18

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 837
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "failed/#"

    const/16 v2, 0x19

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 838
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "queued"

    const/16 v2, 0x1a

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 839
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "conversations"

    const/16 v2, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 840
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "conversations/*"

    const/16 v2, 0xb

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 841
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "raw"

    const/16 v2, 0xf

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 842
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "attachments"

    const/16 v2, 0x10

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 843
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "attachments/#"

    const/16 v2, 0x11

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 844
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "threadID"

    const/16 v2, 0x12

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 845
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "threadID/*"

    const/16 v2, 0x13

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 846
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "status/#"

    const/16 v2, 0x14

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 847
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "sr_pending"

    const/16 v2, 0x15

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 848
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "icc"

    const/16 v2, 0x16

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 849
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "icc/#"

    const/16 v2, 0x17

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 851
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "sim"

    const/16 v2, 0x16

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 852
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "sim/#"

    const/16 v2, 0x17

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 854
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    const-string v1, "snippet"

    const-string v2, "sms.body AS snippet"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    const-string v1, "thread_id"

    const-string v2, "sms.thread_id AS thread_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    const-string v1, "msg_count"

    const-string v2, "groups.msg_count AS msg_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    const-string v1, "delta"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V
    .locals 2
    .parameter "qb"
    .parameter "type"

    .prologue
    .line 308
    const-string v0, "sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 310
    if-eqz p2, :cond_0

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 313
    :cond_0
    return-void
.end method

.method private constructQueryForUndelivered(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .locals 1
    .parameter "qb"

    .prologue
    .line 316
    const-string v0, "sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 318
    const-string v0, "(type=4 OR type=5 OR type=6)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 321
    return-void
.end method

.method private convertIccToSms(Landroid/telephony/SmsMessage;)Ljava/util/ArrayList;
    .locals 4
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SmsMessage;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, result:Ljava/util/ArrayList;
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getIndexOnIcc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isStatusReportMessage()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    return-object v0
.end method

.method private deleteMessageFromIcc(Ljava/lang/String;)I
    .locals 7
    .parameter "messageIndexString"

    .prologue
    const/4 v6, 0x0

    .line 635
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    .line 638
    .local v2, smsManager:Landroid/telephony/SmsManager;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 645
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 647
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->ICC_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 648
    return v3

    .line 638
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 641
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 642
    .local v1, exception:Ljava/lang/NumberFormatException;
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad SMS ICC ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 645
    .end local v1           #exception:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 647
    .restart local v0       #cr:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->ICC_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 648
    throw v3
.end method

.method private getAllMessagesFromIcc()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 289
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v5

    .line 290
    .local v5, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v5}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object v3

    .line 291
    .local v3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v4, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 294
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SmsMessage;

    .line 295
    .local v2, message:Landroid/telephony/SmsMessage;
    if-eqz v2, :cond_0

    .line 296
    invoke-direct {p0, v2}, Lcom/android/providers/telephony/SmsProvider;->convertIccToSms(Landroid/telephony/SmsMessage;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    .end local v2           #message:Landroid/telephony/SmsMessage;
    :cond_1
    new-instance v6, Lcom/android/common/ArrayListCursor;

    sget-object v7, Lcom/android/providers/telephony/SmsProvider;->ICC_COLUMNS:[Ljava/lang/String;

    invoke-direct {v6, v7, v4}, Lcom/android/common/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {p0, v6}, Lcom/android/providers/telephony/SmsProvider;->withIccNotificationUri(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6
.end method

.method private getSingleMessageFromIcc(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "messageIndexString"

    .prologue
    .line 266
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 267
    .local v2, messageIndex:I
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v5

    .line 268
    .local v5, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v5}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object v3

    .line 269
    .local v3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v4, singleRow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SmsMessage;

    .line 272
    .local v1, message:Landroid/telephony/SmsMessage;
    if-nez v1, :cond_0

    .line 273
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Message not retrieved. ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v1           #message:Landroid/telephony/SmsMessage;
    .end local v2           #messageIndex:I
    .end local v3           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    .end local v4           #singleRow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    .end local v5           #smsManager:Landroid/telephony/SmsManager;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 280
    .local v0, exception:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad SMS ICC ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 276
    .end local v0           #exception:Ljava/lang/NumberFormatException;
    .restart local v1       #message:Landroid/telephony/SmsMessage;
    .restart local v2       #messageIndex:I
    .restart local v3       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    .restart local v4       #singleRow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    .restart local v5       #smsManager:Landroid/telephony/SmsManager;
    :cond_0
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/providers/telephony/SmsProvider;->convertIccToSms(Landroid/telephony/SmsMessage;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v6, Lcom/android/common/ArrayListCursor;

    sget-object v7, Lcom/android/providers/telephony/SmsProvider;->ICC_COLUMNS:[Ljava/lang/String;

    invoke-direct {v6, v7, v4}, Lcom/android/common/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {p0, v6}, Lcom/android/providers/telephony/SmsProvider;->withIccNotificationUri(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    return-object v6
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 737
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;J)V

    .line 738
    return-void
.end method

.method private notifyChange(Landroid/net/Uri;J)V
    .locals 4
    .parameter "uri"
    .parameter "threadId"

    .prologue
    const/4 v3, 0x0

    .line 741
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 742
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 744
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    .line 745
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 749
    :goto_0
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_PREVIEW_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 750
    const-string v1, "content://mms-sms/complete-conversations"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 751
    return-void

    .line 747
    :cond_0
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

    invoke-static {v1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private static parseThreadId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 15
    .parameter "msgIdValue"
    .parameter "db"

    .prologue
    .line 754
    const-wide/16 v9, -0x1

    .line 756
    .local v9, msgId:J
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 761
    .end local v9           #msgId:J
    .local v8, msgId:J
    :goto_0
    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 762
    .end local v8           #msgId:J
    const-wide/16 p0, -0x1

    .line 778
    .end local p0
    .end local p1
    :goto_1
    return-wide p0

    .line 757
    .restart local v9       #msgId:J
    .restart local p0
    .restart local p1
    :catch_0
    move-exception v8

    .line 758
    .local v8, e:Ljava/lang/Exception;
    const-string v8, "SmsProvider"

    .end local v8           #e:Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad message id: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v8, v9

    .end local v9           #msgId:J
    .local v8, msgId:J
    goto :goto_0

    .line 764
    .end local v8           #msgId:J
    :cond_0
    const-string v8, "sms"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "thread_id"

    aput-object v11, v9, v10

    const-string v10, "_id=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p0, v11, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 771
    .local p0, c:Landroid/database/Cursor;
    const-wide/16 v8, -0x1

    .line 772
    .local v8, threadId:J
    if-eqz p0, :cond_2

    .line 773
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    .end local p1
    if-eqz p1, :cond_1

    .line 774
    const/16 p1, 0x0

    invoke-interface/range {p0 .. p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 776
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-wide p0, v8

    .end local v8           #threadId:J
    .local p0, threadId:J
    goto :goto_1
.end method

.method private withIccNotificationUri(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/providers/telephony/SmsProvider;->ICC_URI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 304
    return-object p1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 23
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 537
    sget-object v19, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v11

    .line 538
    .local v11, match:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 539
    .local v7, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 540
    .local v5, context:Landroid/content/Context;
    sparse-switch v11, :sswitch_data_0

    .line 621
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "Unknown URL"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 547
    :sswitch_0
    const-string v15, ""

    .line 549
    .local v15, queryWhere:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 550
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "WHERE ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 552
    :cond_0
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SELECT _id FROM threads WHERE _id IN (SELECT DISTINCT thread_id FROM sms "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 554
    .local v14, query:Ljava/lang/String;
    move-object v0, v7

    move-object v1, v14

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 556
    .local v4, c:Landroid/database/Cursor;
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 557
    .local v17, threadIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v4, :cond_2

    .line 559
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 560
    const/16 v19, 0x0

    move-object v0, v4

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 563
    :catchall_0
    move-exception v19

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v19

    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 567
    :cond_2
    const-string v19, "sms"

    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 568
    .local v6, count:I
    if-eqz v6, :cond_4

    .line 570
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 571
    .local v18, tid:Ljava/lang/Integer;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object v0, v5

    move-object v1, v7

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_1

    .line 574
    .end local v18           #tid:Ljava/lang/Integer;
    :cond_3
    const-string v19, "threads"

    const-string v20, "_id NOT IN (SELECT DISTINCT thread_id FROM sms UNION SELECT DISTINCT thread_id FROM pdu)"

    const/16 v21, 0x0

    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 624
    .end local v4           #c:Landroid/database/Cursor;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v14           #query:Ljava/lang/String;
    .end local v15           #queryWhere:Ljava/lang/String;
    .end local v17           #threadIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local p3
    :cond_4
    :goto_2
    if-lez v6, :cond_5

    .line 625
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_5
    move/from16 v19, v6

    .line 627
    .end local v6           #count:I
    :goto_3
    return v19

    .line 582
    .restart local p3
    :sswitch_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 583
    .local v13, message_id:I
    invoke-static {v5, v7, v13}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->deleteOneSms(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    .restart local v6       #count:I
    goto :goto_2

    .line 584
    .end local v6           #count:I
    .end local v13           #message_id:I
    :catch_0
    move-exception v19

    move-object/from16 v8, v19

    .line 585
    .local v8, e:Ljava/lang/Exception;
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Bad message id: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v21

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 594
    .end local v8           #e:Ljava/lang/Exception;
    .restart local p0
    .restart local p3
    :sswitch_2
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x1

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v16

    .line 602
    .local v16, threadID:I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "thread_id="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 603
    const-string v19, "sms"

    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 604
    .restart local v6       #count:I
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v19, v0

    move-object v0, v5

    move-object v1, v7

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V

    goto/16 :goto_2

    .line 595
    .end local v6           #count:I
    .end local v16           #threadID:I
    :catch_1
    move-exception v19

    move-object/from16 v9, v19

    .line 596
    .local v9, ex:Ljava/lang/Exception;
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Bad conversation thread id: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v21

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 608
    .end local v9           #ex:Ljava/lang/Exception;
    .restart local p0
    :sswitch_3
    const-string v19, "raw"

    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 609
    .restart local v6       #count:I
    goto/16 :goto_2

    .line 612
    .end local v6           #count:I
    :sswitch_4
    const-string v19, "sr_pending"

    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 613
    .restart local v6       #count:I
    goto/16 :goto_2

    .line 616
    .end local v6           #count:I
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x1

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 618
    .local v12, messageIndexString:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/SmsProvider;->deleteMessageFromIcc(Ljava/lang/String;)I

    move-result v19

    goto/16 :goto_3

    .line 540
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xb -> :sswitch_2
        0xf -> :sswitch_3
        0x15 -> :sswitch_4
        0x17 -> :sswitch_5
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    const-string v4, "vnd.android.cursor.item/sms"

    const-string v3, "vnd.android.cursor.dir/sms"

    .line 325
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 343
    const/4 v1, 0x0

    .end local p0
    :goto_0
    return-object v1

    .line 327
    .restart local p0
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/sms"

    move-object v1, v3

    goto :goto_0

    .line 330
    :pswitch_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 331
    const-string v1, "vnd.android.cursor.item/sms"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    goto :goto_0

    .line 332
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 333
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v1, "vnd.android.cursor.dir/sms"

    move-object v1, v3

    goto :goto_0

    .line 337
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .restart local p0
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string v1, "conversations"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    const-string v1, "vnd.android.cursor.item/sms-chat"

    goto :goto_0

    .line 340
    :cond_0
    const-string v1, "vnd.android.cursor.item/sms"

    move-object v1, v4

    goto :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 26
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 350
    const/16 v23, 0x0

    .line 352
    .local v23, type:I
    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    .line 353
    .local v18, match:I
    const-string v21, "sms"

    .line 355
    .local v21, table:Ljava/lang/String;
    sparse-switch v18, :sswitch_data_0

    .line 407
    const-string v4, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v4, 0x0

    .line 531
    :goto_0
    return-object v4

    .line 357
    :sswitch_0
    const-string v4, "type"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    .line 358
    .local v24, typeObj:Ljava/lang/Integer;
    if-eqz v24, :cond_b

    .line 359
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 411
    .end local v24           #typeObj:Ljava/lang/Integer;
    :goto_1
    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 412
    .local v22, threadId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 414
    .local v15, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "sms"

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 415
    const/4 v10, 0x0

    .line 416
    .local v10, addDate:Z
    const/4 v11, 0x0

    .line 419
    .local v11, addType:Z
    if-nez p2, :cond_c

    .line 420
    new-instance v25, Landroid/content/ContentValues;

    const/4 v4, 0x1

    move-object/from16 v0, v25

    move v1, v4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 421
    .local v25, values:Landroid/content/ContentValues;
    const/4 v10, 0x1

    .line 422
    const/4 v11, 0x1

    .line 435
    :cond_0
    :goto_2
    if-eqz v10, :cond_1

    .line 436
    const-string v4, "date"

    new-instance v5, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 439
    :cond_1
    if-eqz v11, :cond_2

    if-eqz v23, :cond_2

    .line 440
    const-string v4, "type"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 443
    :cond_2
    const-string v4, "server_date"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 444
    const-string v4, "server_date"

    const-string v5, "date"

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 448
    :cond_3
    const-string v4, "thread_id"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    .line 449
    const-string v4, "address"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 451
    .local v12, address:Ljava/lang/String;
    if-eqz v22, :cond_4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_5

    :cond_4
    if-eqz v12, :cond_5

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v12}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 453
    const-string v4, "thread_id"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 461
    :cond_5
    const-string v4, "type"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 462
    const-string v4, "sms"

    const-string v5, "thread_id=? AND type=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "thread_id"

    move-object/from16 v0, v25

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v15, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 467
    :cond_6
    const/4 v4, 0x1

    move/from16 v0, v23

    move v1, v4

    if-ne v0, v1, :cond_f

    .line 469
    const-string v4, "person"

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_8

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 470
    const/4 v13, 0x0

    .line 471
    .local v13, cursor:Landroid/database/Cursor;
    sget-object v4, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    invoke-static {v12}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 474
    .local v5, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/android/providers/telephony/SmsProvider;->CONTACT_QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 479
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 480
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 481
    .local v17, id:Ljava/lang/Long;
    const-string v4, "person"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    .end local v17           #id:Ljava/lang/Long;
    :cond_7
    if-eqz v13, :cond_8

    .line 487
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 503
    .end local v5           #uri:Landroid/net/Uri;
    .end local v10           #addDate:Z
    .end local v11           #addType:Z
    .end local v12           #address:Ljava/lang/String;
    .end local v13           #cursor:Landroid/database/Cursor;
    :cond_8
    :goto_3
    const-string v4, "body"

    move-object v0, v15

    move-object/from16 v1, v21

    move-object v2, v4

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v19

    .line 508
    .local v19, rowID:J
    const-string v4, "sms"

    move-object/from16 v0, v21

    move-object v1, v4

    if-ne v0, v1, :cond_9

    .line 512
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 513
    .local v14, cv:Landroid/content/ContentValues;
    const-string v4, "_id"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 514
    const-string v4, "index_text"

    const-string v5, "body"

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v4, "source_id"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 516
    const-string v4, "table_to_use"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 517
    const-string v4, "words"

    const-string v5, "index_text"

    invoke-virtual {v15, v4, v5, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 519
    .end local v14           #cv:Landroid/content/ContentValues;
    :cond_9
    const-wide/16 v6, 0x0

    cmp-long v4, v19, v6

    if-lez v4, :cond_12

    .line 520
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 522
    .restart local v5       #uri:Landroid/net/Uri;
    const-string v4, "SmsProvider"

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 523
    const-string v4, "SmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " succeeded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_a
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;J)V

    move-object v4, v5

    .line 526
    goto/16 :goto_0

    .line 362
    .end local v5           #uri:Landroid/net/Uri;
    .end local v15           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v19           #rowID:J
    .end local v22           #threadId:Ljava/lang/Long;
    .end local v25           #values:Landroid/content/ContentValues;
    .restart local v24       #typeObj:Ljava/lang/Integer;
    :cond_b
    const/16 v23, 0x1

    .line 364
    goto/16 :goto_1

    .line 367
    .end local v24           #typeObj:Ljava/lang/Integer;
    :sswitch_1
    const/16 v23, 0x1

    .line 368
    goto/16 :goto_1

    .line 371
    :sswitch_2
    const/16 v23, 0x5

    .line 372
    goto/16 :goto_1

    .line 375
    :sswitch_3
    const/16 v23, 0x6

    .line 376
    goto/16 :goto_1

    .line 379
    :sswitch_4
    const/16 v23, 0x2

    .line 380
    goto/16 :goto_1

    .line 383
    :sswitch_5
    const/16 v23, 0x3

    .line 384
    goto/16 :goto_1

    .line 387
    :sswitch_6
    const/16 v23, 0x4

    .line 388
    goto/16 :goto_1

    .line 391
    :sswitch_7
    const-string v21, "raw"

    .line 392
    goto/16 :goto_1

    .line 395
    :sswitch_8
    const-string v21, "sr_pending"

    .line 396
    goto/16 :goto_1

    .line 399
    :sswitch_9
    const-string v21, "attachments"

    .line 400
    goto/16 :goto_1

    .line 403
    :sswitch_a
    const-string v21, "canonical_addresses"

    .line 404
    goto/16 :goto_1

    .line 424
    .restart local v10       #addDate:Z
    .restart local v11       #addType:Z
    .restart local v15       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v22       #threadId:Ljava/lang/Long;
    :cond_c
    new-instance v25, Landroid/content/ContentValues;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 426
    .restart local v25       #values:Landroid/content/ContentValues;
    const-string v4, "date"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 427
    const/4 v10, 0x1

    .line 430
    :cond_d
    const-string v4, "type"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 431
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 483
    .restart local v5       #uri:Landroid/net/Uri;
    .restart local v12       #address:Ljava/lang/String;
    .restart local v13       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v4

    move-object/from16 v16, v4

    .line 484
    .local v16, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "SmsProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert: query contact uri "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #uri:Landroid/net/Uri;
    const-string v6, " caught "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    if-eqz v13, :cond_8

    .line 487
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 486
    .end local v16           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v13, :cond_e

    .line 487
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v4

    .line 493
    .end local v13           #cursor:Landroid/database/Cursor;
    :cond_f
    const-string v4, "read"

    sget-object v5, Lcom/android/providers/telephony/SmsProvider;->ONE:Ljava/lang/Integer;

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 496
    .end local v10           #addDate:Z
    .end local v11           #addType:Z
    .end local v12           #address:Ljava/lang/String;
    .end local v25           #values:Landroid/content/ContentValues;
    :cond_10
    if-nez p2, :cond_11

    .line 497
    new-instance v25, Landroid/content/ContentValues;

    const/4 v4, 0x1

    move-object/from16 v0, v25

    move v1, v4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .restart local v25       #values:Landroid/content/ContentValues;
    goto/16 :goto_3

    .line 499
    .end local v25           #values:Landroid/content/ContentValues;
    :cond_11
    move-object/from16 v25, p2

    .restart local v25       #values:Landroid/content/ContentValues;
    goto/16 :goto_3

    .line 528
    .restart local v19       #rowID:J
    :cond_12
    const-string v4, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert: failed! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 355
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_4
        0x6 -> :sswitch_5
        0x8 -> :sswitch_6
        0xf -> :sswitch_7
        0x10 -> :sswitch_9
        0x12 -> :sswitch_a
        0x15 -> :sswitch_8
        0x18 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->checkPrivacyAndReturn()Landroid/database/Cursor;

    move-result-object v8

    .line 98
    .local v8, emptyCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    move-object v2, v8

    .line 237
    .end local p0
    .end local p1
    :goto_0
    return-object v2

    .line 100
    .restart local p0
    .restart local p1
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 103
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 104
    .local v10, match:I
    packed-switch v10, :pswitch_data_0

    .line 218
    :pswitch_0
    const-string v2, "SmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v2, 0x0

    goto :goto_0

    .line 106
    :pswitch_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    .line 222
    .end local p1
    :cond_1
    :goto_1
    const/4 v7, 0x0

    .line 224
    .local v7, orderBy:Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 225
    move-object/from16 v7, p5

    .line 230
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 231
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 235
    .local v12, ret:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/providers/telephony/SmsProvider;->NOTIFICATION_URI:Landroid/net/Uri;

    invoke-interface {v12, v2, v3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v2, v12

    .line 237
    goto :goto_0

    .line 110
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v12           #ret:Landroid/database/Cursor;
    .restart local p1
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForUndelivered(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    goto :goto_1

    .line 114
    :pswitch_3
    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 118
    :pswitch_4
    const/4 v2, 0x6

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 122
    :pswitch_5
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 126
    :pswitch_6
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 130
    :pswitch_7
    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 134
    :pswitch_8
    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_1

    .line 138
    :pswitch_9
    const-string v2, "sms"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 147
    .restart local p1
    :pswitch_a
    const-string v2, "sms"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 155
    .restart local p1
    :pswitch_b
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 156
    .local v13, threadID:I
    const-string v2, "SmsProvider"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    const-string v2, "SmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query conversations: threadID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_3
    const-string v2, "sms"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 160
    .end local v13           #threadID:I
    :catch_0
    move-exception v2

    move-object v9, v2

    .line 161
    .local v9, ex:Ljava/lang/Exception;
    const-string v2, "SmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad conversation thread id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 172
    .end local v9           #ex:Ljava/lang/Exception;
    .restart local p0
    :pswitch_c
    const-string v2, "sms, (SELECT thread_id AS group_thread_id, MAX(date)AS group_date,COUNT(*) AS msg_count FROM sms GROUP BY thread_id) AS groups"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 174
    const-string v2, "sms.thread_id = groups.group_thread_id AND sms.date =groups.group_date"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 176
    sget-object v2, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 180
    :pswitch_d
    const-string v2, "raw"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 184
    :pswitch_e
    const-string v2, "sr_pending"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 188
    :pswitch_f
    const-string v2, "attachments"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 192
    :pswitch_10
    const-string v2, "attachments"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 193
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(sms_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 198
    .restart local p1
    :pswitch_11
    const-string v2, "canonical_addresses"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 199
    if-nez p2, :cond_1

    .line 200
    sget-object p2, Lcom/android/providers/telephony/SmsProvider;->sIDProjection:[Ljava/lang/String;

    goto/16 :goto_1

    .line 205
    :pswitch_12
    const-string v2, "sms"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 210
    .restart local p1
    :pswitch_13
    invoke-direct {p0}, Lcom/android/providers/telephony/SmsProvider;->getAllMessagesFromIcc()Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_0

    .line 213
    :pswitch_14
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 215
    .local v11, messageIndexString:Ljava/lang/String;
    invoke-direct {p0, v11}, Lcom/android/providers/telephony/SmsProvider;->getSingleMessageFromIcc(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_0

    .line 226
    .end local v11           #messageIndexString:Ljava/lang/String;
    .end local p1
    .restart local v7       #orderBy:Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    const-string v7, "date DESC"

    goto/16 :goto_2

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_9
        :pswitch_5
        :pswitch_a
        :pswitch_6
        :pswitch_a
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_e
        :pswitch_13
        :pswitch_14
        :pswitch_3
        :pswitch_a
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 18
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 653
    const/4 v5, 0x0

    .line 654
    .local v5, count:I
    const-string v11, "sms"

    .line 655
    .local v11, table:Ljava/lang/String;
    const/4 v8, 0x0

    .line 656
    .local v8, extraWhere:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 657
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v12, -0x1

    .line 658
    .local v12, threadId:J
    const/4 v9, 0x0

    .line 660
    .local v9, msgIdValue:Ljava/lang/String;
    sget-object v15, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    packed-switch v15, :pswitch_data_0

    .line 714
    :pswitch_0
    new-instance v15, Ljava/lang/UnsupportedOperationException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "URI "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " not supported"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 662
    :pswitch_1
    const-string v11, "raw"

    .line 719
    .end local v5           #count:I
    :goto_0
    :pswitch_2
    const-string v15, "read"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    .line 720
    .local v10, read:Ljava/lang/Integer;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 721
    const-string v15, "seen"

    move-object/from16 v0, p2

    move-object v1, v15

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 724
    :cond_0
    move-object/from16 v0, p3

    move-object v1, v8

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 725
    move-object v0, v6

    move-object v1, v11

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 727
    .restart local v5       #count:I
    if-lez v5, :cond_2

    .line 728
    const-string v15, "SmsProvider"

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 729
    const-string v15, "SmsProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "update "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " succeeded"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;J)V

    .line 733
    :cond_2
    return v5

    .line 666
    .end local v10           #read:Ljava/lang/Integer;
    :pswitch_3
    const-string v11, "sr_pending"

    .line 667
    goto :goto_0

    .line 680
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #msgIdValue:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 681
    .restart local v9       #msgIdValue:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "_id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 682
    invoke-static {v9, v6}, Lcom/android/providers/telephony/SmsProvider;->parseThreadId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v12

    .line 683
    goto/16 :goto_0

    .line 690
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #msgIdValue:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 691
    .restart local v9       #msgIdValue:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "_id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 692
    invoke-static {v9, v6}, Lcom/android/providers/telephony/SmsProvider;->parseThreadId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v12

    .line 693
    goto/16 :goto_0

    .line 696
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 699
    .local v14, threadIdValue:Ljava/lang/String;
    :try_start_0
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    .line 705
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "thread_id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 706
    goto/16 :goto_0

    .line 700
    :catch_0
    move-exception v7

    .line 701
    .local v7, ex:Ljava/lang/Exception;
    const-string v15, "SmsProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Bad conversation thread id: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 710
    .end local v7           #ex:Ljava/lang/Exception;
    .end local v14           #threadIdValue:Ljava/lang/String;
    :pswitch_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "_id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #count:I
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 711
    goto/16 :goto_0

    .line 660
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method
