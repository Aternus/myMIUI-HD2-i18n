.class Lcom/android/mms/data/Contact$ContactsCache;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactsCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Contact$ContactsCache$TaskStack;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final SP_PROJECTION:[Ljava/lang/String;

.field static sStaticKeyBuffer:Ljava/nio/CharBuffer;


# instance fields
.field private final mContactsHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/data/Contact;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 376
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 378
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v3

    const-string v1, "data3"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "contact_id"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const-string v1, "contact_status"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nickname"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 399
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 404
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "data4"

    aput-object v1, v0, v3

    const-string v1, "contact_presence"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "nickname"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    .line 417
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "photo"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->SP_PROJECTION:[Ljava/lang/String;

    .line 829
    invoke-static {v7}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    new-instance v0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-direct {v0}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    .line 428
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    .line 432
    iput-object p1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    .line 433
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/mms/data/Contact$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 364
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->updateContact(Lcom/android/mms/data/Contact;)V

    return-void
.end method

.method private contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/data/Contact;)Z
    .locals 11
    .parameter "orig"
    .parameter "newContactData"

    .prologue
    const/4 v10, 0x1

    .line 556
    #getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/data/Contact;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 557
    .local v4, oldName:Ljava/lang/String;
    #getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/data/Contact;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 558
    .local v1, newName:Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v10

    .line 597
    :goto_0
    return v6

    .line 563
    :cond_0
    #getter for: Lcom/android/mms/data/Contact;->mNick:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/data/Contact;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 564
    .local v5, oldNick:Ljava/lang/String;
    #getter for: Lcom/android/mms/data/Contact;->mNick:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/data/Contact;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 565
    .local v2, newNick:Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v10

    .line 567
    goto :goto_0

    .line 570
    :cond_1
    #getter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/data/Contact;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 571
    .local v3, oldLabel:Ljava/lang/String;
    #getter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/data/Contact;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, newLabel:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v10

    .line 574
    goto :goto_0

    .line 577
    :cond_2
    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)J

    move-result-wide v6

    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    move v6, v10

    .line 579
    goto :goto_0

    .line 582
    :cond_3
    #getter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)I

    move-result v6

    #getter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)I

    move-result v7

    if-eq v6, v7, :cond_4

    move v6, v10

    .line 584
    goto :goto_0

    .line 587
    :cond_4
    #getter for: Lcom/android/mms/data/Contact;->mPhotoId:J
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)J

    move-result-wide v6

    #getter for: Lcom/android/mms/data/Contact;->mPhotoId:J
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    move v6, v10

    .line 589
    goto :goto_0

    .line 592
    :cond_5
    #getter for: Lcom/android/mms/data/Contact;->mIsSpNumber:Z
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Z

    move-result v6

    #getter for: Lcom/android/mms/data/Contact;->mIsSpNumber:Z
    invoke-static {p2}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Z

    move-result v7

    if-eq v6, v7, :cond_6

    move v6, v10

    .line 594
    goto :goto_0

    .line 597
    :cond_6
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 12
    .parameter "email"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v11, 0x0

    .line 761
    new-instance v8, Lcom/android/mms/data/Contact;

    invoke-direct {v8, p1, v6}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 763
    .local v8, entry:Lcom/android/mms/data/Contact;
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v4, "UPPER(data1)=UPPER(?) AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v11

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 770
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 772
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 773
    const/4 v9, 0x0

    .line 775
    .local v9, found:Z
    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 776
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getPresenceIconResourceId(I)I

    move-result v0

    #setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {v8, v0}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;I)I

    .line 778
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    #setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {v8, v0, v1}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;J)J

    .line 779
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mNick:Ljava/lang/String;
    invoke-static {v8, v0}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 781
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 782
    .local v10, name:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 783
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 785
    :cond_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 786
    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v8, v10}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 792
    const/4 v9, 0x1

    .line 794
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 796
    if-eqz v9, :cond_0

    .line 801
    .end local v9           #found:Z
    .end local v10           #name:Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 804
    :cond_4
    return-object v8

    .line 794
    .restart local v9       #found:Z
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 801
    .end local v9           #found:Z
    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 10
    .parameter "number"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 667
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 668
    new-instance v8, Lcom/android/mms/data/Contact;

    invoke-direct {v8, p1, v5}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 675
    .local v8, entry:Lcom/android/mms/data/Contact;
    const-string v0, "PHONE_NUMBERS_EQUAL(data1,?) AND mimetype=\'vnd.android.cursor.item/phone_v2\' AND raw_contact_id IN (SELECT raw_contact_id  FROM phone_lookup WHERE normalized_number GLOB(\'+*\'))"

    const-string v1, "+"

    invoke-virtual {v8}, Lcom/android/mms/data/Contact;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 678
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 685
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 686
    const-string v0, "Contact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryContactInfoByNumber("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") returned NULL cursor!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contact uri used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-direct {p0, p1, v8}, Lcom/android/mms/data/Contact$ContactsCache;->getSPInfoForPhoneNumber(Ljava/lang/String;Lcom/android/mms/data/Contact;)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 718
    :goto_0
    return-object v0

    .line 692
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 693
    invoke-direct {p0, p1, v8}, Lcom/android/mms/data/Contact$ContactsCache;->getSPInfoForPhoneNumber(Ljava/lang/String;Lcom/android/mms/data/Contact;)Lcom/android/mms/data/Contact;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 715
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 696
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 697
    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 698
    const/4 v0, 0x1

    :try_start_2
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {v8, v0}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 699
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v8, v0}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 700
    const/4 v0, 0x7

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mNick:Ljava/lang/String;
    invoke-static {v8, v0}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 701
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    #setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {v8, v0, v1}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;J)J

    .line 702
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    #setter for: Lcom/android/mms/data/Contact;->mPhotoId:J
    invoke-static {v8, v0, v1}, Lcom/android/mms/data/Contact;->access$1202(Lcom/android/mms/data/Contact;J)J

    .line 703
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getPresenceIconResourceId(I)I

    move-result v0

    #setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {v8, v0}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;I)I

    .line 705
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {v8, v0}, Lcom/android/mms/data/Contact;->access$1702(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 710
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 715
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_1
    move-object v0, v8

    .line 718
    goto :goto_0

    .line 710
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 712
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 713
    .local v7, e:Ljava/lang/Exception;
    :try_start_5
    invoke-direct {p0, p1, v8}, Lcom/android/mms/data/Contact$ContactsCache;->getSPInfoForPhoneNumber(Ljava/lang/String;Lcom/android/mms/data/Contact;)Lcom/android/mms/data/Contact;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v8

    .line 715
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getPresenceIconResourceId(I)I
    .locals 1
    .parameter "presence"

    .prologue
    .line 750
    if-eqz p1, :cond_0

    .line 751
    invoke-static {p1}, Landroid/provider/ContactsContract$Presence;->getPresenceIconResourceId(I)I

    move-result v0

    .line 754
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSPInfoForPhoneNumber(Ljava/lang/String;Lcom/android/mms/data/Contact;)Lcom/android/mms/data/Contact;
    .locals 10
    .parameter "number"
    .parameter "entry"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 722
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Landroid/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v9

    .line 723
    .local v9, pn:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    move-object v6, p1

    .line 724
    .local v6, address:Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    invoke-virtual {v9}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v6

    .line 727
    :cond_0
    invoke-virtual {p2, v6}, Lcom/android/mms/data/Contact;->setEffectiveNumber(Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://yellowpage/sp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->SP_PROJECTION:[Ljava/lang/String;

    const-string v3, "addr=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 731
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 733
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p2, v0}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 736
    const/4 v0, 0x1

    #setter for: Lcom/android/mms/data/Contact;->mIsSpNumber:Z
    invoke-static {p2, v0}, Lcom/android/mms/data/Contact;->access$1302(Lcom/android/mms/data/Contact;Z)Z

    .line 737
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 742
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 745
    :cond_2
    :goto_0
    return-object p2

    .line 737
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 739
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 740
    .local v8, e:Ljava/lang/Exception;
    :try_start_4
    const-string v0, "Contact"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 742
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private simplifyPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "phoneNumber"

    .prologue
    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 814
    .local v0, b:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int v2, v3, v4

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 815
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 816
    .local v1, ch:C
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 817
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 814
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 820
    .end local v1           #ch:C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_2

    move-object v3, p1

    .line 823
    :goto_1
    return-object v3

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private updateContact(Lcom/android/mms/data/Contact;)V
    .locals 6
    .parameter "c"

    .prologue
    .line 601
    if-nez p1, :cond_0

    .line 649
    :goto_0
    return-void

    .line 605
    :cond_0
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 606
    .local v0, entry:Lcom/android/mms/data/Contact;
    monitor-enter p1

    .line 607
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/mms/data/Contact$ContactsCache;->contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 608
    const-string v4, "Mms:app"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 609
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateContact: contact changed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/mms/data/Contact;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/mms/data/Contact;->access$000(Ljava/lang/String;)V

    .line 612
    :cond_1
    #getter for: Lcom/android/mms/data/Contact;->mNick:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$800(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mNick:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$802(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 613
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1402(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 614
    #getter for: Lcom/android/mms/data/Contact;->mEffectiveNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1500(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mEffectiveNumber:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1502(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 615
    #getter for: Lcom/android/mms/data/Contact;->mCompareKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mCompareKey:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 616
    #getter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$900(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$902(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 617
    #getter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1000(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    #setter for: Lcom/android/mms/data/Contact;->mPersonId:J
    invoke-static {p1, v4, v5}, Lcom/android/mms/data/Contact;->access$1002(Lcom/android/mms/data/Contact;J)J

    .line 618
    #getter for: Lcom/android/mms/data/Contact;->mPhotoId:J
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1200(Lcom/android/mms/data/Contact;)J

    move-result-wide v4

    #setter for: Lcom/android/mms/data/Contact;->mPhotoId:J
    invoke-static {p1, v4, v5}, Lcom/android/mms/data/Contact;->access$1202(Lcom/android/mms/data/Contact;J)J

    .line 619
    #getter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1100(Lcom/android/mms/data/Contact;)I

    move-result v4

    #setter for: Lcom/android/mms/data/Contact;->mPresenceResId:I
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1102(Lcom/android/mms/data/Contact;I)I

    .line 620
    #getter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1700(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1702(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 621
    #getter for: Lcom/android/mms/data/Contact;->mIsSpNumber:Z
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1300(Lcom/android/mms/data/Contact;)Z

    move-result v4

    #setter for: Lcom/android/mms/data/Contact;->mIsSpNumber:Z
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$1302(Lcom/android/mms/data/Contact;Z)Z

    .line 624
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 625
    iget-object v4, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    const v5, 0x7f090102

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 630
    :goto_1
    #calls: Lcom/android/mms/data/Contact;->notSynchronizedUpdateNameAndNumber()V
    invoke-static {p1}, Lcom/android/mms/data/Contact;->access$1800(Lcom/android/mms/data/Contact;)V

    .line 636
    invoke-static {}, Lcom/android/mms/data/Contact;->access$1900()Ljava/util/HashSet;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    :try_start_1
    invoke-static {}, Lcom/android/mms/data/Contact;->access$1900()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 638
    .local v2, iterator:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/data/Contact$UpdateListener;>;"
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 639
    :try_start_2
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/data/Contact$UpdateListener;

    .line 641
    .local v3, l:Lcom/android/mms/data/Contact$UpdateListener;
    invoke-interface {v3, p1}, Lcom/android/mms/data/Contact$UpdateListener;->onUpdate(Lcom/android/mms/data/Contact;)V

    goto :goto_2

    .line 648
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #iterator:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/mms/data/Contact$UpdateListener;>;"
    .end local v3           #l:Lcom/android/mms/data/Contact$UpdateListener;
    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 627
    :cond_2
    :try_start_3
    #getter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$600(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$602(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 638
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v5

    .line 644
    :cond_3
    monitor-enter p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 645
    const/4 v4, 0x0

    :try_start_6
    #setter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {p1, v4}, Lcom/android/mms/data/Contact;->access$302(Lcom/android/mms/data/Contact;Z)Z

    .line 646
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 647
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 648
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 647
    :catchall_2
    move-exception v4

    :try_start_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 7
    .parameter "numberOrEmail"

    .prologue
    .line 832
    monitor-enter p0

    .line 835
    :try_start_0
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    move v3, v6

    .line 836
    .local v3, isNotRegularPhoneNumber:Z
    :goto_0
    if-eqz v3, :cond_1

    move-object v4, p1

    .line 839
    .local v4, key:Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 840
    .local v1, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    if-eqz v1, :cond_4

    .line 841
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 842
    .local v5, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v5, :cond_5

    .line 843
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 844
    .local v0, c:Lcom/android/mms/data/Contact;
    if-eqz v3, :cond_2

    .line 845
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 846
    monitor-exit p0

    .line 861
    .end local v2           #i:I
    .end local v5           #length:I
    :goto_3
    return-object v0

    .line 835
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v1           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v3           #isNotRegularPhoneNumber:Z
    .end local v4           #key:Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    move v3, v6

    goto :goto_0

    .line 836
    .restart local v3       #isNotRegularPhoneNumber:Z
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->simplifyPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    goto :goto_1

    .line 849
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v1       #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .restart local v2       #i:I
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #length:I
    :cond_2
    #getter for: Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->access$1400(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 850
    monitor-exit p0

    goto :goto_3

    .line 862
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v1           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v2           #i:I
    .end local v3           #isNotRegularPhoneNumber:Z
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #length:I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 842
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v1       #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .restart local v2       #i:I
    .restart local v3       #isNotRegularPhoneNumber:Z
    .restart local v4       #key:Ljava/lang/String;
    .restart local v5       #length:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 855
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v2           #i:I
    .end local v5           #length:I
    :cond_4
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    .restart local v1       #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    iget-object v6, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    :cond_5
    new-instance v0, Lcom/android/mms/data/Contact;

    const/4 v6, 0x0

    invoke-direct {v0, p1, v6}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact$1;)V

    .line 860
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
    .locals 6
    .parameter "number"
    .parameter "canBlock"

    .prologue
    .line 493
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 494
    const-string p1, ""

    .line 502
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 503
    .local v1, contact:Lcom/android/mms/data/Contact;
    const/4 v2, 0x0

    .line 505
    .local v2, r:Ljava/lang/Runnable;
    monitor-enter v1

    .line 508
    :goto_0
    if-eqz p2, :cond_1

    :try_start_0
    #getter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$300(Lcom/android/mms/data/Contact;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 510
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v4

    goto :goto_0

    .line 518
    :cond_1
    :try_start_2
    #getter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-eqz v4, :cond_3

    #getter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$300(Lcom/android/mms/data/Contact;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 519
    const/4 v4, 0x0

    #setter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Z)Z

    .line 521
    const-string v4, "Mms:app"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 522
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "async update for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " canBlock: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isStale: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v1}, Lcom/android/mms/data/Contact;->access$400(Lcom/android/mms/data/Contact;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/mms/data/Contact;->log(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/mms/data/Contact;->access$000(Ljava/lang/String;)V

    .line 526
    :cond_2
    move-object v0, v1

    .line 527
    .local v0, c:Lcom/android/mms/data/Contact;
    new-instance v3, Lcom/android/mms/data/Contact$ContactsCache$1;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/data/Contact$ContactsCache$1;-><init>(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 537
    .end local v2           #r:Ljava/lang/Runnable;
    .local v3, r:Ljava/lang/Runnable;
    const/4 v4, 0x1

    :try_start_3
    #setter for: Lcom/android/mms/data/Contact;->mQueryPending:Z
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$302(Lcom/android/mms/data/Contact;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v3

    .line 539
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v3           #r:Ljava/lang/Runnable;
    .restart local v2       #r:Ljava/lang/Runnable;
    :cond_3
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 542
    if-eqz v2, :cond_4

    .line 543
    if-eqz p2, :cond_5

    .line 544
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 549
    :cond_4
    :goto_1
    return-object v1

    .line 539
    :catchall_0
    move-exception v4

    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 546
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->pushTask(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 539
    .end local v2           #r:Ljava/lang/Runnable;
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    .restart local v3       #r:Ljava/lang/Runnable;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #r:Ljava/lang/Runnable;
    .restart local v2       #r:Ljava/lang/Runnable;
    goto :goto_2
.end method

.method public getContactInfo(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 1
    .parameter "numberOrEmail"

    .prologue
    .line 655
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 658
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    goto :goto_0
.end method

.method invalidate()V
    .locals 5

    .prologue
    .line 868
    monitor-enter p0

    .line 869
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 870
    .local v0, alc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 871
    .local v1, c:Lcom/android/mms/data/Contact;
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 872
    const/4 v4, 0x1

    :try_start_1
    #setter for: Lcom/android/mms/data/Contact;->mIsStale:Z
    invoke-static {v1, v4}, Lcom/android/mms/data/Contact;->access$402(Lcom/android/mms/data/Contact;Z)Z

    .line 873
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    .line 876
    .end local v0           #alc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/data/Contact;>;"
    .end local v1           #c:Lcom/android/mms/data/Contact;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 877
    return-void
.end method

.method public pushTask(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->push(Ljava/lang/Runnable;)V

    .line 488
    return-void
.end method
