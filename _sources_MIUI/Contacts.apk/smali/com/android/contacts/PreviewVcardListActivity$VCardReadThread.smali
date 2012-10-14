.class Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;
.super Ljava/lang/Thread;
.source "PreviewVcardListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/PreviewVcardListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardReadThread"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mErrorFileNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mUri:Landroid/net/Uri;

.field private mVCardParser:Landroid/pim/vcard/VCardParser;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/contacts/PreviewVcardListActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/PreviewVcardListActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter "uri"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 266
    iput-object p2, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mUri:Landroid/net/Uri;

    .line 267
    invoke-direct {p0}, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->init()V

    .line 268
    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method private doActuallyReadOneVCard(Landroid/net/Uri;ZLandroid/pim/vcard/VCardSourceDetector;Ljava/util/List;)Landroid/net/Uri;
    .locals 12
    .parameter "uri"
    .parameter "showEntryParseProgress"
    .parameter "detector"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Z",
            "Landroid/pim/vcard/VCardSourceDetector;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 402
    .local p4, errorFileNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    .line 403
    .local v7, context:Landroid/content/Context;
    invoke-virtual {p3}, Landroid/pim/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v2

    .line 404
    .local v2, vcardType:I
    if-nez v2, :cond_0

    .line 405
    const/high16 v0, 0x7f0b

    invoke-virtual {v7, v0}, Lcom/android/contacts/PreviewVcardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/pim/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v2

    .line 408
    :cond_0
    invoke-virtual {p3}, Landroid/pim/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v11

    .line 409
    .local v11, estimatedCharset:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    .line 411
    .local v9, currentLanguage:Ljava/lang/String;
    new-instance v3, Landroid/pim/vcard/VCardEntryConstructor;

    const/4 v0, 0x0

    invoke-direct {v3, v2, v0, v11}, Landroid/pim/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    .line 412
    .local v3, builder:Landroid/pim/vcard/VCardEntryConstructor;
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mAccounts:[Landroid/accounts/Account;
    invoke-static {v0}, Lcom/android/contacts/PreviewVcardListActivity;->access$1200(Lcom/android/contacts/PreviewVcardListActivity;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/pim/vcard/VCardEntryConstructor;->setDefaultAccounts([Landroid/accounts/Account;)V

    .line 414
    new-instance v6, Landroid/pim/vcard/VCardEntryCommitter;

    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v6, v0}, Landroid/pim/vcard/VCardEntryCommitter;-><init>(Landroid/content/ContentResolver;)V

    .line 415
    .local v6, committer:Landroid/pim/vcard/VCardEntryCommitter;
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->isImport:Z
    invoke-static {v0}, Lcom/android/contacts/PreviewVcardListActivity;->access$500(Lcom/android/contacts/PreviewVcardListActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    invoke-virtual {v3, v6}, Landroid/pim/vcard/VCardEntryConstructor;->addEntryHandler(Landroid/pim/vcard/VCardEntryHandler;)V

    .line 421
    :goto_0
    if-eqz p2, :cond_1

    .line 422
    new-instance v0, Lcom/android/contacts/ProgressShower;

    iget-object v1, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/contacts/PreviewVcardListActivity;->access$300(Lcom/android/contacts/PreviewVcardListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    const v4, 0x7f0b008d

    invoke-virtual {v7, v4}, Lcom/android/contacts/PreviewVcardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    iget-object v7, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    .end local v7           #context:Landroid/content/Context;
    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/contacts/PreviewVcardListActivity;->access$1400(Lcom/android/contacts/PreviewVcardListActivity;)Landroid/os/Handler;

    move-result-object v7

    invoke-direct {v0, v1, v4, v5, v7}, Lcom/android/contacts/ProgressShower;-><init>(Landroid/app/ProgressDialog;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v3, v0}, Landroid/pim/vcard/VCardEntryConstructor;->addEntryHandler(Landroid/pim/vcard/VCardEntryHandler;)V

    .line 428
    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->readOneVCardFile(Landroid/net/Uri;ILandroid/pim/vcard/VCardInterpreter;ZLjava/util/List;)Z
    :try_end_0
    .catch Landroid/pim/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    .line 429
    const/4 v0, 0x0

    .line 436
    .end local p0
    :goto_1
    return-object v0

    .line 418
    .restart local v7       #context:Landroid/content/Context;
    .restart local p0
    :cond_2
    new-instance v0, Lcom/android/contacts/PreviewVcardListActivity$ReadVcardHandler;

    iget-object v1, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/PreviewVcardListActivity$ReadVcardHandler;-><init>(Lcom/android/contacts/PreviewVcardListActivity;Lcom/android/contacts/PreviewVcardListActivity$1;)V

    invoke-virtual {v3, v0}, Landroid/pim/vcard/VCardEntryConstructor;->addEntryHandler(Landroid/pim/vcard/VCardEntryHandler;)V

    goto :goto_0

    .line 431
    .end local v7           #context:Landroid/content/Context;
    :catch_0
    move-exception v10

    .line 432
    .local v10, e:Landroid/pim/vcard/exception/VCardNestedException;
    const-string v0, "PreviewVcardListActivity"

    const-string v1, "Never reach here."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .end local v10           #e:Landroid/pim/vcard/exception/VCardNestedException;
    :cond_3
    invoke-virtual {v6}, Landroid/pim/vcard/VCardEntryCommitter;->getCreatedUris()Ljava/util/ArrayList;

    move-result-object v8

    .line 436
    .local v8, createdUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/Uri;

    move-object v0, p0

    goto :goto_1
.end method

.method private init()V
    .locals 4

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    .line 272
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Lcom/android/contacts/PreviewVcardListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mResolver:Landroid/content/ContentResolver;

    .line 273
    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 275
    .local v1, powerManager:Landroid/os/PowerManager;
    const v2, 0x20000006

    const-string v3, "PreviewVcardListActivity"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 277
    return-void
.end method

.method private readOneVCardFile(Landroid/net/Uri;ILandroid/pim/vcard/VCardInterpreter;ZLjava/util/List;)Z
    .locals 15
    .parameter "uri"
    .parameter "vcardType"
    .parameter "interpreter"
    .parameter "throwNestedException"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Landroid/pim/vcard/VCardInterpreter;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardNestedException;
        }
    .end annotation

    .prologue
    .line 447
    .local p5, errorFileNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v9, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mResolver:Landroid/content/ContentResolver;

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 448
    .local v8, is:Ljava/io/InputStream;
    new-instance v9, Landroid/pim/vcard/VCardParser_V21;

    move-object v0, v9

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardParser_V21;-><init>(I)V

    iput-object v9, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mVCardParser:Landroid/pim/vcard/VCardParser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/pim/vcard/exception/VCardNotSupportedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/pim/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_5

    .line 451
    :try_start_1
    iget-object v9, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mVCardParser:Landroid/pim/vcard/VCardParser;

    move-object v0, v9

    move-object v1, v8

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Landroid/pim/vcard/VCardParser;->parse(Ljava/io/InputStream;Landroid/pim/vcard/VCardInterpreter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/pim/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 478
    if-eqz v8, :cond_0

    .line 480
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/pim/vcard/exception/VCardNotSupportedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/pim/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_5

    .line 519
    :cond_0
    :goto_0
    const/4 v9, 0x1

    .end local v8           #is:Ljava/io/InputStream;
    :goto_1
    return v9

    .line 452
    .restart local v8       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 454
    .local v4, e1:Landroid/pim/vcard/exception/VCardVersionException;
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 457
    :goto_2
    :try_start_4
    move-object/from16 v0, p3

    instance-of v0, v0, Landroid/pim/vcard/VCardEntryConstructor;

    move v9, v0

    if-eqz v9, :cond_2

    .line 459
    move-object/from16 v0, p3

    check-cast v0, Landroid/pim/vcard/VCardEntryConstructor;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/pim/vcard/VCardEntryConstructor;->clear()V

    .line 469
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mResolver:Landroid/content/ContentResolver;

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    .line 472
    :try_start_5
    new-instance v9, Landroid/pim/vcard/VCardParser_V30;

    move-object v0, v9

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardParser_V30;-><init>(I)V

    iput-object v9, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mVCardParser:Landroid/pim/vcard/VCardParser;

    .line 473
    iget-object v9, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mVCardParser:Landroid/pim/vcard/VCardParser;

    move-object v0, v9

    move-object v1, v8

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Landroid/pim/vcard/VCardParser;->parse(Ljava/io/InputStream;Landroid/pim/vcard/VCardInterpreter;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/pim/vcard/exception/VCardVersionException; {:try_start_5 .. :try_end_5} :catch_3

    .line 478
    if-eqz v8, :cond_0

    .line 480
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/pim/vcard/exception/VCardNotSupportedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/pim/vcard/exception/VCardException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_0

    .line 481
    .end local v4           #e1:Landroid/pim/vcard/exception/VCardVersionException;
    :catch_1
    move-exception v9

    goto :goto_0

    .line 460
    .restart local v4       #e1:Landroid/pim/vcard/exception/VCardVersionException;
    :cond_2
    :try_start_7
    move-object/from16 v0, p3

    instance-of v0, v0, Landroid/pim/vcard/VCardInterpreterCollection;

    move v9, v0

    if-eqz v9, :cond_1

    .line 461
    move-object/from16 v0, p3

    check-cast v0, Landroid/pim/vcard/VCardInterpreterCollection;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/pim/vcard/VCardInterpreterCollection;->getCollection()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/pim/vcard/VCardInterpreter;

    .line 463
    .local v6, elem:Landroid/pim/vcard/VCardInterpreter;
    instance-of v9, v6, Landroid/pim/vcard/VCardEntryConstructor;

    if-eqz v9, :cond_3

    .line 464
    check-cast v6, Landroid/pim/vcard/VCardEntryConstructor;

    .end local v6           #elem:Landroid/pim/vcard/VCardInterpreter;
    invoke-virtual {v6}, Landroid/pim/vcard/VCardEntryConstructor;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 478
    .end local v4           #e1:Landroid/pim/vcard/exception/VCardVersionException;
    .end local v7           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    if-eqz v8, :cond_4

    .line 480
    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Landroid/pim/vcard/exception/VCardNotSupportedException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Landroid/pim/vcard/exception/VCardException; {:try_start_8 .. :try_end_8} :catch_5

    .line 478
    :cond_4
    :goto_4
    :try_start_9
    throw v9
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Landroid/pim/vcard/exception/VCardNotSupportedException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Landroid/pim/vcard/exception/VCardException; {:try_start_9 .. :try_end_9} :catch_5

    .line 485
    .end local v8           #is:Ljava/io/InputStream;
    :catch_2
    move-exception v9

    move-object v3, v9

    .line 486
    .local v3, e:Ljava/io/IOException;
    const-string v9, "PreviewVcardListActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException was emitted: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v9, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;
    invoke-static {v9}, Lcom/android/contacts/PreviewVcardListActivity;->access$300(Lcom/android/contacts/PreviewVcardListActivity;)Landroid/app/ProgressDialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V

    .line 490
    if-eqz p5, :cond_5

    .line 491
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p5

    move-object v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    :goto_5
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 474
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #e1:Landroid/pim/vcard/exception/VCardVersionException;
    .restart local v8       #is:Ljava/io/InputStream;
    :catch_3
    move-exception v9

    move-object v5, v9

    .line 475
    .local v5, e2:Landroid/pim/vcard/exception/VCardVersionException;
    :try_start_a
    new-instance v9, Landroid/pim/vcard/exception/VCardException;

    const-string v10, "vCard with unspported version."

    invoke-direct {v9, v10}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 493
    .end local v4           #e1:Landroid/pim/vcard/exception/VCardVersionException;
    .end local v5           #e2:Landroid/pim/vcard/exception/VCardVersionException;
    .end local v8           #is:Ljava/io/InputStream;
    .restart local v3       #e:Ljava/io/IOException;
    :cond_5
    iget-object v9, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    new-instance v10, Lcom/android/contacts/PreviewVcardListActivity$DialogDisplayer;

    iget-object v11, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    const v14, 0x7f0b0084

    invoke-virtual {v13, v14}, Lcom/android/contacts/PreviewVcardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/contacts/PreviewVcardListActivity$DialogDisplayer;-><init>(Lcom/android/contacts/PreviewVcardListActivity;Ljava/lang/String;)V

    #calls: Lcom/android/contacts/PreviewVcardListActivity;->runOnUIThread(Ljava/lang/Runnable;)V
    invoke-static {v9, v10}, Lcom/android/contacts/PreviewVcardListActivity;->access$1000(Lcom/android/contacts/PreviewVcardListActivity;Ljava/lang/Runnable;)V

    goto :goto_5

    .line 497
    .end local v3           #e:Ljava/io/IOException;
    :catch_4
    move-exception v9

    move-object v3, v9

    .line 498
    .local v3, e:Landroid/pim/vcard/exception/VCardNotSupportedException;
    instance-of v9, v3, Landroid/pim/vcard/exception/VCardNestedException;

    if-eqz v9, :cond_6

    if-eqz p4, :cond_6

    .line 499
    check-cast v3, Landroid/pim/vcard/exception/VCardNestedException;

    .end local v3           #e:Landroid/pim/vcard/exception/VCardNotSupportedException;
    throw v3

    .line 501
    .restart local v3       #e:Landroid/pim/vcard/exception/VCardNotSupportedException;
    :cond_6
    if-eqz p5, :cond_7

    .line 502
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p5

    move-object v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    :goto_6
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 504
    :cond_7
    iget-object v9, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    new-instance v10, Lcom/android/contacts/PreviewVcardListActivity$DialogDisplayer;

    iget-object v11, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    const v14, 0x7f0b0086

    invoke-virtual {v13, v14}, Lcom/android/contacts/PreviewVcardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Landroid/pim/vcard/exception/VCardNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/contacts/PreviewVcardListActivity$DialogDisplayer;-><init>(Lcom/android/contacts/PreviewVcardListActivity;Ljava/lang/String;)V

    #calls: Lcom/android/contacts/PreviewVcardListActivity;->runOnUIThread(Ljava/lang/Runnable;)V
    invoke-static {v9, v10}, Lcom/android/contacts/PreviewVcardListActivity;->access$1000(Lcom/android/contacts/PreviewVcardListActivity;Ljava/lang/Runnable;)V

    goto :goto_6

    .line 509
    .end local v3           #e:Landroid/pim/vcard/exception/VCardNotSupportedException;
    :catch_5
    move-exception v9

    move-object v3, v9

    .line 510
    .local v3, e:Landroid/pim/vcard/exception/VCardException;
    if-eqz p5, :cond_8

    .line 511
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p5

    move-object v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    :goto_7
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 513
    :cond_8
    iget-object v9, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    new-instance v10, Lcom/android/contacts/PreviewVcardListActivity$DialogDisplayer;

    iget-object v11, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    const v14, 0x7f0b0085

    invoke-virtual {v13, v14}, Lcom/android/contacts/PreviewVcardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Landroid/pim/vcard/exception/VCardException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/contacts/PreviewVcardListActivity$DialogDisplayer;-><init>(Lcom/android/contacts/PreviewVcardListActivity;Ljava/lang/String;)V

    #calls: Lcom/android/contacts/PreviewVcardListActivity;->runOnUIThread(Ljava/lang/Runnable;)V
    invoke-static {v9, v10}, Lcom/android/contacts/PreviewVcardListActivity;->access$1000(Lcom/android/contacts/PreviewVcardListActivity;Ljava/lang/Runnable;)V

    goto :goto_7

    .line 455
    .end local v3           #e:Landroid/pim/vcard/exception/VCardException;
    .restart local v4       #e1:Landroid/pim/vcard/exception/VCardVersionException;
    .restart local v8       #is:Ljava/io/InputStream;
    :catch_6
    move-exception v9

    goto/16 :goto_2

    .line 481
    .end local v4           #e1:Landroid/pim/vcard/exception/VCardVersionException;
    :catch_7
    move-exception v10

    goto/16 :goto_4
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mCanceled:Z

    .line 524
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mVCardParser:Landroid/pim/vcard/VCardParser;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mVCardParser:Landroid/pim/vcard/VCardParser;

    invoke-interface {v0}, Landroid/pim/vcard/VCardParser;->cancel()V

    .line 527
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 284
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->cancel()V

    .line 532
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    invoke-virtual {v0}, Lcom/android/contacts/PreviewVcardListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    invoke-virtual {v0}, Lcom/android/contacts/PreviewVcardListActivity;->finish()V

    .line 535
    :cond_0
    return-void
.end method

.method public run()V
    .locals 26

    .prologue
    .line 288
    const/16 v25, 0x1

    .line 289
    .local v25, shouldCallFinish:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 294
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mUri:Landroid/net/Uri;

    move-object v5, v0

    if-eqz v5, :cond_6

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mUri:Landroid/net/Uri;

    move-object v6, v0

    .line 296
    .local v6, targetUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v5, v0

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/contacts/PreviewVcardListActivity;->access$300(Lcom/android/contacts/PreviewVcardListActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v5, v0

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/contacts/PreviewVcardListActivity;->access$300(Lcom/android/contacts/PreviewVcardListActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v5, v0

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/contacts/PreviewVcardListActivity;->access$300(Lcom/android/contacts/PreviewVcardListActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 301
    new-instance v12, Landroid/pim/vcard/VCardEntryCounter;

    invoke-direct {v12}, Landroid/pim/vcard/VCardEntryCounter;-><init>()V

    .line 302
    .local v12, counter:Landroid/pim/vcard/VCardEntryCounter;
    new-instance v17, Landroid/pim/vcard/VCardSourceDetector;

    invoke-direct/range {v17 .. v17}, Landroid/pim/vcard/VCardSourceDetector;-><init>()V

    .line 303
    .local v17, detector:Landroid/pim/vcard/VCardSourceDetector;
    new-instance v8, Landroid/pim/vcard/VCardInterpreterCollection;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/pim/vcard/VCardInterpreter;

    const/4 v7, 0x0

    aput-object v12, v5, v7

    const/4 v7, 0x1

    aput-object v17, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v8, v5}, Landroid/pim/vcard/VCardInterpreterCollection;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    .local v8, builderCollection:Landroid/pim/vcard/VCardInterpreterCollection;
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v5, p0

    :try_start_1
    invoke-direct/range {v5 .. v10}, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->readOneVCardFile(Landroid/net/Uri;ILandroid/pim/vcard/VCardInterpreter;ZLjava/util/List;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/pim/vcard/exception/VCardNestedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v24

    .line 330
    .end local v8           #builderCollection:Landroid/pim/vcard/VCardInterpreterCollection;
    .local v24, result:Z
    :goto_0
    if-nez v24, :cond_4

    .line 331
    const/16 v25, 0x0

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v5, v0

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/contacts/PreviewVcardListActivity;->access$300(Lcom/android/contacts/PreviewVcardListActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 370
    if-eqz v25, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/contacts/PreviewVcardListActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_1

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 372
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v5, v0

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->isImport:Z
    invoke-static {v5}, Lcom/android/contacts/PreviewVcardListActivity;->access$500(Lcom/android/contacts/PreviewVcardListActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/contacts/PreviewVcardListActivity;->finish()V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v5, v0

    new-instance v6, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$2;

    .end local v6           #targetUri:Landroid/net/Uri;
    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$2;-><init>(Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;)V

    .end local v12           #counter:Landroid/pim/vcard/VCardEntryCounter;
    .end local v17           #detector:Landroid/pim/vcard/VCardSourceDetector;
    .end local v24           #result:Z
    :goto_1
    #calls: Lcom/android/contacts/PreviewVcardListActivity;->runOnUIThread(Ljava/lang/Runnable;)V
    invoke-static {v5, v6}, Lcom/android/contacts/PreviewVcardListActivity;->access$1000(Lcom/android/contacts/PreviewVcardListActivity;Ljava/lang/Runnable;)V

    .line 398
    :cond_1
    :goto_2
    return-void

    .line 315
    .restart local v6       #targetUri:Landroid/net/Uri;
    .restart local v8       #builderCollection:Landroid/pim/vcard/VCardInterpreterCollection;
    .restart local v12       #counter:Landroid/pim/vcard/VCardEntryCounter;
    .restart local v17       #detector:Landroid/pim/vcard/VCardSourceDetector;
    :catch_0
    move-exception v18

    .line 317
    .local v18, e:Landroid/pim/vcard/exception/VCardNestedException;
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Landroid/pim/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v11

    .line 318
    .local v11, estimatedVCardType:I
    invoke-virtual/range {v17 .. v17}, Landroid/pim/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v20

    .line 322
    .local v20, estimatedCharset:Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object v10, v6

    invoke-direct/range {v9 .. v14}, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->readOneVCardFile(Landroid/net/Uri;ILandroid/pim/vcard/VCardInterpreter;ZLjava/util/List;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/pim/vcard/exception/VCardNestedException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v24

    .restart local v24       #result:Z
    goto :goto_0

    .line 324
    .end local v11           #estimatedVCardType:I
    .end local v20           #estimatedCharset:Ljava/lang/String;
    .end local v24           #result:Z
    :catch_1
    move-exception v5

    move-object/from16 v19, v5

    .line 325
    .local v19, e2:Landroid/pim/vcard/exception/VCardNestedException;
    const/16 v24, 0x0

    .line 326
    .restart local v24       #result:Z
    :try_start_3
    const-string v5, "PreviewVcardListActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Must not reach here. "

    .end local v8           #builderCollection:Landroid/pim/vcard/VCardInterpreterCollection;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 366
    .end local v6           #targetUri:Landroid/net/Uri;
    .end local v12           #counter:Landroid/pim/vcard/VCardEntryCounter;
    .end local v17           #detector:Landroid/pim/vcard/VCardSourceDetector;
    .end local v18           #e:Landroid/pim/vcard/exception/VCardNestedException;
    .end local v19           #e2:Landroid/pim/vcard/exception/VCardNestedException;
    .end local v24           #result:Z
    :catchall_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v6, v0

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/android/contacts/PreviewVcardListActivity;->access$300(Lcom/android/contacts/PreviewVcardListActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 370
    if-eqz v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/contacts/PreviewVcardListActivity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_3

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    move-object v6, v0

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 372
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v6, v0

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->isImport:Z
    invoke-static {v6}, Lcom/android/contacts/PreviewVcardListActivity;->access$500(Lcom/android/contacts/PreviewVcardListActivity;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/contacts/PreviewVcardListActivity;->finish()V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v6, v0

    new-instance v7, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$2;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$2;-><init>(Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;)V

    #calls: Lcom/android/contacts/PreviewVcardListActivity;->runOnUIThread(Ljava/lang/Runnable;)V
    invoke-static {v6, v7}, Lcom/android/contacts/PreviewVcardListActivity;->access$1000(Lcom/android/contacts/PreviewVcardListActivity;Ljava/lang/Runnable;)V

    .line 366
    :cond_3
    :goto_3
    throw v5

    .line 335
    .restart local v6       #targetUri:Landroid/net/Uri;
    .restart local v12       #counter:Landroid/pim/vcard/VCardEntryCounter;
    .restart local v17       #detector:Landroid/pim/vcard/VCardSourceDetector;
    .restart local v24       #result:Z
    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v5, v0

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/contacts/PreviewVcardListActivity;->access$300(Lcom/android/contacts/PreviewVcardListActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v7, v0

    const v8, 0x7f0b008f

    invoke-virtual {v7, v8}, Lcom/android/contacts/PreviewVcardListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v5, v0

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/contacts/PreviewVcardListActivity;->access$300(Lcom/android/contacts/PreviewVcardListActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v5, v0

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/contacts/PreviewVcardListActivity;->access$300(Lcom/android/contacts/PreviewVcardListActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v12}, Landroid/pim/vcard/VCardEntryCounter;->getCount()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 339
    invoke-virtual/range {v17 .. v17}, Landroid/pim/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v16

    .line 341
    .local v16, charset:Ljava/lang/String;
    invoke-virtual {v12}, Landroid/pim/vcard/VCardEntryCounter;->getCount()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_5

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v5, v0

    const/4 v7, 0x1

    #setter for: Lcom/android/contacts/PreviewVcardListActivity;->mNeedReview:Z
    invoke-static {v5, v7}, Lcom/android/contacts/PreviewVcardListActivity;->access$402(Lcom/android/contacts/PreviewVcardListActivity;Z)Z

    .line 345
    :cond_5
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v5

    move-object/from16 v3, v17

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->doActuallyReadOneVCard(Landroid/net/Uri;ZLandroid/pim/vcard/VCardSourceDetector;Ljava/util/List;)Landroid/net/Uri;

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v5, v0

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->isImport:Z
    invoke-static {v5}, Lcom/android/contacts/PreviewVcardListActivity;->access$500(Lcom/android/contacts/PreviewVcardListActivity;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v5, v0

    new-instance v6, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$1;

    .end local v6           #targetUri:Landroid/net/Uri;
    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$1;-><init>(Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;Landroid/pim/vcard/VCardEntryCounter;)V

    #calls: Lcom/android/contacts/PreviewVcardListActivity;->runOnUIThread(Ljava/lang/Runnable;)V
    invoke-static {v5, v6}, Lcom/android/contacts/PreviewVcardListActivity;->access$1000(Lcom/android/contacts/PreviewVcardListActivity;Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 366
    .end local v12           #counter:Landroid/pim/vcard/VCardEntryCounter;
    .end local v16           #charset:Ljava/lang/String;
    .end local v17           #detector:Landroid/pim/vcard/VCardSourceDetector;
    .end local v24           #result:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v5, v0

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->mProgressDialogForReadVCard:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/contacts/PreviewVcardListActivity;->access$300(Lcom/android/contacts/PreviewVcardListActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 370
    if-eqz v25, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/contacts/PreviewVcardListActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_1

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    move-object v5, v0

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 372
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v5, v0

    #getter for: Lcom/android/contacts/PreviewVcardListActivity;->isImport:Z
    invoke-static {v5}, Lcom/android/contacts/PreviewVcardListActivity;->access$500(Lcom/android/contacts/PreviewVcardListActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/contacts/PreviewVcardListActivity;->finish()V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v5, v0

    new-instance v6, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$2;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread$2;-><init>(Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;)V

    goto/16 :goto_1

    .line 382
    :cond_8
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .local v15, builder:Ljava/lang/StringBuilder;
    const/16 v22, 0x1

    .line 384
    .local v22, first:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 385
    .local v21, fileName:Ljava/lang/String;
    if-eqz v22, :cond_a

    .line 386
    const/16 v22, 0x0

    .line 390
    :goto_5
    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 393
    .end local v21           #fileName:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v6, v0

    new-instance v7, Lcom/android/contacts/PreviewVcardListActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v9, v0

    const v10, 0x7f0b0088

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/android/contacts/PreviewVcardListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/android/contacts/PreviewVcardListActivity$DialogDisplayer;-><init>(Lcom/android/contacts/PreviewVcardListActivity;Ljava/lang/String;)V

    #calls: Lcom/android/contacts/PreviewVcardListActivity;->runOnUIThread(Ljava/lang/Runnable;)V
    invoke-static {v6, v7}, Lcom/android/contacts/PreviewVcardListActivity;->access$1000(Lcom/android/contacts/PreviewVcardListActivity;Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 388
    .restart local v21       #fileName:Ljava/lang/String;
    :cond_a
    const-string v6, ", "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 382
    .end local v15           #builder:Ljava/lang/StringBuilder;
    .end local v21           #fileName:Ljava/lang/String;
    .end local v22           #first:Z
    .end local v23           #i$:Ljava/util/Iterator;
    .restart local v6       #targetUri:Landroid/net/Uri;
    .restart local v12       #counter:Landroid/pim/vcard/VCardEntryCounter;
    .restart local v17       #detector:Landroid/pim/vcard/VCardSourceDetector;
    .restart local v24       #result:Z
    :cond_b
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .restart local v15       #builder:Ljava/lang/StringBuilder;
    const/16 v22, 0x1

    .line 384
    .restart local v22       #first:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 385
    .restart local v21       #fileName:Ljava/lang/String;
    if-eqz v22, :cond_d

    .line 386
    const/16 v22, 0x0

    .line 390
    :goto_7
    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 393
    .end local v21           #fileName:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v5, v0

    new-instance v6, Lcom/android/contacts/PreviewVcardListActivity$DialogDisplayer;

    .end local v6           #targetUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v8, v0

    const v9, 0x7f0b0088

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .end local v12           #counter:Landroid/pim/vcard/VCardEntryCounter;
    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/contacts/PreviewVcardListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/contacts/PreviewVcardListActivity$DialogDisplayer;-><init>(Lcom/android/contacts/PreviewVcardListActivity;Ljava/lang/String;)V

    .end local v17           #detector:Landroid/pim/vcard/VCardSourceDetector;
    .end local v24           #result:Z
    :goto_8
    #calls: Lcom/android/contacts/PreviewVcardListActivity;->runOnUIThread(Ljava/lang/Runnable;)V
    invoke-static {v5, v6}, Lcom/android/contacts/PreviewVcardListActivity;->access$1000(Lcom/android/contacts/PreviewVcardListActivity;Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 388
    .restart local v6       #targetUri:Landroid/net/Uri;
    .restart local v12       #counter:Landroid/pim/vcard/VCardEntryCounter;
    .restart local v17       #detector:Landroid/pim/vcard/VCardSourceDetector;
    .restart local v21       #fileName:Ljava/lang/String;
    .restart local v24       #result:Z
    :cond_d
    const-string v5, ", "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 382
    .end local v6           #targetUri:Landroid/net/Uri;
    .end local v12           #counter:Landroid/pim/vcard/VCardEntryCounter;
    .end local v15           #builder:Ljava/lang/StringBuilder;
    .end local v17           #detector:Landroid/pim/vcard/VCardSourceDetector;
    .end local v21           #fileName:Ljava/lang/String;
    .end local v22           #first:Z
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v24           #result:Z
    :cond_e
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .restart local v15       #builder:Ljava/lang/StringBuilder;
    const/16 v22, 0x1

    .line 384
    .restart local v22       #first:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->mErrorFileNameList:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 385
    .restart local v21       #fileName:Ljava/lang/String;
    if-eqz v22, :cond_10

    .line 386
    const/16 v22, 0x0

    .line 390
    :goto_a
    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 393
    .end local v21           #fileName:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v5, v0

    new-instance v6, Lcom/android/contacts/PreviewVcardListActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/PreviewVcardListActivity$VCardReadThread;->this$0:Lcom/android/contacts/PreviewVcardListActivity;

    move-object v8, v0

    const v9, 0x7f0b0088

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/android/contacts/PreviewVcardListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/contacts/PreviewVcardListActivity$DialogDisplayer;-><init>(Lcom/android/contacts/PreviewVcardListActivity;Ljava/lang/String;)V

    goto :goto_8

    .line 388
    .restart local v21       #fileName:Ljava/lang/String;
    :cond_10
    const-string v5, ", "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a
.end method
