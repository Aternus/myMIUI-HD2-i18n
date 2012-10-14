.class public Lcom/android/voicedialer/CommandRecognizerEngine;
.super Lcom/android/voicedialer/RecognizerEngine;
.source "CommandRecognizerEngine.java"


# static fields
.field private static final mLatin1Letters:[C


# instance fields
.field private mAllowOpenEntries:Z

.field private mContactsFile:Ljava/io/File;

.field private mMinimizeResults:Z

.field private mOpenEntries:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 372
    const-string v0, "AAAAAAACEEEEIIIIDNOOOOO OUUUUYDsaaaaaaaceeeeiiiidnooooo ouuuuydy"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/voicedialer/CommandRecognizerEngine;->mLatin1Letters:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/voicedialer/RecognizerEngine;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mContactsFile:Ljava/io/File;

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mMinimizeResults:Z

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mAllowOpenEntries:Z

    .line 91
    return-void
.end method

.method private static addCallIntent(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter "uri"
    .parameter "literal"
    .parameter "phoneType"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1204
    .local p0, intents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sentence"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "phone_type"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1208
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/android/voicedialer/CommandRecognizerEngine;->addIntent(Ljava/util/ArrayList;Landroid/content/Intent;)V

    .line 1209
    return-void
.end method

.method private static addClassName(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "label"
    .parameter "packageName"
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, openEntries:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v7, 0x20

    .line 349
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, component:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 351
    .local v4, labelLowerCase:Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 354
    .local v1, classList:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 355
    invoke-virtual {p0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 360
    .local v3, index:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int v0, v3, v5

    .line 361
    .local v0, after:I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    if-eqz v3, :cond_2

    const/4 v5, 0x1

    sub-int v5, v3, v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v0, v5, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_0

    .line 365
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private addNameEntriesToGrammar(Ljava/util/List;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/voicedialer/VoiceContact;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p1, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/android/voicedialer/VoiceContact;>;"
    const/16 v12, 0x20

    const-string v13, "RecognizerEngine"

    .line 191
    const-string v0, "RecognizerEngine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addNameEntriesToGrammar "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 194
    .local v9, entries:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 195
    .local v11, sb:Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 196
    .local v7, count:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/voicedialer/VoiceContact;

    .line 197
    .local v6, contact:Lcom/android/voicedialer/VoiceContact;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 198
    :cond_1
    iget-object v0, v6, Lcom/android/voicedialer/VoiceContact;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/voicedialer/CommandRecognizerEngine;->scrubName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 201
    const-string v0, "V=\'"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    iget-wide v0, v6, Lcom/android/voicedialer/VoiceContact;->mContactId:J

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 203
    iget-wide v0, v6, Lcom/android/voicedialer/VoiceContact;->mPrimaryId:J

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 204
    iget-wide v0, v6, Lcom/android/voicedialer/VoiceContact;->mHomeId:J

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 205
    iget-wide v0, v6, Lcom/android/voicedialer/VoiceContact;->mMobileId:J

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 206
    iget-wide v0, v6, Lcom/android/voicedialer/VoiceContact;->mWorkId:J

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 207
    iget-wide v0, v6, Lcom/android/voicedialer/VoiceContact;->mOtherId:J

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 208
    const-string v0, "\'"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    const-string v1, "@Names"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/speech/srec/Recognizer$Grammar;->addWordToSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    add-int/lit8 v7, v7, 0x1

    .line 218
    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 212
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "RecognizerEngine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot load all contacts to voice recognizer, loaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    .end local v2           #name:Ljava/lang/String;
    .end local v6           #contact:Lcom/android/voicedialer/VoiceContact;
    .end local v8           #e:Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method private addOpenEntriesToGrammar()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/android/voicedialer/CommandRecognizerEngine;->loadOpenEntriesTable()V

    .line 322
    iget-object v0, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 323
    .local v2, label:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 326
    .local v7, entry:Ljava/lang/String;
    const/4 v6, 0x0

    .line 327
    .local v6, count:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    const/16 v0, 0x20

    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 328
    :cond_2
    const/4 v0, 0x5

    if-gt v6, v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    const-string v1, "@Opens"

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "V=\'"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "\'"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/speech/srec/Recognizer$Grammar;->addWordToSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 339
    .end local v2           #label:Ljava/lang/String;
    .end local v6           #count:I
    .end local v7           #entry:Ljava/lang/String;
    .end local v8           #i:I
    :cond_3
    return-void
.end method

.method private static deleteAllG2GFiles(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 446
    new-instance v1, Lcom/android/voicedialer/CommandRecognizerEngine$1;

    invoke-direct {v1}, Lcom/android/voicedialer/CommandRecognizerEngine$1;-><init>()V

    .line 452
    .local v1, ff:Ljava/io/FileFilter;
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 453
    .local v3, files:[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 454
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 455
    .local v2, file:Ljava/io/File;
    const-string v6, "RecognizerEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteAllG2GFiles "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 454
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 459
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    return-void
.end method

.method public static deleteCachedGrammarFiles(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 467
    invoke-static {p0}, Lcom/android/voicedialer/CommandRecognizerEngine;->deleteAllG2GFiles(Landroid/content/Context;)V

    .line 468
    const-string v1, "openentries.txt"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 469
    .local v0, oe:Ljava/io/File;
    const-string v1, "RecognizerEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteCachedGrammarFiles "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 471
    :cond_0
    return-void
.end method

.method private static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "num"

    .prologue
    .line 918
    const/4 v0, 0x0

    .line 920
    .local v0, fmt:Ljava/lang/String;
    const-string v1, "+1 xxx xxx xxxx\n+20 x xxx xxxx\n+20 1x xxx xxxx\n+20 xx xxx xxxx\n+20 xxx xxx xxxx\n+212 xxxx xxxx\n+213 xx xx xx xx\n+213 xx xxx xxxx\n+216 xx xxx xxx\n+218 xx xxx xxx\n+22x \n+23x \n+24x \n+25x \n+26x \n+27 xx xxx xxxx\n+290 x xxx\n+291 x xxx xxx\n+297 xxx xxxx\n+298 xxx xxx\n+299 xxx xxx\n+30 xxx xxx xxxx\n+31 6 xxxx xxxx\n+31 xx xxx xxxx\n+31 xxx xx xxxx\n+32 2 xxx xx xx\n+32 3 xxx xx xx\n+32 4xx xx xx xx\n+32 9 xxx xx xx\n+32 xx xx xx xx\n+33 xxx xxx xxx\n+34 xxx xxx xxx\n+351 3xx xxx xxx\n+351 7xx xxx xxx\n+351 8xx xxx xxx\n+351 xx xxx xxxx\n+352 xx xxxx\n+352 6x1 xxx xxx\n+352 \n+353 xxx xxxx\n+353 xxxx xxxx\n+353 xx xxx xxxx\n+354 3xx xxx xxx\n+354 xxx xxxx\n+355 6x xxx xxxx\n+355 xxx xxxx\n+356 xx xx xx xx\n+357 xx xx xx xx\n+358 \n+359 \n+36 1 xxx xxxx\n+36 20 xxx xxxx\n+36 21 xxx xxxx\n+36 30 xxx xxxx\n+36 70 xxx xxxx\n+36 71 xxx xxxx\n+36 xx xxx xxx\n+370 6x xxx xxx\n+370 xxx xx xxx\n+371 xxxx xxxx\n+372 5 xxx xxxx\n+372 xxx xxxx\n+373 6xx xx xxx\n+373 7xx xx xxx\n+373 xxx xxxxx\n+374 xx xxx xxx\n+375 xx xxx xxxx\n+376 xx xx xx\n+377 xxxx xxxx\n+378 xxx xxx xxxx\n+380 xxx xx xx xx\n+381 xx xxx xxxx\n+382 xx xxx xxxx\n+385 xx xxx xxxx\n+386 x xxx xxxx\n+387 xx xx xx xx\n+389 2 xxx xx xx\n+389 xx xx xx xx\n+39 xxx xxx xxx\n+39 3xx xxx xxxx\n+39 xx xxxx xxxx\n+40 xxx xxx xxx\n+41 xx xxx xx xx\n+420 xxx xxx xxx\n+421 xxx xxx xxx\n+421 xxx xxx xxxx\n+43 \n+44 xxx xxx xxxx\n+45 xx xx xx xx\n+46 \n+47 xxxx xxxx\n+48 xx xxx xxxx\n+49 1xx xxxx xxx\n+49 1xx xxxx xxxx\n+49 \n+50x \n+51 9xx xxx xxx\n+51 1 xxx xxxx\n+51 xx xx xxxx\n+52 1 xxx xxx xxxx\n+52 xxx xxx xxxx\n+53 xxxx xxxx\n+54 9 11 xxxx xxxx\n+54 9 xxx xxx xxxx\n+54 11 xxxx xxxx\n+54 xxx xxx xxxx\n+55 xx xxxx xxxx\n+56 2 xxxxxx\n+56 9 xxxx xxxx\n+56 xx xxxxxx\n+56 xx xxxxxxx\n+57 x xxx xxxx\n+57 3xx xxx xxxx\n+58 xxx xxx xxxx\n+59x \n+60 3 xxxx xxxx\n+60 8x xxxxxx\n+60 x xxx xxxx\n+60 14 x xxx xxxx\n+60 1x xxx xxxx\n+60 x xxxx xxxx\n+60 \n+61 4xx xxx xxx\n+61 x xxxx xxxx\n+62 8xx xxxx xxxx\n+62 21 xxxxx\n+62 xx xxxxxx\n+62 xx xxx xxxx\n+62 xx xxxx xxxx\n+63 2 xxx xxxx\n+63 xx xxx xxxx\n+63 9xx xxx xxxx\n+64 2 xxx xxxx\n+64 2 xxx xxxx x\n+64 2 xxx xxxx xx\n+64 x xxx xxxx\n+65 xxxx xxxx\n+66 8 xxxx xxxx\n+66 2 xxx xxxx\n+66 xx xx xxxx\n+67x \n+68x \n+690 x xxx\n+691 xxx xxxx\n+692 xxx xxxx\n+7 6xx xx xxxxx\n+7 7xx 2 xxxxxx\n+7 7xx xx xxxxx\n+7 xxx xxx xx xx\n+81 3 xxxx xxxx\n+81 6 xxxx xxxx\n+81 xx xxx xxxx\n+81 x0 xxxx xxxx\n+82 2 xxx xxxx\n+82 2 xxxx xxxx\n+82 xx xxxx xxxx\n+82 xx xxx xxxx\n+84 4 xxxx xxxx\n+84 xx xxxx xxx\n+84 xx xxxx xxxx\n+850 \n+852 xxxx xxxx\n+853 xxxx xxxx\n+855 1x xxx xxx\n+855 9x xxx xxx\n+855 xx xx xx xx\n+856 20 x xxx xxx\n+856 xx xxx xxx\n+852 xxxx xxxx\n+86 10 xxxx xxxx\n+86 2x xxxx xxxx\n+86 xxx xxx xxxx\n+86 xxx xxxx xxxx\n+880 xx xxxx xxxx\n+886 \n+90 xxx xxx xxxx\n+91 9x xx xxxxxx\n+91 xx xxxx xxxx\n+92 xx xxx xxxx\n+92 3xx xxx xxxx\n+93 70 xxx xxx\n+93 xx xxx xxxx\n+94 xx xxx xxxx\n+95 1 xxx xxx\n+95 2 xxx xxx\n+95 xx xxxxx\n+95 9 xxx xxxx\n+960 xxx xxxx\n+961 x xxx xxx\n+961 xx xxx xxx\n+962 7 xxxx xxxx\n+962 x xxx xxxx\n+963 11 xxx xxxx\n+963 xx xxx xxx\n+964 \n+965 xxxx xxxx\n+966 5x xxx xxxx\n+966 x xxx xxxx\n+967 7xx xxx xxx\n+967 x xxx xxx\n+968 xxxx xxxx\n+970 5x xxx xxxx\n+970 x xxx xxxx\n+971 5x xxx xxxx\n+971 x xxx xxxx\n+972 5x xxx xxxx\n+972 x xxx xxxx\n+973 xxxx xxxx\n+974 xxx xxxx\n+975 1x xxx xxx\n+975 x xxx xxx\n+976 \n+977 xxxx xxxx\n+977 98 xxxx xxxx\n+98 xxx xxx xxxx\n+992 xxx xxx xxx\n+993 xxxx xxxx\n+994 xx xxx xxxx\n+994 xxx xxxxx\n+995 xx xxx xxx\n+996 xxx xxx xxx\n+998 xx xxx xxxx\n"

    invoke-static {v1, p0}, Lcom/android/voicedialer/CommandRecognizerEngine;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 921
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 926
    :goto_0
    return-object v1

    .line 923
    :cond_0
    const-string v1, "xxx xxx xxxx\nxxx xxxx\nx11\n"

    invoke-static {v1, p0}, Lcom/android/voicedialer/CommandRecognizerEngine;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 924
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 926
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "formats"
    .parameter "number"

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0xa

    .line 868
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 869
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 870
    .local v5, nlen:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 871
    .local v2, formatslen:I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 874
    .local v6, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, f:I
    :cond_0
    if-ge v0, v2, :cond_4

    .line 875
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 876
    const/4 v3, 0x0

    .line 880
    .local v3, n:I
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 881
    .local v1, fch:C
    if-ne v1, v8, :cond_2

    if-lt v3, v5, :cond_2

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 908
    .end local v1           #fch:C
    .end local v3           #n:I
    :goto_1
    return-object v7

    .line 882
    .restart local v1       #fch:C
    .restart local v3       #n:I
    :cond_2
    if-eq v1, v8, :cond_3

    if-lt v3, v5, :cond_5

    .line 904
    :cond_3
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    add-int/lit8 v0, v7, 0x1

    .line 905
    if-nez v0, :cond_0

    .line 908
    .end local v1           #fch:C
    .end local v3           #n:I
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 883
    .restart local v1       #fch:C
    .restart local v3       #n:I
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 885
    .local v4, nch:C
    if-eq v1, v4, :cond_6

    const/16 v7, 0x78

    if-ne v1, v7, :cond_7

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 886
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 887
    add-int/lit8 v3, v3, 0x1

    .line 888
    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 891
    :cond_7
    if-ne v1, v9, :cond_3

    .line 892
    add-int/lit8 v0, v0, 0x1

    .line 893
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 895
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_1

    .line 896
    invoke-virtual {v6, p1, v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method private loadOpenEntriesTable()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    const-string v23, "RecognizerEngine"

    const-string v24, "addOpenEntriesToGrammar"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    const-string v24, "openentries.txt"

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 231
    .local v14, oe:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v23

    if-nez v23, :cond_7

    .line 232
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 236
    .local v17, pm:Landroid/content/pm/PackageManager;
    new-instance v23, Landroid/content/Intent;

    const-string v24, "android.intent.action.MAIN"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v24, "android.intent.category.VOICE_LAUNCH"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v19

    .line 240
    .local v19, riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v23

    if-eqz v23, :cond_0

    new-instance v23, Ljava/lang/InterruptedException;

    invoke-direct/range {v23 .. v23}, Ljava/lang/InterruptedException;-><init>()V

    throw v23

    .line 241
    :cond_0
    new-instance v23, Landroid/content/Intent;

    const-string v24, "android.intent.action.MAIN"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v24, "android.intent.category.LAUNCHER"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v20

    .line 248
    .local v20, voiceDialerClassName:Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    .line 249
    .local v18, ri:Landroid/content/pm/ResolveInfo;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v23

    if-eqz v23, :cond_2

    new-instance v23, Ljava/lang/InterruptedException;

    invoke-direct/range {v23 .. v23}, Ljava/lang/InterruptedException;-><init>()V

    throw v23

    .line 252
    :cond_2
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 255
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/voicedialer/CommandRecognizerEngine;->scrubName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 256
    .local v11, label:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v23

    if-eqz v23, :cond_1

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object v1, v11

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/voicedialer/CommandRecognizerEngine;->addClassName(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v23, " "

    move-object v0, v11

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 264
    .local v22, words:[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_1

    .line 265
    move-object/from16 v4, v22

    .local v4, arr$:[Ljava/lang/String;
    array-length v13, v4

    .local v13, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v13, :cond_1

    aget-object v21, v4, v9

    .line 266
    .local v21, word:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    .line 268
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v12

    .line 269
    .local v12, len:I
    const/16 v23, 0x1

    move v0, v12

    move/from16 v1, v23

    if-gt v0, v1, :cond_4

    .line 265
    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 270
    :cond_4
    const/16 v23, 0x2

    move v0, v12

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v23

    if-eqz v23, :cond_3

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 272
    :cond_5
    const-string v23, "and"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_3

    const-string v23, "the"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/voicedialer/CommandRecognizerEngine;->addClassName(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 282
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v9           #i$:I
    .end local v11           #label:Ljava/lang/String;
    .end local v12           #len:I
    .end local v13           #len$:I
    .end local v18           #ri:Landroid/content/pm/ResolveInfo;
    .end local v21           #word:Ljava/lang/String;
    .end local v22           #words:[Ljava/lang/String;
    :cond_6
    const-string v23, "RecognizerEngine"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "addOpenEntriesToGrammar writing "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .local v7, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v16, Ljava/io/ObjectOutputStream;

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 287
    .local v16, oos:Ljava/io/ObjectOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 288
    invoke-virtual/range {v16 .. v16}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 315
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v16           #oos:Ljava/io/ObjectOutputStream;
    .end local v17           #pm:Landroid/content/pm/PackageManager;
    .end local v19           #riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v20           #voiceDialerClassName:Ljava/lang/String;
    :goto_2
    return-void

    .line 290
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    .restart local v17       #pm:Landroid/content/pm/PackageManager;
    .restart local v19       #riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v20       #voiceDialerClassName:Ljava/lang/String;
    :catchall_0
    move-exception v23

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    throw v23
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 292
    .end local v7           #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v23

    move-object/from16 v10, v23

    .line 293
    .local v10, ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/voicedialer/CommandRecognizerEngine;->deleteCachedGrammarFiles(Landroid/content/Context;)V

    .line 294
    throw v10

    .line 300
    .end local v10           #ioe:Ljava/io/IOException;
    .end local v17           #pm:Landroid/content/pm/PackageManager;
    .end local v19           #riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v20           #voiceDialerClassName:Ljava/lang/String;
    :cond_7
    const-string v23, "RecognizerEngine"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "addOpenEntriesToGrammar reading "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :try_start_3
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 304
    .local v6, fis:Ljava/io/FileInputStream;
    :try_start_4
    new-instance v15, Ljava/io/ObjectInputStream;

    invoke-direct {v15, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 305
    .local v15, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v15}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    .line 306
    invoke-virtual {v15}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 308
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 310
    .end local v6           #fis:Ljava/io/FileInputStream;
    .end local v15           #ois:Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v23

    move-object/from16 v5, v23

    .line 311
    .local v5, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/voicedialer/CommandRecognizerEngine;->deleteCachedGrammarFiles(Landroid/content/Context;)V

    .line 312
    new-instance v23, Ljava/io/IOException;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 308
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v23

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    throw v23
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
.end method

.method private static scrubName(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "name"

    .prologue
    const/16 v10, 0xc0

    const/16 v9, 0x20

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 385
    const-string v4, "&"

    const-string v5, " and "

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 388
    const-string v4, "@"

    const-string v5, " at "

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 392
    :goto_0
    const/16 v4, 0x28

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 393
    .local v1, i:I
    if-ne v1, v6, :cond_4

    .line 400
    :cond_0
    const/4 v3, 0x0

    .line 401
    .local v3, nm:[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, v4, v8

    :goto_1
    if-ltz v1, :cond_6

    .line 402
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 403
    .local v0, ch:C
    if-lt v0, v9, :cond_1

    const/16 v4, 0x7e

    if-ge v4, v0, :cond_3

    .line 404
    :cond_1
    if-nez v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 405
    :cond_2
    if-gt v10, v0, :cond_5

    sget-object v4, Lcom/android/voicedialer/CommandRecognizerEngine;->mLatin1Letters:[C

    array-length v4, v4

    add-int/lit16 v4, v4, 0xc0

    if-ge v0, v4, :cond_5

    sget-object v4, Lcom/android/voicedialer/CommandRecognizerEngine;->mLatin1Letters:[C

    sub-int v5, v0, v10

    aget-char v4, v4, v5

    :goto_2
    aput-char v4, v3, v1

    .line 401
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 394
    .end local v0           #ch:C
    .end local v3           #nm:[C
    :cond_4
    const/16 v4, 0x29

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 395
    .local v2, j:I
    if-eq v2, v6, :cond_0

    .line 396
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 397
    goto :goto_0

    .end local v2           #j:I
    .restart local v0       #ch:C
    .restart local v3       #nm:[C
    :cond_5
    move v4, v9

    .line 405
    goto :goto_2

    .line 409
    .end local v0           #ch:C
    :cond_6
    if-eqz v3, :cond_7

    .line 410
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    .line 415
    .restart local p0
    :cond_7
    :goto_3
    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 416
    if-eq v1, v6, :cond_8

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_8

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_9

    .line 423
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 426
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, v4, v8

    .line 427
    :goto_4
    if-gez v1, :cond_a

    const-string v4, ""

    .line 434
    :goto_5
    return-object v4

    .line 419
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 420
    goto :goto_3

    .line 428
    :cond_a
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 429
    .restart local v0       #ch:C
    const/16 v4, 0x61

    if-gt v4, v0, :cond_b

    const/16 v4, 0x7a

    if-le v0, v4, :cond_d

    :cond_b
    const/16 v4, 0x41

    if-gt v4, v0, :cond_c

    const/16 v4, 0x5a

    if-le v0, v4, :cond_d

    :cond_c
    const/16 v4, 0x30

    if-gt v4, v0, :cond_e

    const/16 v4, 0x39

    if-gt v0, v4, :cond_e

    :cond_d
    move-object v4, p0

    .line 434
    goto :goto_5

    .line 426
    :cond_e
    add-int/lit8 v1, v1, -0x1

    goto :goto_4
.end method


# virtual methods
.method protected onRecognitionSuccess(Lcom/android/voicedialer/RecognizerClient;)V
    .locals 56
    .parameter "recognizerClient"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 938
    const-string v52, "RecognizerEngine"

    const-string v53, "onRecognitionSuccess"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    move-object/from16 v52, v0

    if-eqz v52, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/voicedialer/RecognizerLogger;->logNbestHeader()V

    .line 942
    :cond_0
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 944
    .local v22, intents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const/16 v16, 0x0

    .line 945
    .local v16, highestConfidence:I
    const/4 v15, 0x5

    .line 946
    .local v15, examineLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/voicedialer/CommandRecognizerEngine;->mMinimizeResults:Z

    move/from16 v52, v0

    if-eqz v52, :cond_1

    .line 947
    const/4 v15, 0x1

    .line 949
    :cond_1
    const/16 v41, 0x0

    .line 950
    .local v41, result:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/speech/srec/Recognizer;->getResultCount()I

    move-result v52

    move/from16 v0, v41

    move/from16 v1, v52

    if-ge v0, v1, :cond_4

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v52

    move/from16 v0, v52

    move v1, v15

    if-ge v0, v1, :cond_4

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    move-object/from16 v52, v0

    const-string v53, "conf"

    move-object/from16 v0, v52

    move/from16 v1, v41

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/speech/srec/Recognizer;->getResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 954
    .local v9, conf:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    move-object/from16 v52, v0

    const-string v53, "literal"

    move-object/from16 v0, v52

    move/from16 v1, v41

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/speech/srec/Recognizer;->getResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 955
    .local v25, literal:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    move-object/from16 v52, v0

    const-string v53, "meaning"

    move-object/from16 v0, v52

    move/from16 v1, v41

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/speech/srec/Recognizer;->getResult(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 956
    .local v45, semantic:Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "conf="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " lit="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " sem="

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 957
    .local v29, msg:Ljava/lang/String;
    const-string v52, "RecognizerEngine"

    move-object/from16 v0, v52

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 959
    .local v10, confInt:I
    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_2

    move/from16 v16, v10

    .line 960
    :cond_2
    const/16 v52, 0x64

    move v0, v10

    move/from16 v1, v52

    if-lt v0, v1, :cond_3

    mul-int/lit8 v52, v10, 0x2

    move/from16 v0, v52

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    .line 961
    :cond_3
    const-string v52, "RecognizerEngine"

    const-string v53, "confidence too low, dropping"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    .end local v9           #conf:Ljava/lang/String;
    .end local v10           #confInt:I
    .end local v25           #literal:Ljava/lang/String;
    .end local v29           #msg:Ljava/lang/String;
    .end local v45           #semantic:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    move-object/from16 v52, v0

    if-eqz v52, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/RecognizerLogger;->logIntents(Ljava/util/ArrayList;)V

    .line 1189
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v52

    if-eqz v52, :cond_27

    new-instance v52, Ljava/lang/InterruptedException;

    invoke-direct/range {v52 .. v52}, Ljava/lang/InterruptedException;-><init>()V

    throw v52

    .line 964
    .restart local v9       #conf:Ljava/lang/String;
    .restart local v10       #confInt:I
    .restart local v25       #literal:Ljava/lang/String;
    .restart local v29       #msg:Ljava/lang/String;
    .restart local v45       #semantic:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    move-object/from16 v52, v0

    if-eqz v52, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/RecognizerLogger;->logLine(Ljava/lang/String;)V

    .line 965
    :cond_7
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v52

    const-string v53, " "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 970
    .local v6, commands:[Ljava/lang/String;
    const-string v52, "DIAL"

    const/16 v53, 0x0

    aget-object v53, v6, v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_9

    .line 971
    const-string v52, "tel"

    const/16 v53, 0x1

    aget-object v53, v6, v53

    const/16 v54, 0x0

    invoke-static/range {v52 .. v54}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v48

    .line 972
    .local v48, uri:Landroid/net/Uri;
    const/16 v52, 0x1

    aget-object v52, v6, v52

    invoke-static/range {v52 .. v52}, Lcom/android/voicedialer/CommandRecognizerEngine;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 973
    .local v30, num:Ljava/lang/String;
    if-eqz v30, :cond_8

    .line 974
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, " "

    move-object/from16 v0, v25

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v53

    const/16 v54, 0x0

    aget-object v53, v53, v54

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, " "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    const-string v53, ""

    const/16 v54, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v48

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    move/from16 v4, v54

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/voicedialer/CommandRecognizerEngine;->addCallIntent(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    .line 950
    .end local v30           #num:Ljava/lang/String;
    .end local v48           #uri:Landroid/net/Uri;
    :cond_8
    :goto_1
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_0

    .line 980
    :cond_9
    const-string v52, "CALL"

    const/16 v53, 0x0

    aget-object v53, v6, v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_1d

    move-object v0, v6

    array-length v0, v0

    move/from16 v52, v0

    const/16 v53, 0x7

    move/from16 v0, v52

    move/from16 v1, v53

    if-lt v0, v1, :cond_1d

    .line 982
    const/16 v52, 0x1

    aget-object v52, v6, v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 983
    .local v11, contactId:J
    const/16 v52, 0x2

    aget-object v52, v6, v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v35

    .line 984
    .local v35, phoneId:J
    const/16 v52, 0x3

    aget-object v52, v6, v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 985
    .local v17, homeId:J
    const/16 v52, 0x4

    aget-object v52, v6, v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v27

    .line 986
    .local v27, mobileId:J
    const/16 v52, 0x5

    aget-object v52, v6, v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v50

    .line 987
    .local v50, workId:J
    const/16 v52, 0x6

    aget-object v52, v6, v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    .line 988
    .local v32, otherId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v40

    .line 990
    .local v40, res:Landroid/content/res/Resources;
    const/4 v13, 0x0

    .line 997
    .local v13, count:I
    move-object v0, v6

    array-length v0, v0

    move/from16 v52, v0

    const/16 v53, 0x8

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_11

    .line 998
    const-string v52, "H"

    const/16 v53, 0x7

    aget-object v53, v6, v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_d

    move-wide/from16 v46, v17

    .line 1004
    .local v46, spokenPhoneId:J
    :goto_2
    const-wide/16 v52, -0x1

    cmp-long v52, v46, v52

    if-eqz v52, :cond_a

    .line 1005
    sget-object v52, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v52

    move-wide/from16 v1, v46

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v52

    const/16 v53, 0x7

    aget-object v53, v6, v53

    const/16 v54, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v52

    move-object/from16 v2, v25

    move-object/from16 v3, v53

    move/from16 v4, v54

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/voicedialer/CommandRecognizerEngine;->addCallIntent(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1008
    add-int/lit8 v13, v13, 0x1

    .line 1040
    .end local v46           #spokenPhoneId:J
    :cond_a
    :goto_3
    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/voicedialer/CommandRecognizerEngine;->mMinimizeResults:Z

    move/from16 v52, v0

    if-nez v52, :cond_1c

    .line 1046
    :cond_b
    move-object/from16 v24, v25

    .line 1047
    .local v24, lit:Ljava/lang/String;
    move-object v0, v6

    array-length v0, v0

    move/from16 v52, v0

    const/16 v53, 0x8

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_18

    .line 1048
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v52

    const-string v53, " "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v49

    .line 1049
    .local v49, words:[Ljava/lang/String;
    new-instance v44, Ljava/lang/StringBuffer;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuffer;-><init>()V

    .line 1050
    .local v44, sb:Ljava/lang/StringBuffer;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_4
    move-object/from16 v0, v49

    array-length v0, v0

    move/from16 v52, v0

    const/16 v53, 0x2

    sub-int v52, v52, v53

    move/from16 v0, v19

    move/from16 v1, v52

    if-ge v0, v1, :cond_17

    .line 1051
    if-eqz v19, :cond_c

    .line 1052
    const/16 v52, 0x20

    move-object/from16 v0, v44

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1054
    :cond_c
    aget-object v52, v49, v19

    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1050
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 998
    .end local v19           #i:I
    .end local v24           #lit:Ljava/lang/String;
    .end local v44           #sb:Ljava/lang/StringBuffer;
    .end local v49           #words:[Ljava/lang/String;
    :cond_d
    const-string v52, "M"

    const/16 v53, 0x7

    aget-object v53, v6, v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_e

    move-wide/from16 v46, v27

    goto/16 :goto_2

    :cond_e
    const-string v52, "W"

    const/16 v53, 0x7

    aget-object v53, v6, v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_f

    move-wide/from16 v46, v50

    goto/16 :goto_2

    :cond_f
    const-string v52, "O"

    const/16 v53, 0x7

    aget-object v53, v6, v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_10

    move-wide/from16 v46, v32

    goto/16 :goto_2

    :cond_10
    const-wide/16 v52, -0x1

    move-wide/from16 v46, v52

    goto/16 :goto_2

    .line 1013
    :cond_11
    move-object v0, v6

    array-length v0, v0

    move/from16 v52, v0

    const/16 v53, 0x7

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_a

    .line 1014
    const/16 v38, 0x0

    .line 1015
    .local v38, phoneType:Ljava/lang/String;
    const/16 v37, 0x0

    .line 1016
    .local v37, phoneIdMsg:Ljava/lang/CharSequence;
    const-wide/16 v52, -0x1

    cmp-long v52, v35, v52

    if-nez v52, :cond_13

    .line 1017
    const/16 v38, 0x0

    .line 1018
    const/16 v37, 0x0

    .line 1032
    :cond_12
    :goto_5
    if-eqz v37, :cond_a

    .line 1033
    sget-object v52, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v52

    move-wide/from16 v1, v35

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v52

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v53

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    const/16 v54, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    move-object/from16 v3, v38

    move/from16 v4, v54

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/voicedialer/CommandRecognizerEngine;->addCallIntent(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1036
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 1019
    :cond_13
    cmp-long v52, v35, v17

    if-nez v52, :cond_14

    .line 1020
    const-string v38, "H"

    .line 1021
    const v52, 0x7f04000c

    move-object/from16 v0, v40

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v37

    goto :goto_5

    .line 1022
    :cond_14
    cmp-long v52, v35, v27

    if-nez v52, :cond_15

    .line 1023
    const-string v38, "M"

    .line 1024
    const v52, 0x7f04000d

    move-object/from16 v0, v40

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v37

    goto :goto_5

    .line 1025
    :cond_15
    cmp-long v52, v35, v50

    if-nez v52, :cond_16

    .line 1026
    const-string v38, "W"

    .line 1027
    const v52, 0x7f04000e

    move-object/from16 v0, v40

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v37

    goto :goto_5

    .line 1028
    :cond_16
    cmp-long v52, v35, v32

    if-nez v52, :cond_12

    .line 1029
    const-string v38, "O"

    .line 1030
    const v52, 0x7f04000f

    move-object/from16 v0, v40

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v37

    goto :goto_5

    .line 1056
    .end local v37           #phoneIdMsg:Ljava/lang/CharSequence;
    .end local v38           #phoneType:Ljava/lang/String;
    .restart local v19       #i:I
    .restart local v24       #lit:Ljava/lang/String;
    .restart local v44       #sb:Ljava/lang/StringBuffer;
    .restart local v49       #words:[Ljava/lang/String;
    :cond_17
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1060
    .end local v19           #i:I
    .end local v44           #sb:Ljava/lang/StringBuffer;
    .end local v49           #words:[Ljava/lang/String;
    :cond_18
    const-wide/16 v52, -0x1

    cmp-long v52, v17, v52

    if-eqz v52, :cond_19

    .line 1061
    sget-object v52, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v52

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v52

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v53

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const v54, 0x7f04000c

    move-object/from16 v0, v40

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    const-string v54, "H"

    const/16 v55, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/voicedialer/CommandRecognizerEngine;->addCallIntent(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1064
    add-int/lit8 v13, v13, 0x1

    .line 1068
    :cond_19
    const-wide/16 v52, -0x1

    cmp-long v52, v27, v52

    if-eqz v52, :cond_1a

    .line 1069
    sget-object v52, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v52

    move-wide/from16 v1, v27

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v52

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v53

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const v54, 0x7f04000d

    move-object/from16 v0, v40

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    const-string v54, "M"

    const/16 v55, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/voicedialer/CommandRecognizerEngine;->addCallIntent(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1072
    add-int/lit8 v13, v13, 0x1

    .line 1076
    :cond_1a
    const-wide/16 v52, -0x1

    cmp-long v52, v50, v52

    if-eqz v52, :cond_1b

    .line 1077
    sget-object v52, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v52

    move-wide/from16 v1, v50

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v52

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v53

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const v54, 0x7f04000e

    move-object/from16 v0, v40

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    const-string v54, "W"

    const/16 v55, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/voicedialer/CommandRecognizerEngine;->addCallIntent(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1080
    add-int/lit8 v13, v13, 0x1

    .line 1084
    :cond_1b
    const-wide/16 v52, -0x1

    cmp-long v52, v32, v52

    if-eqz v52, :cond_1c

    .line 1085
    sget-object v52, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v52

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v52

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v53

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const v54, 0x7f04000f

    move-object/from16 v0, v40

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    const-string v54, "O"

    const/16 v55, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v55

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/voicedialer/CommandRecognizerEngine;->addCallIntent(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1088
    add-int/lit8 v13, v13, 0x1

    .line 1094
    .end local v24           #lit:Ljava/lang/String;
    :cond_1c
    if-nez v13, :cond_8

    const-wide/16 v52, -0x1

    cmp-long v52, v11, v52

    if-eqz v52, :cond_8

    goto/16 :goto_1

    .line 1105
    .end local v11           #contactId:J
    .end local v13           #count:I
    .end local v17           #homeId:J
    .end local v27           #mobileId:J
    .end local v32           #otherId:J
    .end local v35           #phoneId:J
    .end local v40           #res:Landroid/content/res/Resources;
    .end local v50           #workId:J
    :cond_1d
    const-string v52, "X"

    const/16 v53, 0x0

    aget-object v53, v6, v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_1e

    .line 1106
    new-instance v21, Landroid/content/Intent;

    const-string v52, "com.android.voicedialer.ACTION_RECOGNIZER_RESULT"

    const/16 v53, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1107
    .local v21, intent:Landroid/content/Intent;
    const-string v52, "sentence"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    const-string v52, "semantic"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/voicedialer/CommandRecognizerEngine;->addIntent(Ljava/util/ArrayList;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1113
    .end local v21           #intent:Landroid/content/Intent;
    :cond_1e
    const-string v52, "voicemail"

    const/16 v53, 0x0

    aget-object v53, v6, v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_1f

    move-object v0, v6

    array-length v0, v0

    move/from16 v52, v0

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_1f

    .line 1114
    const-string v52, "voicemail"

    const-string v53, "x"

    const/16 v54, 0x0

    invoke-static/range {v52 .. v54}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v52

    const-string v53, ""

    const/high16 v54, 0x80

    move-object/from16 v0, v22

    move-object/from16 v1, v52

    move-object/from16 v2, v25

    move-object/from16 v3, v53

    move/from16 v4, v54

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/voicedialer/CommandRecognizerEngine;->addCallIntent(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1119
    :cond_1f
    const-string v52, "redial"

    const/16 v53, 0x0

    aget-object v53, v6, v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_20

    move-object v0, v6

    array-length v0, v0

    move/from16 v52, v0

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_20

    .line 1120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/voicedialer/VoiceContact;->redialNumber(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v31

    .line 1121
    .local v31, number:Ljava/lang/String;
    if-eqz v31, :cond_8

    .line 1122
    const-string v52, "tel"

    const/16 v53, 0x0

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v53

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v52

    const-string v53, ""

    const/high16 v54, 0x80

    move-object/from16 v0, v22

    move-object/from16 v1, v52

    move-object/from16 v2, v25

    move-object/from16 v3, v53

    move/from16 v4, v54

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/voicedialer/CommandRecognizerEngine;->addCallIntent(Ljava/util/ArrayList;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1128
    .end local v31           #number:Ljava/lang/String;
    :cond_20
    const-string v52, "Intent"

    const/16 v53, 0x0

    aget-object v53, v6, v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_22

    .line 1129
    const/16 v19, 0x1

    .restart local v19       #i:I
    :goto_6
    move-object v0, v6

    array-length v0, v0

    move/from16 v52, v0

    move/from16 v0, v19

    move/from16 v1, v52

    if-ge v0, v1, :cond_8

    .line 1131
    :try_start_0
    aget-object v52, v6, v19

    invoke-static/range {v52 .. v52}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    .line 1132
    .restart local v21       #intent:Landroid/content/Intent;
    const-string v52, "sentence"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    if-nez v52, :cond_21

    .line 1133
    const-string v52, "sentence"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1135
    :cond_21
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/voicedialer/CommandRecognizerEngine;->addIntent(Ljava/util/ArrayList;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    .end local v21           #intent:Landroid/content/Intent;
    :goto_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 1136
    :catch_0
    move-exception v52

    move-object/from16 v14, v52

    .line 1138
    .local v14, e:Ljava/net/URISyntaxException;
    const-string v52, "RecognizerEngine"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "onRecognitionSuccess: poorly formed URI in grammar"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1146
    .end local v14           #e:Ljava/net/URISyntaxException;
    .end local v19           #i:I
    :cond_22
    const-string v52, "OPEN"

    const/16 v53, 0x0

    aget-object v53, v6, v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v52

    if-eqz v52, :cond_26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/voicedialer/CommandRecognizerEngine;->mAllowOpenEntries:Z

    move/from16 v52, v0

    if-eqz v52, :cond_26

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v39

    .line 1148
    .local v39, pm:Landroid/content/pm/PackageManager;
    move-object v0, v6

    array-length v0, v0

    move/from16 v52, v0

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-le v0, v1, :cond_23

    const/16 v52, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    move-object/from16 v53, v0

    if-eqz v53, :cond_24

    const/16 v53, 0x1

    :goto_9
    and-int v52, v52, v53

    if-eqz v52, :cond_8

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    move-object/from16 v52, v0

    const/16 v53, 0x1

    aget-object v53, v6, v53

    invoke-virtual/range {v52 .. v53}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 1156
    .local v26, meaning:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v52

    const-string v53, " "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1157
    .local v8, components:[Ljava/lang/String;
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_a
    move-object v0, v8

    array-length v0, v0

    move/from16 v52, v0

    move/from16 v0, v19

    move/from16 v1, v52

    if-ge v0, v1, :cond_8

    .line 1158
    aget-object v7, v8, v19

    .line 1159
    .local v7, component:Ljava/lang/String;
    new-instance v21, Landroid/content/Intent;

    const-string v52, "android.intent.action.MAIN"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1160
    .restart local v21       #intent:Landroid/content/Intent;
    const-string v52, "android.intent.category.VOICE_LAUNCH"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1161
    const/16 v52, 0x0

    const/16 v53, 0x2f

    move-object v0, v7

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v53

    move-object v0, v7

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    .line 1163
    .local v34, packageName:Ljava/lang/String;
    const/16 v52, 0x2f

    move-object v0, v7

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v52

    add-int/lit8 v52, v52, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v53

    move-object v0, v7

    move/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1165
    .local v5, className:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v34

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    const/16 v52, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v21

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v43

    .line 1167
    .local v43, riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v52

    if-eqz v52, :cond_25

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/content/pm/ResolveInfo;

    .line 1168
    .local v42, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1169
    .local v23, label:Ljava/lang/String;
    new-instance v21, Landroid/content/Intent;

    .end local v21           #intent:Landroid/content/Intent;
    const-string v52, "android.intent.action.MAIN"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1170
    .restart local v21       #intent:Landroid/content/Intent;
    const-string v52, "android.intent.category.VOICE_LAUNCH"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1171
    move-object/from16 v0, v21

    move-object/from16 v1, v34

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1172
    const-string v52, "sentence"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, " "

    move-object/from16 v0, v25

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v54

    const/16 v55, 0x0

    aget-object v54, v54, v55

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, " "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1173
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/voicedialer/CommandRecognizerEngine;->addIntent(Ljava/util/ArrayList;Landroid/content/Intent;)V

    goto :goto_b

    .line 1148
    .end local v5           #className:Ljava/lang/String;
    .end local v7           #component:Ljava/lang/String;
    .end local v8           #components:[Ljava/lang/String;
    .end local v19           #i:I
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v21           #intent:Landroid/content/Intent;
    .end local v23           #label:Ljava/lang/String;
    .end local v26           #meaning:Ljava/lang/String;
    .end local v34           #packageName:Ljava/lang/String;
    .end local v42           #ri:Landroid/content/pm/ResolveInfo;
    .end local v43           #riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_23
    const/16 v52, 0x0

    goto/16 :goto_8

    :cond_24
    const/16 v53, 0x0

    goto/16 :goto_9

    .line 1157
    .restart local v5       #className:Ljava/lang/String;
    .restart local v7       #component:Ljava/lang/String;
    .restart local v8       #components:[Ljava/lang/String;
    .restart local v19       #i:I
    .restart local v20       #i$:Ljava/util/Iterator;
    .restart local v21       #intent:Landroid/content/Intent;
    .restart local v26       #meaning:Ljava/lang/String;
    .restart local v34       #packageName:Ljava/lang/String;
    .restart local v43       #riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_25
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_a

    .line 1181
    .end local v5           #className:Ljava/lang/String;
    .end local v7           #component:Ljava/lang/String;
    .end local v8           #components:[Ljava/lang/String;
    .end local v19           #i:I
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v21           #intent:Landroid/content/Intent;
    .end local v26           #meaning:Ljava/lang/String;
    .end local v34           #packageName:Ljava/lang/String;
    .end local v39           #pm:Landroid/content/pm/PackageManager;
    .end local v43           #riList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_26
    const-string v52, "RecognizerEngine"

    const-string v53, "onRecognitionSuccess: parse error"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1191
    .end local v6           #commands:[Ljava/lang/String;
    .end local v9           #conf:Ljava/lang/String;
    .end local v10           #confInt:I
    .end local v25           #literal:Ljava/lang/String;
    .end local v29           #msg:Ljava/lang/String;
    .end local v45           #semantic:Ljava/lang/String;
    :cond_27
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v52

    if-nez v52, :cond_28

    .line 1193
    const-string v52, "No Intents generated"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Lcom/android/voicedialer/RecognizerClient;->onRecognitionFailure(Ljava/lang/String;)V

    .line 1199
    .end local p0
    :goto_c
    return-void

    .line 1196
    .restart local p0
    :cond_28
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v52

    move/from16 v0, v52

    new-array v0, v0, [Landroid/content/Intent;

    move-object/from16 v52, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/content/Intent;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/android/voicedialer/RecognizerClient;->onRecognitionSuccess([Landroid/content/Intent;)V

    goto :goto_c
.end method

.method public setAllowOpenEntries(Z)V
    .locals 2
    .parameter "allowOpenEntries"

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-boolean v0, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mAllowOpenEntries:Z

    if-eq v0, p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    invoke-virtual {v0}, Landroid/speech/srec/Recognizer$Grammar;->destroy()V

    .line 114
    iput-object v1, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    .line 115
    iput-object v1, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    .line 118
    :cond_0
    iput-boolean p1, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mAllowOpenEntries:Z

    .line 119
    return-void
.end method

.method public setContactsFile(Ljava/io/File;)V
    .locals 2
    .parameter "contactsFile"

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mContactsFile:Ljava/io/File;

    if-eq p1, v0, :cond_0

    .line 95
    iput-object p1, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mContactsFile:Ljava/io/File;

    .line 97
    iget-object v0, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    invoke-virtual {v0}, Landroid/speech/srec/Recognizer$Grammar;->destroy()V

    .line 99
    iput-object v1, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    .line 100
    iput-object v1, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    .line 103
    :cond_0
    return-void
.end method

.method public setMinimizeResults(Z)V
    .locals 0
    .parameter "minimizeResults"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mMinimizeResults:Z

    .line 107
    return-void
.end method

.method protected setupGrammar()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-string v6, "RecognizerEngine"

    .line 123
    const-string v2, "RecognizerEngine"

    const-string v2, "start getVoiceContacts"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v2, "RecognizerEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contactsFile is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mContactsFile:Ljava/io/File;

    if-nez v3, :cond_5

    const-string v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v2, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mContactsFile:Ljava/io/File;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mContactsFile:Ljava/io/File;

    invoke-static {v2}, Lcom/android/voicedialer/VoiceContact;->getVoiceContactsFromFile(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .line 131
    .local v0, contacts:Ljava/util/List;,"Ljava/util/List<Lcom/android/voicedialer/VoiceContact;>;"
    :goto_1
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    invoke-virtual {v2, v0}, Lcom/android/voicedialer/RecognizerLogger;->logContacts(Ljava/util/List;)V

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voicedialer."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".g2g"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 137
    .local v1, g2g:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    .line 139
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/voicedialer/CommandRecognizerEngine;->deleteAllG2GFiles(Landroid/content/Context;)V

    .line 140
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    invoke-virtual {v2}, Landroid/speech/srec/Recognizer$Grammar;->destroy()V

    .line 142
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    .line 146
    :cond_1
    const-string v2, "RecognizerEngine"

    const-string v2, "start new Grammar"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v2, Landroid/speech/srec/Recognizer$Grammar;

    iget-object v3, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/voicedialer/RecognizerEngine;->SREC_DIR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/grammars/VoiceDialer.g2g"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/speech/srec/Recognizer$Grammar;-><init>(Landroid/speech/srec/Recognizer;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    .line 148
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    invoke-virtual {v2}, Landroid/speech/srec/Recognizer$Grammar;->setupRecognizer()V

    .line 151
    const-string v2, "RecognizerEngine"

    const-string v2, "start grammar.resetAllSlots"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    invoke-virtual {v2}, Landroid/speech/srec/Recognizer$Grammar;->resetAllSlots()V

    .line 155
    invoke-direct {p0, v0}, Lcom/android/voicedialer/CommandRecognizerEngine;->addNameEntriesToGrammar(Ljava/util/List;)V

    .line 157
    iget-boolean v2, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mAllowOpenEntries:Z

    if-eqz v2, :cond_2

    .line 159
    invoke-direct {p0}, Lcom/android/voicedialer/CommandRecognizerEngine;->addOpenEntriesToGrammar()V

    .line 163
    :cond_2
    const-string v2, "RecognizerEngine"

    const-string v2, "start grammar.compile"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    invoke-virtual {v2}, Landroid/speech/srec/Recognizer$Grammar;->compile()V

    .line 167
    const-string v2, "RecognizerEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start grammar.save "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 169
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/speech/srec/Recognizer$Grammar;->save(Ljava/lang/String;)V

    .line 178
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mOpenEntries:Ljava/util/HashMap;

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/voicedialer/CommandRecognizerEngine;->mAllowOpenEntries:Z

    if-eqz v2, :cond_4

    .line 180
    invoke-direct {p0}, Lcom/android/voicedialer/CommandRecognizerEngine;->loadOpenEntriesTable()V

    .line 183
    :cond_4
    return-void

    .line 124
    .end local v0           #contacts:Ljava/util/List;,"Ljava/util/List<Lcom/android/voicedialer/VoiceContact;>;"
    .end local v1           #g2g:Ljava/io/File;
    :cond_5
    const-string v3, "not null"

    goto/16 :goto_0

    .line 126
    :cond_6
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/voicedialer/VoiceContact;->getVoiceContacts(Landroid/app/Activity;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_1

    .line 173
    .restart local v0       #contacts:Ljava/util/List;,"Ljava/util/List<Lcom/android/voicedialer/VoiceContact;>;"
    .restart local v1       #g2g:Ljava/io/File;
    :cond_7
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    if-nez v2, :cond_3

    .line 174
    const-string v2, "RecognizerEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start new Grammar loading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v2, Landroid/speech/srec/Recognizer$Grammar;

    iget-object v3, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/speech/srec/Recognizer$Grammar;-><init>(Landroid/speech/srec/Recognizer;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    .line 176
    iget-object v2, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    invoke-virtual {v2}, Landroid/speech/srec/Recognizer$Grammar;->setupRecognizer()V

    goto :goto_2
.end method
