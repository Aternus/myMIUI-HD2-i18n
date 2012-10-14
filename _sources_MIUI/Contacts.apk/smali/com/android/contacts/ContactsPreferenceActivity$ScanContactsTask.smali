.class Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "ContactsPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactsPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScanContactsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/contacts/ContactsPreferenceActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private duplicateRowContactIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mOperationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private md5HasSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/contacts/ContactsPreferenceActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ContactsPreferenceActivity;Lcom/android/contacts/ContactsPreferenceActivity;)V
    .locals 2
    .parameter
    .parameter "target"

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    .line 394
    invoke-direct {p0, p2}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->mContext:Landroid/content/Context;

    .line 352
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->md5HasSet:Ljava/util/HashMap;

    .line 355
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->duplicateRowContactIds:Ljava/util/HashSet;

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->mOperationList:Ljava/util/ArrayList;

    .line 395
    iput-object p2, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->mContext:Landroid/content/Context;

    .line 396
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/contacts/ContactsPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {p1, v0}, Lcom/android/contacts/ContactsPreferenceActivity;->access$102(Lcom/android/contacts/ContactsPreferenceActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 397
    #getter for: Lcom/android/contacts/ContactsPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {p1}, Lcom/android/contacts/ContactsPreferenceActivity;->access$100(Lcom/android/contacts/ContactsPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask$1;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask$1;-><init>(Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;Lcom/android/contacts/ContactsPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 403
    #getter for: Lcom/android/contacts/ContactsPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {p1}, Lcom/android/contacts/ContactsPreferenceActivity;->access$100(Lcom/android/contacts/ContactsPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const v1, 0x7f0b01ab

    invoke-virtual {p1, v1}, Lcom/android/contacts/ContactsPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 404
    return-void
.end method

.method private applayBatch(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v4, "Problem delete duplicate contacts"

    const-string v3, "ContactsPreferenceActivity"

    .line 360
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 373
    :goto_0
    return-void

    .line 365
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 372
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 366
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 367
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "ContactsPreferenceActivity"

    const-string v1, "Problem delete duplicate contacts"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 368
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 369
    .local v0, e:Landroid/content/OperationApplicationException;
    const-string v1, "ContactsPreferenceActivity"

    const-string v1, "Problem delete duplicate contacts"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private calculateMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "name"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "numbers"

    .prologue
    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .local v1, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Landroid/security/Md5MessageDigest;->getInstance(Ljava/lang/String;)Landroid/security/MessageDigest;

    move-result-object v2

    .line 585
    .local v2, digest:Landroid/security/MessageDigest;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/security/MessageDigest;->update([B)V

    .line 586
    new-instance v0, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 587
    .local v0, bigInt:Ljava/math/BigInteger;
    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 588
    .local v4, md5:Ljava/lang/String;
    const-string v5, "%32s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    const/16 v7, 0x30

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v5, v4

    .line 595
    .end local v0           #bigInt:Ljava/math/BigInteger;
    .end local v2           #digest:Landroid/security/MessageDigest;
    .end local v4           #md5:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 591
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 592
    .local v3, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 595
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private getNumbers(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 11
    .parameter "cr"
    .parameter "rowContactId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 546
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 547
    .local v6, baseUri:Landroid/net/Uri;
    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 548
    .local v1, dataUri:Landroid/net/Uri;
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v5

    const-string v3, "mimetype=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v0, "vnd.android.cursor.item/phone_v2"

    aput-object v0, v4, v5

    const-string v5, "data1 DESC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 554
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 555
    .local v7, builder:Ljava/lang/StringBuilder;
    if-eqz v8, :cond_2

    .line 557
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 559
    .local v9, number:Ljava/lang/String;
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Landroid/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v10

    .line 560
    .local v10, phoneNumber:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    if-eqz v10, :cond_0

    .line 561
    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-virtual {v10, v0, v2}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 567
    .end local v9           #number:Ljava/lang/String;
    .end local v10           #phoneNumber:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 563
    .restart local v9       #number:Ljava/lang/String;
    .restart local v10       #phoneNumber:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_0
    :try_start_1
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 567
    .end local v9           #number:Ljava/lang/String;
    .end local v10           #phoneNumber:Landroid/telephony/PhoneNumberUtils$PhoneNumber;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 571
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 347
    check-cast p1, Lcom/android/contacts/ContactsPreferenceActivity;

    .end local p1
    check-cast p2, [Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->doInBackground(Lcom/android/contacts/ContactsPreferenceActivity;[Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Lcom/android/contacts/ContactsPreferenceActivity;[Ljava/lang/Void;)Ljava/lang/Void;
    .locals 35
    .parameter "target"
    .parameter "params"

    .prologue
    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->md5HasSet:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->duplicateRowContactIds:Ljava/util/HashSet;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/contacts/ContactsPreferenceActivity$RawContactsQuery;->COLUMNS:[Ljava/lang/String;

    const-string v8, "deleted=0"

    const/4 v9, 0x0

    const-string v10, "sort_key"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 416
    .local v19, cursor:Landroid/database/Cursor;
    if-eqz v19, :cond_4

    .line 418
    .end local p2
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 419
    const/4 v5, 0x0

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 420
    .local v30, rowContactId:J
    const/4 v5, 0x1

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 421
    .local v24, name:Ljava/lang/String;
    const/4 v5, 0x2

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 422
    .local v11, accountName:Ljava/lang/String;
    const/4 v5, 0x3

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 423
    .local v12, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->getNumbers(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v25

    .line 426
    .local v25, numbers:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->calculateMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 428
    .local v23, md5:Ljava/lang/String;
    if-eqz v23, :cond_0

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->md5HasSet:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    move-object v5, v0

    new-instance v6, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask$2;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask$2;-><init>(Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/contacts/ContactsPreferenceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->duplicateRowContactIds:Ljava/util/HashSet;

    move-object v5, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->md5HasSet:Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 447
    .local v28, rawContactId2:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/contacts/ContactsPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contact_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/android/contacts/model/EntitySet;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntitySet;

    move-result-object v5

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntitySet;->getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v20

    .line 451
    .local v20, entityDeltaLocal:Lcom/android/contacts/model/EntityDelta;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/contacts/ContactsPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contact_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/android/contacts/model/EntitySet;->fromQuery(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntitySet;

    move-result-object v5

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntitySet;->getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/model/EntityDelta;

    move-result-object v21

    .line 456
    .local v21, entityDeltaRemote:Lcom/android/contacts/model/EntityDelta;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->mOperationList:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 457
    if-eqz v20, :cond_1

    if-eqz v21, :cond_1

    .line 458
    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/model/EntityDelta;->MergeEntityDelta(Lcom/android/contacts/model/EntityDelta;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->mOperationList:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->buildDiff(Ljava/util/ArrayList;)V

    .line 461
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->mOperationList:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->applayBatch(Ljava/util/ArrayList;)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/contacts/ContactsPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Lcom/android/contacts/ContactsUtils;->queryForContactId(Landroid/content/ContentResolver;J)J

    move-result-wide v15

    .line 466
    .local v15, contactId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/contacts/ContactsPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/android/contacts/ContactsUtils;->queryForContactId(Landroid/content/ContentResolver;J)J

    move-result-wide v17

    .line 469
    .local v17, contactId2:J
    new-instance v34, Landroid/content/ContentValues;

    invoke-direct/range {v34 .. v34}, Landroid/content/ContentValues;-><init>()V

    .line 470
    .local v34, value:Landroid/content/ContentValues;
    const-string v5, "contactid"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v34

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/contacts/ContactsPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "contactid=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v34

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 481
    .end local v11           #accountName:Ljava/lang/String;
    .end local v12           #accountType:Ljava/lang/String;
    .end local v15           #contactId:J
    .end local v17           #contactId2:J
    .end local v20           #entityDeltaLocal:Lcom/android/contacts/model/EntityDelta;
    .end local v21           #entityDeltaRemote:Lcom/android/contacts/model/EntityDelta;
    .end local v23           #md5:Ljava/lang/String;
    .end local v24           #name:Ljava/lang/String;
    .end local v25           #numbers:Ljava/lang/String;
    .end local v28           #rawContactId2:J
    .end local v30           #rowContactId:J
    .end local v34           #value:Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v5

    .line 477
    .restart local v11       #accountName:Ljava/lang/String;
    .restart local v12       #accountType:Ljava/lang/String;
    .restart local v23       #md5:Ljava/lang/String;
    .restart local v24       #name:Ljava/lang/String;
    .restart local v25       #numbers:Ljava/lang/String;
    .restart local v30       #rowContactId:J
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->md5HasSet:Ljava/util/HashMap;

    move-object v5, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, v23

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 481
    .end local v11           #accountName:Ljava/lang/String;
    .end local v12           #accountType:Ljava/lang/String;
    .end local v23           #md5:Ljava/lang/String;
    .end local v24           #name:Ljava/lang/String;
    .end local v25           #numbers:Ljava/lang/String;
    .end local v30           #rowContactId:J
    :cond_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 486
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->duplicateRowContactIds:Ljava/util/HashSet;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    .line 487
    .local v26, rawContactId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/contacts/ContactsPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 492
    .end local v26           #rawContactId:J
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactsPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/contacts/ContactsPreferenceActivity$RawContactsQuery;->COLUMNS:[Ljava/lang/String;

    const-string v8, "deleted=0"

    const/4 v9, 0x0

    const-string v10, "sort_key"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 496
    .local v14, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->md5HasSet:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 497
    if-eqz v14, :cond_9

    .line 499
    :cond_6
    :goto_2
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 500
    const/4 v5, 0x0

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 501
    .restart local v30       #rowContactId:J
    const/4 v5, 0x1

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 502
    .restart local v24       #name:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactsPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->getNumbers(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v25

    .line 504
    .restart local v25       #numbers:Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->calculateMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 506
    .restart local v23       #md5:Ljava/lang/String;
    if-eqz v23, :cond_6

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->md5HasSet:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    move-object v5, v0

    new-instance v6, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask$3;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask$3;-><init>(Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/contacts/ContactsPreferenceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->md5HasSet:Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    .line 523
    .local v32, rowContactId2:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->mOperationList:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 524
    sget-object v5, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    .line 526
    .local v13, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v5, "type"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 528
    const-string v5, "raw_contact_id1"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 529
    const-string v5, "raw_contact_id2"

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->mOperationList:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->mOperationList:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->applayBatch(Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_2

    .line 538
    .end local v13           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v23           #md5:Ljava/lang/String;
    .end local v24           #name:Ljava/lang/String;
    .end local v25           #numbers:Ljava/lang/String;
    .end local v30           #rowContactId:J
    .end local v32           #rowContactId2:J
    :catchall_1
    move-exception v5

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v5

    .line 534
    .restart local v23       #md5:Ljava/lang/String;
    .restart local v24       #name:Ljava/lang/String;
    .restart local v25       #numbers:Ljava/lang/String;
    .restart local v30       #rowContactId:J
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->md5HasSet:Ljava/util/HashMap;

    move-object v5, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, v23

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_2

    .line 538
    .end local v23           #md5:Ljava/lang/String;
    .end local v24           #name:Ljava/lang/String;
    .end local v25           #numbers:Ljava/lang/String;
    .end local v30           #rowContactId:J
    :cond_8
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 542
    :cond_9
    const/4 v5, 0x0

    return-object v5
.end method

.method protected onPostExecute(Lcom/android/contacts/ContactsPreferenceActivity;Ljava/lang/Void;)V
    .locals 1
    .parameter "target"
    .parameter "result"

    .prologue
    .line 386
    invoke-super {p0, p1, p2}, Lcom/android/contacts/util/WeakAsyncTask;->onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 387
    iget-object v0, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    #getter for: Lcom/android/contacts/ContactsPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/ContactsPreferenceActivity;->access$100(Lcom/android/contacts/ContactsPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    #getter for: Lcom/android/contacts/ContactsPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/ContactsPreferenceActivity;->access$100(Lcom/android/contacts/ContactsPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    #calls: Lcom/android/contacts/ContactsPreferenceActivity;->notifyFinishMergeContact()V
    invoke-static {v0}, Lcom/android/contacts/ContactsPreferenceActivity;->access$300(Lcom/android/contacts/ContactsPreferenceActivity;)V

    .line 391
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 347
    check-cast p1, Lcom/android/contacts/ContactsPreferenceActivity;

    .end local p1
    check-cast p2, Ljava/lang/Void;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->onPostExecute(Lcom/android/contacts/ContactsPreferenceActivity;Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute(Lcom/android/contacts/ContactsPreferenceActivity;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 377
    invoke-super {p0, p1}, Lcom/android/contacts/util/WeakAsyncTask;->onPreExecute(Ljava/lang/Object;)V

    .line 378
    iget-object v0, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    #getter for: Lcom/android/contacts/ContactsPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/ContactsPreferenceActivity;->access$100(Lcom/android/contacts/ContactsPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    #getter for: Lcom/android/contacts/ContactsPreferenceActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/contacts/ContactsPreferenceActivity;->access$100(Lcom/android/contacts/ContactsPreferenceActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->this$0:Lcom/android/contacts/ContactsPreferenceActivity;

    const-string v1, ""

    #calls: Lcom/android/contacts/ContactsPreferenceActivity;->notifyMergeContact(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/contacts/ContactsPreferenceActivity;->access$200(Lcom/android/contacts/ContactsPreferenceActivity;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 347
    check-cast p1, Lcom/android/contacts/ContactsPreferenceActivity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/ContactsPreferenceActivity$ScanContactsTask;->onPreExecute(Lcom/android/contacts/ContactsPreferenceActivity;)V

    return-void
.end method
