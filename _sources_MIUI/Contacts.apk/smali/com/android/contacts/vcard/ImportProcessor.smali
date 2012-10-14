.class public Lcom/android/contacts/vcard/ImportProcessor;
.super Lcom/android/contacts/vcard/ProcessorBase;
.source "ImportProcessor.java"

# interfaces
.implements Lcom/android/contacts/model/vcard/VCardEntryHandler;


# instance fields
.field private volatile mCanceled:Z

.field private mCurrentCount:I

.field private volatile mDone:Z

.field private final mFailedUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

.field private final mJobId:I

.field private final mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/contacts/vcard/VCardService;

.field private mTotalCount:I

.field private mVCardParser:Lcom/android/contacts/model/vcard/VCardParser;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/VCardImportExportListener;Lcom/android/contacts/vcard/ImportRequest;I)V
    .locals 2
    .parameter "service"
    .parameter "listener"
    .parameter "request"
    .parameter "jobId"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/contacts/vcard/ProcessorBase;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mFailedUris:Ljava/util/List;

    .line 64
    iput v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCurrentCount:I

    .line 65
    iput v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mTotalCount:I

    .line 69
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    .line 70
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    invoke-virtual {v0}, Lcom/android/contacts/vcard/VCardService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mResolver:Landroid/content/ContentResolver;

    .line 71
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    .line 73
    iput-object p3, p0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    .line 74
    iput p4, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    .line 75
    return-void
.end method

.method private readOneVCard(Ljava/io/InputStream;ILjava/lang/String;Lcom/android/contacts/model/vcard/VCardInterpreter;[I)Z
    .locals 9
    .parameter "is"
    .parameter "vcardType"
    .parameter "charset"
    .parameter "interpreter"
    .parameter "possibleVCardVersions"

    .prologue
    const-string v6, "VCardImport"

    .line 218
    const/4 v4, 0x0

    .line 219
    .local v4, successful:Z
    array-length v3, p5

    .line 220
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 221
    aget v5, p5, v2

    .line 223
    .local v5, vcardVersion:I
    if-lez v2, :cond_0

    :try_start_0
    instance-of v6, p4, Lcom/android/contacts/model/vcard/VCardEntryConstructor;

    if-eqz v6, :cond_0

    .line 225
    move-object v0, p4

    check-cast v0, Lcom/android/contacts/model/vcard/VCardEntryConstructor;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/contacts/model/vcard/VCardEntryConstructor;->clear()V

    .line 232
    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/contacts/model/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/contacts/model/vcard/exception/VCardNotSupportedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/contacts/model/vcard/exception/VCardVersionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/android/contacts/model/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_5

    .line 233
    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    :try_start_1
    new-instance v6, Lcom/android/contacts/model/vcard/VCardParser_V30;

    invoke-direct {v6, p2}, Lcom/android/contacts/model/vcard/VCardParser_V30;-><init>(I)V

    :goto_1
    iput-object v6, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/contacts/model/vcard/VCardParser;

    .line 236
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportProcessor;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 237
    const-string v6, "VCardImport"

    const-string v7, "ImportProcessor already recieves cancel request, so send cancel request to vCard parser too."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v6, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/contacts/model/vcard/VCardParser;

    invoke-virtual {v6}, Lcom/android/contacts/model/vcard/VCardParser;->cancel()V

    .line 241
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :try_start_2
    iget-object v6, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/contacts/model/vcard/VCardParser;

    invoke-virtual {v6, p1, p4}, Lcom/android/contacts/model/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/contacts/model/vcard/VCardInterpreter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/contacts/model/vcard/exception/VCardNestedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/contacts/model/vcard/exception/VCardNotSupportedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/android/contacts/model/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/android/contacts/model/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_5

    .line 244
    const/4 v4, 0x1

    .line 268
    if-eqz p1, :cond_2

    .line 270
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 277
    .end local v5           #vcardVersion:I
    :cond_2
    :goto_2
    return v4

    .line 233
    .restart local v5       #vcardVersion:I
    :cond_3
    :try_start_4
    new-instance v6, Lcom/android/contacts/model/vcard/VCardParser_V21;

    invoke-direct {v6, p2}, Lcom/android/contacts/model/vcard/VCardParser_V21;-><init>(I)V

    goto :goto_1

    .line 241
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/android/contacts/model/vcard/exception/VCardNestedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/android/contacts/model/vcard/exception/VCardNotSupportedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/android/contacts/model/vcard/exception/VCardVersionException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/android/contacts/model/vcard/exception/VCardException; {:try_start_5 .. :try_end_5} :catch_5

    .line 246
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 247
    .local v1, e:Ljava/io/IOException;
    :try_start_6
    const-string v6, "VCardImport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException was emitted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 268
    if-eqz p1, :cond_4

    .line 270
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 220
    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 256
    .local v1, e:Lcom/android/contacts/model/vcard/exception/VCardNestedException;
    :try_start_8
    const-string v6, "VCardImport"

    const-string v7, "Nested Exception is found."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 268
    if-eqz p1, :cond_4

    .line 270
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    .line 271
    .end local v1           #e:Lcom/android/contacts/model/vcard/exception/VCardNestedException;
    :catch_2
    move-exception v6

    goto :goto_3

    .line 257
    :catch_3
    move-exception v6

    move-object v1, v6

    .line 258
    .local v1, e:Lcom/android/contacts/model/vcard/exception/VCardNotSupportedException;
    :try_start_a
    const-string v6, "VCardImport"

    invoke-virtual {v1}, Lcom/android/contacts/model/vcard/exception/VCardNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 268
    if-eqz p1, :cond_4

    .line 270
    :try_start_b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_3

    .line 259
    .end local v1           #e:Lcom/android/contacts/model/vcard/exception/VCardNotSupportedException;
    :catch_4
    move-exception v6

    move-object v1, v6

    .line 260
    .local v1, e:Lcom/android/contacts/model/vcard/exception/VCardVersionException;
    const/4 v6, 0x1

    sub-int v6, v3, v6

    if-ne v2, v6, :cond_5

    .line 261
    :try_start_c
    const-string v6, "VCardImport"

    const-string v7, "Appropriate version for this vCard is not found."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 268
    :cond_5
    if-eqz p1, :cond_4

    .line 270
    :try_start_d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_3

    .line 265
    .end local v1           #e:Lcom/android/contacts/model/vcard/exception/VCardVersionException;
    :catch_5
    move-exception v6

    move-object v1, v6

    .line 266
    .local v1, e:Lcom/android/contacts/model/vcard/exception/VCardException;
    :try_start_e
    const-string v6, "VCardImport"

    invoke-virtual {v1}, Lcom/android/contacts/model/vcard/exception/VCardException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 268
    if-eqz p1, :cond_4

    .line 270
    :try_start_f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_3

    .line 268
    .end local v1           #e:Lcom/android/contacts/model/vcard/exception/VCardException;
    :catchall_1
    move-exception v6

    if-eqz p1, :cond_6

    .line 270
    :try_start_10
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    .line 268
    :cond_6
    :goto_4
    throw v6

    .line 271
    :catch_6
    move-exception v7

    goto :goto_4

    :catch_7
    move-exception v6

    goto/16 :goto_2
.end method

.method private runInternal()V
    .locals 15

    .prologue
    .line 123
    const-string v0, "VCardImport"

    const-string v1, "vCard import (id: %d) has started."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v11, p0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    .line 125
    .local v11, request:Lcom/android/contacts/vcard/ImportRequest;
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportProcessor;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const-string v0, "VCardImport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceled before actually handling parameter ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v11, Lcom/android/contacts/vcard/ImportRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 130
    .restart local p0
    :cond_1
    iget v0, v11, Lcom/android/contacts/vcard/ImportRequest;->vcardVersion:I

    if-nez v0, :cond_5

    .line 135
    const/4 v0, 0x2

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    .line 145
    .local v5, possibleVCardVersions:[I
    :goto_1
    iget-object v13, v11, Lcom/android/contacts/vcard/ImportRequest;->uri:Landroid/net/Uri;

    .line 146
    .local v13, uri:Landroid/net/Uri;
    iget-object v6, v11, Lcom/android/contacts/vcard/ImportRequest;->accounts:[Landroid/accounts/Account;

    .line 147
    .local v6, accounts:[Landroid/accounts/Account;
    iget v2, v11, Lcom/android/contacts/vcard/ImportRequest;->estimatedVCardType:I

    .line 148
    .local v2, estimatedVCardType:I
    iget-object v3, v11, Lcom/android/contacts/vcard/ImportRequest;->estimatedCharset:Ljava/lang/String;

    .line 149
    .local v3, estimatedCharset:Ljava/lang/String;
    iget v9, v11, Lcom/android/contacts/vcard/ImportRequest;->entryCount:I

    .line 150
    .local v9, entryCount:I
    iget v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mTotalCount:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mTotalCount:I

    .line 152
    new-instance v4, Lcom/android/contacts/model/vcard/VCardEntryConstructor;

    invoke-direct {v4, v2, v6, v3}, Lcom/android/contacts/model/vcard/VCardEntryConstructor;-><init>(I[Landroid/accounts/Account;Ljava/lang/String;)V

    .line 154
    .local v4, constructor:Lcom/android/contacts/model/vcard/VCardEntryConstructor;
    new-instance v7, Lcom/android/contacts/model/vcard/VCardEntryCommitter;

    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v7, v0}, Lcom/android/contacts/model/vcard/VCardEntryCommitter;-><init>(Landroid/content/ContentResolver;)V

    .line 155
    .local v7, committer:Lcom/android/contacts/model/vcard/VCardEntryCommitter;
    invoke-virtual {v4, v7}, Lcom/android/contacts/model/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/contacts/model/vcard/VCardEntryHandler;)V

    .line 156
    invoke-virtual {v4, p0}, Lcom/android/contacts/model/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/contacts/model/vcard/VCardEntryHandler;)V

    .line 158
    const/4 v1, 0x0

    .line 159
    .local v1, is:Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 161
    .local v12, successful:Z
    if-eqz v13, :cond_6

    .line 162
    :try_start_0
    const-string v0, "VCardImport"

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #accounts:[Landroid/accounts/Account;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start importing one vCard (Uri: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v13}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 169
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    move-object v0, p0

    .line 170
    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/vcard/ImportProcessor;->readOneVCard(Ljava/io/InputStream;ILjava/lang/String;Lcom/android/contacts/model/vcard/VCardInterpreter;[I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 176
    :cond_3
    if-eqz v1, :cond_4

    .line 178
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    iget v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    .end local v1           #is:Ljava/io/InputStream;
    invoke-virtual {v0, v1, v12}, Lcom/android/contacts/vcard/VCardService;->handleFinishImportNotification(IZ)V

    .line 187
    if-eqz v12, :cond_a

    .line 190
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportProcessor;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 191
    const-string v0, "VCardImport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vCard import has been canceled (uri: "

    .end local v2           #estimatedVCardType:I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 140
    .end local v3           #estimatedCharset:Ljava/lang/String;
    .end local v4           #constructor:Lcom/android/contacts/model/vcard/VCardEntryConstructor;
    .end local v5           #possibleVCardVersions:[I
    .end local v7           #committer:Lcom/android/contacts/model/vcard/VCardEntryCommitter;
    .end local v9           #entryCount:I
    .end local v12           #successful:Z
    .end local v13           #uri:Landroid/net/Uri;
    :cond_5
    const/4 v0, 0x1

    new-array v5, v0, [I

    const/4 v0, 0x0

    iget v1, v11, Lcom/android/contacts/vcard/ImportRequest;->vcardVersion:I

    aput v1, v5, v0

    .restart local v5       #possibleVCardVersions:[I
    goto/16 :goto_1

    .line 164
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #estimatedVCardType:I
    .restart local v3       #estimatedCharset:Ljava/lang/String;
    .restart local v4       #constructor:Lcom/android/contacts/model/vcard/VCardEntryConstructor;
    .restart local v6       #accounts:[Landroid/accounts/Account;
    .restart local v7       #committer:Lcom/android/contacts/model/vcard/VCardEntryCommitter;
    .restart local v9       #entryCount:I
    .restart local v12       #successful:Z
    .restart local v13       #uri:Landroid/net/Uri;
    :cond_6
    :try_start_2
    iget-object v0, v11, Lcom/android/contacts/vcard/ImportRequest;->data:[B

    if-eqz v0, :cond_2

    .line 165
    const-string v0, "VCardImport"

    const-string v6, "start importing one vCard (byte[])"

    .end local v6           #accounts:[Landroid/accounts/Account;
    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v10, Ljava/io/ByteArrayInputStream;

    iget-object v0, v11, Lcom/android/contacts/vcard/ImportRequest;->data:[B

    invoke-direct {v10, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v1           #is:Ljava/io/InputStream;
    .local v10, is:Ljava/io/InputStream;
    move-object v1, v10

    .end local v10           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    goto :goto_2

    .line 173
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 174
    .local v8, e:Ljava/io/IOException;
    const/4 v12, 0x0

    .line 176
    if-eqz v1, :cond_4

    .line 178
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 179
    .end local v8           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    goto :goto_3

    .line 176
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_7

    .line 178
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 176
    .end local v1           #is:Ljava/io/InputStream;
    :cond_7
    :goto_4
    throw v0

    .line 194
    :cond_8
    const-string v0, "VCardImport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully finished importing one vCard file: "

    .end local v2           #estimatedVCardType:I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v7}, Lcom/android/contacts/model/vcard/VCardEntryCommitter;->getCreatedUris()Ljava/util/ArrayList;

    move-result-object v14

    .line 196
    .local v14, uris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    if-eqz v0, :cond_0

    .line 197
    if-eqz v14, :cond_9

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 199
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    iget-object v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    iget v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    const/4 v3, 0x0

    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .end local v3           #estimatedCharset:Ljava/lang/String;
    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/Uri;

    invoke-interface {v0, v1, v2, p0}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportFinished(Lcom/android/contacts/vcard/ImportRequest;ILandroid/net/Uri;)V

    goto/16 :goto_0

    .line 202
    .restart local v3       #estimatedCharset:Ljava/lang/String;
    .restart local p0
    :cond_9
    const-string v0, "VCardImport"

    const-string v1, "Created Uris is null or 0 length though the creation itself is successful."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    iget-object v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    iget v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportFinished(Lcom/android/contacts/vcard/ImportRequest;ILandroid/net/Uri;)V

    goto/16 :goto_0

    .line 210
    .end local v14           #uris:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    .restart local v2       #estimatedVCardType:I
    :cond_a
    const-string v0, "VCardImport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read one vCard file: "

    .end local v2           #estimatedVCardType:I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mFailedUris:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 179
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #estimatedVCardType:I
    :catch_2
    move-exception v1

    goto :goto_4

    .line 135
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 2
    .parameter "mayInterruptIfRunning"

    .prologue
    const/4 v1, 0x1

    .line 283
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mDone:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 284
    :cond_0
    const/4 v0, 0x0

    .line 292
    :goto_0
    monitor-exit p0

    return v0

    .line 286
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCanceled:Z

    .line 287
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 288
    :try_start_2
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/contacts/model/vcard/VCardParser;

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/contacts/model/vcard/VCardParser;

    invoke-virtual {v0}, Lcom/android/contacts/model/vcard/VCardParser;->cancel()V

    .line 291
    :cond_2
    monitor-exit p0

    move v0, v1

    .line 292
    goto :goto_0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 283
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEnd()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onEntryCreated(Lcom/android/contacts/model/vcard/VCardEntry;)V
    .locals 6
    .parameter "entry"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCurrentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCurrentCount:I

    .line 90
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    iget-object v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    iget v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    iget v4, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCurrentCount:I

    iget v5, p0, Lcom/android/contacts/vcard/ImportProcessor;->mTotalCount:I

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportParsed(Lcom/android/contacts/vcard/ImportRequest;ILcom/android/contacts/model/vcard/VCardEntry;II)V

    .line 93
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const-string v1, "VCardImport"

    .line 104
    :try_start_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportProcessor;->runInternal()V

    .line 106
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportProcessor;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    iget-object v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    iget v3, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    invoke-interface {v1, v2, v3}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportCanceled(Lcom/android/contacts/vcard/ImportRequest;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :cond_0
    monitor-enter p0

    .line 117
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mDone:Z

    .line 118
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 120
    return-void

    .line 109
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 110
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v1, "VCardImport"

    const-string v2, "OutOfMemoryError thrown during import"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v1

    monitor-enter p0

    .line 117
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mDone:Z

    .line 118
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 116
    throw v1

    .line 112
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 113
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v1, "VCardImport"

    const-string v2, "RuntimeException thrown during import"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method
