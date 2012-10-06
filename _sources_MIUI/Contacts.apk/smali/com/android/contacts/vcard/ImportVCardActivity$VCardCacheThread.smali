.class Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;
.super Ljava/lang/Thread;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardCacheThread"
.end annotation


# instance fields
.field private mCanceled:Z

.field private final mDisplayName:Ljava/lang/String;

.field private final mSource:[B

.field private final mSourceUris:[Landroid/net/Uri;

.field private mVCardParser:Lcom/android/contacts/model/vcard/VCardParser;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;[Landroid/net/Uri;)V
    .locals 4
    .parameter "context"
    .parameter "sourceUris"

    .prologue
    const/4 v3, 0x0

    .line 224
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 225
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    .line 226
    iput-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B

    .line 228
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 230
    .local v0, powerManager:Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "VCardImport"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 233
    iput-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mDisplayName:Ljava/lang/String;

    .line 234
    return-void
.end method

.method private constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/vcard/ImportRequest;
    .locals 22
    .parameter "data"
    .parameter "localDataUri"
    .parameter "displayName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/contacts/model/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/contacts/vcard/ImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 438
    .local v20, resolver:Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .line 439
    .local v11, counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    const/4 v13, 0x0

    .line 440
    .local v13, detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    const/4 v9, 0x1

    .line 442
    .local v9, vcardVersion:I
    const/16 v21, 0x0

    .line 444
    .local v21, shouldUseV30:Z
    if-eqz p1, :cond_2

    .line 445
    :try_start_0
    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v18, is:Ljava/io/InputStream;
    move-object/from16 v19, v18

    .line 449
    .end local v18           #is:Ljava/io/InputStream;
    .local v19, is:Ljava/io/InputStream;
    :goto_0
    new-instance v2, Lcom/android/contacts/model/vcard/VCardParser_V21;

    invoke-direct {v2}, Lcom/android/contacts/model/vcard/VCardParser_V21;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/contacts/model/vcard/VCardParser;
    :try_end_0
    .catch Lcom/android/contacts/model/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 451
    :try_start_1
    new-instance v12, Lcom/android/contacts/model/vcard/VCardEntryCounter;

    invoke-direct {v12}, Lcom/android/contacts/model/vcard/VCardEntryCounter;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/contacts/model/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 452
    .end local v11           #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .local v12, counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    :try_start_2
    new-instance v14, Lcom/android/contacts/model/vcard/VCardSourceDetector;

    invoke-direct {v14}, Lcom/android/contacts/model/vcard/VCardSourceDetector;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lcom/android/contacts/model/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_a

    .line 453
    .end local v13           #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .local v14, detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/contacts/model/vcard/VCardParser;

    move-object v2, v0

    invoke-virtual {v2, v12}, Lcom/android/contacts/model/vcard/VCardParser;->addInterpreter(Lcom/android/contacts/model/vcard/VCardInterpreter;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/contacts/model/vcard/VCardParser;

    move-object v2, v0

    invoke-virtual {v2, v14}, Lcom/android/contacts/model/vcard/VCardParser;->addInterpreter(Lcom/android/contacts/model/vcard/VCardInterpreter;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/contacts/model/vcard/VCardParser;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Lcom/android/contacts/model/vcard/exception/VCardVersionException; {:try_start_3 .. :try_end_3} :catch_b

    .line 479
    if-eqz v19, :cond_0

    .line 481
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lcom/android/contacts/model/vcard/exception/VCardNestedException; {:try_start_4 .. :try_end_4} :catch_7

    :cond_0
    :goto_1
    move-object/from16 v18, v19

    .end local v19           #is:Ljava/io/InputStream;
    .restart local v18       #is:Ljava/io/InputStream;
    move-object v13, v14

    .end local v14           #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    move-object v11, v12

    .line 487
    .end local v12           #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    :cond_1
    :goto_2
    if-eqz v21, :cond_5

    const/4 v2, 0x2

    move v9, v2

    .line 494
    .end local v18           #is:Ljava/io/InputStream;
    :goto_3
    new-instance v2, Lcom/android/contacts/vcard/ImportRequest;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/contacts/ContactsUtils;->getDefaultAccount(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/contacts/model/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v7

    invoke-virtual {v13}, Lcom/android/contacts/model/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Lcom/android/contacts/model/vcard/VCardEntryCounter;->getCount()I

    move-result v10

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/contacts/vcard/ImportRequest;-><init>([Landroid/accounts/Account;[BLandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V

    return-object v2

    .line 447
    :cond_2
    :try_start_5
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_5
    .catch Lcom/android/contacts/model/vcard/exception/VCardNestedException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v18

    .restart local v18       #is:Ljava/io/InputStream;
    move-object/from16 v19, v18

    .end local v18           #is:Ljava/io/InputStream;
    .restart local v19       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 456
    :catch_0
    move-exception v2

    move-object/from16 v16, v2

    move-object v14, v13

    .end local v13           #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .restart local v14       #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    move-object v12, v11

    .line 458
    .end local v11           #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .restart local v12       #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .local v16, e1:Lcom/android/contacts/model/vcard/exception/VCardVersionException;
    :goto_4
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 462
    :goto_5
    const/16 v21, 0x1

    .line 463
    if-eqz p1, :cond_3

    .line 464
    :try_start_7
    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 468
    .end local v19           #is:Ljava/io/InputStream;
    .restart local v18       #is:Ljava/io/InputStream;
    :goto_6
    :try_start_8
    new-instance v2, Lcom/android/contacts/model/vcard/VCardParser_V30;

    invoke-direct {v2}, Lcom/android/contacts/model/vcard/VCardParser_V30;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/contacts/model/vcard/VCardParser;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 470
    :try_start_9
    new-instance v11, Lcom/android/contacts/model/vcard/VCardEntryCounter;

    invoke-direct {v11}, Lcom/android/contacts/model/vcard/VCardEntryCounter;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4
    .catch Lcom/android/contacts/model/vcard/exception/VCardVersionException; {:try_start_9 .. :try_end_9} :catch_2

    .line 471
    .end local v12           #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    :try_start_a
    new-instance v13, Lcom/android/contacts/model/vcard/VCardSourceDetector;

    invoke-direct {v13}, Lcom/android/contacts/model/vcard/VCardSourceDetector;-><init>()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5
    .catch Lcom/android/contacts/model/vcard/exception/VCardVersionException; {:try_start_a .. :try_end_a} :catch_8

    .line 472
    .end local v14           #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/contacts/model/vcard/VCardParser;

    move-object v2, v0

    invoke-virtual {v2, v11}, Lcom/android/contacts/model/vcard/VCardParser;->addInterpreter(Lcom/android/contacts/model/vcard/VCardInterpreter;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/contacts/model/vcard/VCardParser;

    move-object v2, v0

    invoke-virtual {v2, v13}, Lcom/android/contacts/model/vcard/VCardParser;->addInterpreter(Lcom/android/contacts/model/vcard/VCardInterpreter;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/contacts/model/vcard/VCardParser;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lcom/android/contacts/model/vcard/exception/VCardVersionException; {:try_start_b .. :try_end_b} :catch_9

    .line 479
    if-eqz v18, :cond_1

    .line 481
    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lcom/android/contacts/model/vcard/exception/VCardNestedException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_2

    .line 482
    :catch_1
    move-exception v2

    goto :goto_2

    .line 466
    .end local v11           #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .end local v13           #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .end local v18           #is:Ljava/io/InputStream;
    .restart local v12       #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .restart local v14       #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .restart local v19       #is:Ljava/io/InputStream;
    :cond_3
    :try_start_d
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-result-object v18

    .end local v19           #is:Ljava/io/InputStream;
    .restart local v18       #is:Ljava/io/InputStream;
    goto :goto_6

    .line 475
    :catch_2
    move-exception v2

    move-object/from16 v17, v2

    move-object v13, v14

    .end local v14           #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    move-object v11, v12

    .line 476
    .end local v12           #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .local v17, e2:Lcom/android/contacts/model/vcard/exception/VCardVersionException;
    :goto_7
    :try_start_e
    new-instance v2, Lcom/android/contacts/model/vcard/exception/VCardException;

    const-string v3, "vCard with unspported version."

    invoke-direct {v2, v3}, Lcom/android/contacts/model/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 479
    .end local v17           #e2:Lcom/android/contacts/model/vcard/exception/VCardVersionException;
    :catchall_0
    move-exception v2

    .end local v16           #e1:Lcom/android/contacts/model/vcard/exception/VCardVersionException;
    :goto_8
    if-eqz v18, :cond_4

    .line 481
    :try_start_f
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Lcom/android/contacts/model/vcard/exception/VCardNestedException; {:try_start_f .. :try_end_f} :catch_3

    .line 479
    :cond_4
    :goto_9
    :try_start_10
    throw v2
    :try_end_10
    .catch Lcom/android/contacts/model/vcard/exception/VCardNestedException; {:try_start_10 .. :try_end_10} :catch_3

    .line 488
    .end local v18           #is:Ljava/io/InputStream;
    :catch_3
    move-exception v2

    move-object v15, v2

    .line 489
    .local v15, e:Lcom/android/contacts/model/vcard/exception/VCardNestedException;
    :goto_a
    const-string v2, "VCardImport"

    const-string v3, "Nested Exception is found (it may be false-positive)."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 487
    .end local v15           #e:Lcom/android/contacts/model/vcard/exception/VCardNestedException;
    .restart local v18       #is:Ljava/io/InputStream;
    :cond_5
    const/4 v2, 0x1

    move v9, v2

    goto/16 :goto_3

    .line 459
    .end local v11           #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .end local v13           #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .end local v18           #is:Ljava/io/InputStream;
    .restart local v12       #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .restart local v14       #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .restart local v16       #e1:Lcom/android/contacts/model/vcard/exception/VCardVersionException;
    .restart local v19       #is:Ljava/io/InputStream;
    :catch_4
    move-exception v2

    goto :goto_5

    .line 482
    .end local v12           #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .end local v14           #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .end local v16           #e1:Lcom/android/contacts/model/vcard/exception/VCardVersionException;
    .end local v19           #is:Ljava/io/InputStream;
    .restart local v11       #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .restart local v13       #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .restart local v18       #is:Ljava/io/InputStream;
    :catch_5
    move-exception v3

    goto :goto_9

    .end local v11           #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .end local v13           #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .end local v18           #is:Ljava/io/InputStream;
    .restart local v12       #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .restart local v14       #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .restart local v19       #is:Ljava/io/InputStream;
    :catch_6
    move-exception v2

    goto/16 :goto_1

    .line 488
    :catch_7
    move-exception v2

    move-object v15, v2

    move-object v13, v14

    .end local v14           #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12           #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    goto :goto_a

    .line 479
    :catchall_1
    move-exception v2

    move-object/from16 v18, v19

    .end local v19           #is:Ljava/io/InputStream;
    .restart local v18       #is:Ljava/io/InputStream;
    goto :goto_8

    .end local v11           #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .end local v18           #is:Ljava/io/InputStream;
    .restart local v12       #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .restart local v19       #is:Ljava/io/InputStream;
    :catchall_2
    move-exception v2

    move-object/from16 v18, v19

    .end local v19           #is:Ljava/io/InputStream;
    .restart local v18       #is:Ljava/io/InputStream;
    move-object v11, v12

    .end local v12           #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    goto :goto_8

    .end local v11           #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .end local v13           #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .end local v18           #is:Ljava/io/InputStream;
    .restart local v12       #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .restart local v14       #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .restart local v19       #is:Ljava/io/InputStream;
    :catchall_3
    move-exception v2

    move-object/from16 v18, v19

    .end local v19           #is:Ljava/io/InputStream;
    .restart local v18       #is:Ljava/io/InputStream;
    move-object v13, v14

    .end local v14           #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12           #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    goto :goto_8

    .end local v11           #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .end local v13           #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .restart local v12       #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .restart local v14       #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .restart local v16       #e1:Lcom/android/contacts/model/vcard/exception/VCardVersionException;
    :catchall_4
    move-exception v2

    move-object v13, v14

    .end local v14           #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12           #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .restart local v11       #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    goto :goto_8

    .end local v13           #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .restart local v14       #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    :catchall_5
    move-exception v2

    move-object v13, v14

    .end local v14           #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    goto :goto_8

    .line 475
    .end local v13           #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .restart local v14       #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    :catch_8
    move-exception v2

    move-object/from16 v17, v2

    move-object v13, v14

    .end local v14           #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .restart local v13       #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    goto :goto_7

    :catch_9
    move-exception v2

    move-object/from16 v17, v2

    goto :goto_7

    .line 456
    .end local v11           #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .end local v16           #e1:Lcom/android/contacts/model/vcard/exception/VCardVersionException;
    .end local v18           #is:Ljava/io/InputStream;
    .restart local v12       #counter:Lcom/android/contacts/model/vcard/VCardEntryCounter;
    .restart local v19       #is:Ljava/io/InputStream;
    :catch_a
    move-exception v2

    move-object/from16 v16, v2

    move-object v14, v13

    .end local v13           #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    .restart local v14       #detector:Lcom/android/contacts/model/vcard/VCardSourceDetector;
    goto/16 :goto_4

    :catch_b
    move-exception v2

    move-object/from16 v16, v2

    goto/16 :goto_4
.end method

.method private copyTo(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 13
    .parameter "sourceUri"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const-string v12, "Failed to close outputChannel"

    const-string v11, "Failed to close inputChannel."

    const-string v10, "VCardImport"

    .line 380
    const-string v7, "VCardImport"

    const-string v7, "Copy a Uri to app local storage (%s -> %s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    .line 383
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 384
    .local v6, resolver:Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 385
    .local v4, inputChannel:Ljava/nio/channels/ReadableByteChannel;
    const/4 v5, 0x0

    .line 386
    .local v5, outputChannel:Ljava/nio/channels/WritableByteChannel;
    const/4 v2, 0x0

    .line 388
    .local v2, destUri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v4

    .line 389
    invoke-virtual {v1, p2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 390
    const/4 v7, 0x0

    invoke-virtual {v1, p2, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 391
    const/16 v7, 0x2000

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 392
    .local v0, buffer:Ljava/nio/ByteBuffer;
    :goto_0
    invoke-interface {v4, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    .line 393
    iget-boolean v7, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    if-eqz v7, :cond_2

    .line 394
    const-string v7, "VCardImport"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Canceled during caching "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    const/4 v7, 0x0

    .line 406
    if-eqz v4, :cond_0

    .line 408
    :try_start_1
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 413
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 415
    :try_start_2
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 421
    :cond_1
    :goto_2
    return-object v7

    .line 397
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 398
    invoke-interface {v5, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 399
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 406
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_3

    .line 408
    :try_start_4
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 413
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 415
    :try_start_5
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 406
    :cond_4
    :goto_4
    throw v7

    .line 401
    .restart local v0       #buffer:Ljava/nio/ByteBuffer;
    :cond_5
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 402
    :goto_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 403
    invoke-interface {v5, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 406
    :cond_6
    if-eqz v4, :cond_7

    .line 408
    :try_start_7
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 413
    :cond_7
    :goto_6
    if-eqz v5, :cond_8

    .line 415
    :try_start_8
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_8
    :goto_7
    move-object v7, v2

    .line 421
    goto :goto_2

    .line 409
    .end local v0           #buffer:Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v3

    .line 410
    .local v3, e:Ljava/io/IOException;
    const-string v8, "VCardImport"

    const-string v8, "Failed to close inputChannel."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 416
    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 417
    .restart local v3       #e:Ljava/io/IOException;
    const-string v8, "VCardImport"

    const-string v8, "Failed to close outputChannel"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 409
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #buffer:Ljava/nio/ByteBuffer;
    :catch_2
    move-exception v3

    .line 410
    .restart local v3       #e:Ljava/io/IOException;
    const-string v8, "VCardImport"

    const-string v8, "Failed to close inputChannel."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 416
    .end local v3           #e:Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 417
    .restart local v3       #e:Ljava/io/IOException;
    const-string v8, "VCardImport"

    const-string v8, "Failed to close outputChannel"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 409
    .end local v3           #e:Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 410
    .restart local v3       #e:Ljava/io/IOException;
    const-string v7, "VCardImport"

    const-string v7, "Failed to close inputChannel."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 416
    .end local v3           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 417
    .restart local v3       #e:Ljava/io/IOException;
    const-string v7, "VCardImport"

    const-string v7, "Failed to close outputChannel"

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    .line 507
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/contacts/model/vcard/VCardParser;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/contacts/model/vcard/VCardParser;

    invoke-virtual {v0}, Lcom/android/contacts/model/vcard/VCardParser;->cancel()V

    .line 510
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const-string v0, "VCardImport"

    const-string v1, "WakeLock is being held."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 242
    :cond_0
    return-void
.end method

.method public getSourceUris()[Landroid/net/Uri;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 514
    const-string v0, "VCardImport"

    const-string v1, "Cancel request has come. Abort caching vCard."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->cancel()V

    .line 516
    return-void
.end method

.method public run()V
    .locals 24

    .prologue
    .line 246
    const-string v6, "VCardImport"

    const-string v7, "vCard cache thread starts running."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v6}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v6

    if-nez v6, :cond_0

    .line 248
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "vCard cache thread must be launched after a service connection is established"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 252
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 254
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 255
    const-string v6, "VCardImport"

    const-string v7, "vCard cache operation is canceled."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 367
    const-string v6, "VCardImport"

    const-string v7, "Finished caching vCard."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v7, v0

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    const/4 v7, 0x0

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    :goto_0
    invoke-virtual {v6}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    .line 374
    return-void

    .line 259
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v12, v0

    .line 268
    .local v12, context:Landroid/content/Context;
    const/4 v11, 0x0

    .line 269
    .local v11, cache_index:I
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v23, requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B

    move-object v6, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v6, :cond_3

    .line 272
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mDisplayName:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/vcard/ImportRequest;

    move-result-object v6

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/contacts/model/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 352
    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v6}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;->sendImportRequest(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 367
    :goto_2
    const-string v6, "VCardImport"

    const-string v7, "Finished caching vCard."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v7, v0

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    const/4 v7, 0x0

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v6

    move-object v15, v6

    .line 274
    .local v15, e:Lcom/android/contacts/model/vcard/exception/VCardException;
    :try_start_4
    const-string v6, "VCardImport"

    const-string v7, "Maybe the file is in wrong format"

    invoke-static {v6, v7, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    const v7, 0x7f0b01da

    invoke-virtual {v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->showFailureNotification(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 367
    const-string v6, "VCardImport"

    const-string v7, "Finished caching vCard."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v7, v0

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    const/4 v7, 0x0

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    goto/16 :goto_0

    .line 279
    .end local v15           #e:Lcom/android/contacts/model/vcard/exception/VCardException;
    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/contacts/vcard/ImportVCardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 281
    .local v4, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    move-object v10, v0

    .local v10, arr$:[Landroid/net/Uri;
    move-object v0, v10

    array-length v0, v0

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    aget-object v5, v10, v18

    .line 282
    .local v5, sourceUri:Landroid/net/Uri;
    const/16 v17, 0x0

    .line 285
    .local v17, filename:Ljava/lang/String;
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "import_tmp_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".vcf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 286
    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 287
    .local v16, file:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 296
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->copyTo(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 297
    .local v21, localDataUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    move v6, v0

    if-eqz v6, :cond_6

    .line 298
    const-string v6, "VCardImport"

    const-string v7, "vCard cache operation is canceled."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 357
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #sourceUri:Landroid/net/Uri;
    .end local v10           #arr$:[Landroid/net/Uri;
    .end local v11           #cache_index:I
    .end local v12           #context:Landroid/content/Context;
    .end local v16           #file:Ljava/io/File;
    .end local v17           #filename:Ljava/lang/String;
    .end local v18           #i$:I
    .end local v20           #len$:I
    .end local v21           #localDataUri:Landroid/net/Uri;
    .end local v23           #requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    :catch_1
    move-exception v6

    move-object v15, v6

    .line 358
    .local v15, e:Ljava/lang/OutOfMemoryError;
    :try_start_6
    const-string v6, "VCardImport"

    const-string v7, "OutOfMemoryError occured during caching vCard"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    new-instance v7, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v9, v0

    const v10, 0x7f0b01db

    invoke-virtual {v9, v10}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 367
    const-string v6, "VCardImport"

    const-string v7, "Finished caching vCard."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v7, v0

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    const/4 v7, 0x0

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    goto/16 :goto_0

    .line 290
    .end local v15           #e:Ljava/lang/OutOfMemoryError;
    .restart local v4       #resolver:Landroid/content/ContentResolver;
    .restart local v5       #sourceUri:Landroid/net/Uri;
    .restart local v10       #arr$:[Landroid/net/Uri;
    .restart local v11       #cache_index:I
    .restart local v12       #context:Landroid/content/Context;
    .restart local v16       #file:Ljava/io/File;
    .restart local v17       #filename:Ljava/lang/String;
    .restart local v18       #i$:I
    .restart local v20       #len$:I
    .restart local v23       #requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    :cond_4
    const v6, 0x7fffffff

    if-ne v11, v6, :cond_5

    .line 291
    :try_start_7
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Exceeded cache limit"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 362
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #sourceUri:Landroid/net/Uri;
    .end local v10           #arr$:[Landroid/net/Uri;
    .end local v11           #cache_index:I
    .end local v12           #context:Landroid/content/Context;
    .end local v16           #file:Ljava/io/File;
    .end local v17           #filename:Ljava/lang/String;
    .end local v18           #i$:I
    .end local v20           #len$:I
    .end local v23           #requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    :catch_2
    move-exception v6

    move-object v15, v6

    .line 363
    .local v15, e:Ljava/io/IOException;
    :try_start_8
    const-string v6, "VCardImport"

    const-string v7, "IOException during caching vCard"

    invoke-static {v6, v7, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    new-instance v7, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v9, v0

    const v10, 0x7f0b0084

    invoke-virtual {v9, v10}, Lcom/android/contacts/vcard/ImportVCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 367
    const-string v6, "VCardImport"

    const-string v7, "Finished caching vCard."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v7, v0

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    const/4 v7, 0x0

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    goto/16 :goto_0

    .line 293
    .end local v15           #e:Ljava/io/IOException;
    .restart local v4       #resolver:Landroid/content/ContentResolver;
    .restart local v5       #sourceUri:Landroid/net/Uri;
    .restart local v10       #arr$:[Landroid/net/Uri;
    .restart local v11       #cache_index:I
    .restart local v12       #context:Landroid/content/Context;
    .restart local v16       #file:Ljava/io/File;
    .restart local v17       #filename:Ljava/lang/String;
    .restart local v18       #i$:I
    .restart local v20       #len$:I
    .restart local v23       #requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 295
    goto/16 :goto_4

    .line 301
    .restart local v21       #localDataUri:Landroid/net/Uri;
    :cond_6
    if-nez v21, :cond_7

    .line 302
    :try_start_9
    const-string v6, "VCardImport"

    const-string v7, "destUri is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    .line 367
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #sourceUri:Landroid/net/Uri;
    .end local v10           #arr$:[Landroid/net/Uri;
    .end local v11           #cache_index:I
    .end local v12           #context:Landroid/content/Context;
    .end local v16           #file:Ljava/io/File;
    .end local v17           #filename:Ljava/lang/String;
    .end local v18           #i$:I
    .end local v20           #len$:I
    .end local v21           #localDataUri:Landroid/net/Uri;
    .end local v23           #requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    :catchall_0
    move-exception v6

    const-string v7, "VCardImport"

    const-string v8, "Finished caching vCard."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v8, v0

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v8}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v7, v0

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v7, v0

    const/4 v8, 0x0

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v7, v8}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->finish()V

    .line 367
    throw v6

    .line 306
    .restart local v4       #resolver:Landroid/content/ContentResolver;
    .restart local v5       #sourceUri:Landroid/net/Uri;
    .restart local v10       #arr$:[Landroid/net/Uri;
    .restart local v11       #cache_index:I
    .restart local v12       #context:Landroid/content/Context;
    .restart local v16       #file:Ljava/io/File;
    .restart local v17       #filename:Ljava/lang/String;
    .restart local v18       #i$:I
    .restart local v20       #len$:I
    .restart local v21       #localDataUri:Landroid/net/Uri;
    .restart local v23       #requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    :cond_7
    const/4 v14, 0x0

    .line 307
    .local v14, displayName:Ljava/lang/String;
    const/4 v13, 0x0

    .line 311
    .local v13, cursor:Landroid/database/Cursor;
    const/4 v6, 0x1

    :try_start_a
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_display_name"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 314
    if-eqz v13, :cond_9

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_9

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 315
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_8

    .line 316
    const-string v6, "VCardImport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected multiple rows: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_8
    const-string v6, "_display_name"

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 320
    .local v19, index:I
    if-ltz v19, :cond_9

    .line 321
    move-object v0, v13

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v14

    .line 325
    .end local v19           #index:I
    :cond_9
    if-eqz v13, :cond_a

    .line 326
    :try_start_b
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_a
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 330
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    move-result-object v14

    .line 335
    :cond_b
    const/4 v6, 0x0

    :try_start_c
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v21

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/vcard/ImportRequest;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Lcom/android/contacts/model/vcard/exception/VCardException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_1

    move-result-object v22

    .line 345
    .local v22, request:Lcom/android/contacts/vcard/ImportRequest;
    :try_start_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    move v6, v0

    if-eqz v6, :cond_d

    .line 346
    const-string v6, "VCardImport"

    const-string v7, "vCard cache operation is canceled."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    .line 367
    const-string v6, "VCardImport"

    const-string v7, "Finished caching vCard."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v7, v0

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    const/4 v7, 0x0

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    goto/16 :goto_0

    .line 325
    .end local v22           #request:Lcom/android/contacts/vcard/ImportRequest;
    :catchall_1
    move-exception v6

    if-eqz v13, :cond_c

    .line 326
    :try_start_e
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 325
    :cond_c
    throw v6

    .line 336
    :catch_3
    move-exception v15

    .line 337
    .local v15, e:Lcom/android/contacts/model/vcard/exception/VCardException;
    const-string v6, "VCardImport"

    const-string v7, "Maybe the file is in wrong format"

    invoke-static {v6, v7, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    const v7, 0x7f0b01da

    invoke-virtual {v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->showFailureNotification(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    .line 367
    const-string v6, "VCardImport"

    const-string v7, "Finished caching vCard."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v7, v0

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    const/4 v7, 0x0

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    goto/16 :goto_0

    .line 340
    .end local v15           #e:Lcom/android/contacts/model/vcard/exception/VCardException;
    :catch_4
    move-exception v15

    .line 341
    .local v15, e:Ljava/io/IOException;
    :try_start_f
    const-string v6, "VCardImport"

    const-string v7, "Unexpected IOException"

    invoke-static {v6, v7, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    const v7, 0x7f0b0084

    invoke-virtual {v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->showFailureNotification(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    .line 367
    const-string v6, "VCardImport"

    const-string v7, "Finished caching vCard."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v7, v0

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    #getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    const/4 v7, 0x0

    #setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object v6, v0

    goto/16 :goto_0

    .line 349
    .end local v15           #e:Ljava/io/IOException;
    .restart local v22       #request:Lcom/android/contacts/vcard/ImportRequest;
    :cond_d
    :try_start_10
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 355
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #sourceUri:Landroid/net/Uri;
    .end local v10           #arr$:[Landroid/net/Uri;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v14           #displayName:Ljava/lang/String;
    .end local v16           #file:Ljava/io/File;
    .end local v17           #filename:Ljava/lang/String;
    .end local v18           #i$:I
    .end local v20           #len$:I
    .end local v21           #localDataUri:Landroid/net/Uri;
    .end local v22           #request:Lcom/android/contacts/vcard/ImportRequest;
    :cond_e
    const-string v6, "VCardImport"

    const-string v7, "Empty import requests. Ignore it."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2

    goto/16 :goto_2
.end method
