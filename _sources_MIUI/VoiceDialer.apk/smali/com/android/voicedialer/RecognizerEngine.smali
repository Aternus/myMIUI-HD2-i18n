.class public abstract Lcom/android/voicedialer/RecognizerEngine;
.super Ljava/lang/Object;
.source "RecognizerEngine.java"


# instance fields
.field protected final SREC_DIR:Ljava/lang/String;

.field protected mActivity:Landroid/app/Activity;

.field protected mLogger:Lcom/android/voicedialer/RecognizerLogger;

.field protected mSampleRate:I

.field protected mSrec:Landroid/speech/srec/Recognizer;

.field protected mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/speech/srec/Recognizer;->getConfigDir(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/voicedialer/RecognizerEngine;->SREC_DIR:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/voicedialer/RecognizerEngine;->mSampleRate:I

    .line 86
    return-void
.end method

.method protected static addIntent(Ljava/util/ArrayList;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, intents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 235
    .local v1, in:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    .end local v1           #in:Landroid/content/Intent;
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected abstract onRecognitionSuccess(Lcom/android/voicedialer/RecognizerClient;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public recognize(Lcom/android/voicedialer/RecognizerClient;Landroid/app/Activity;Ljava/io/File;I)V
    .locals 15
    .parameter "recognizerClient"
    .parameter "activity"
    .parameter "micFile"
    .parameter "sampleRate"

    .prologue
    .line 115
    const/4 v7, 0x0

    .line 116
    .local v7, mic:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 118
    .local v10, recognizerStarted:Z
    :try_start_0
    move-object/from16 v0, p2

    move-object v1, p0

    iput-object v0, v1, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    .line 120
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    .line 121
    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    invoke-static {v11}, Lcom/android/voicedialer/RecognizerLogger;->isEnabled(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 122
    new-instance v11, Lcom/android/voicedialer/RecognizerLogger;

    iget-object v12, p0, Lcom/android/voicedialer/RecognizerEngine;->mActivity:Landroid/app/Activity;

    invoke-direct {v11, v12}, Lcom/android/voicedialer/RecognizerLogger;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    .line 125
    :cond_0
    iget v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mSampleRate:I

    move v0, v11

    move/from16 v1, p4

    if-eq v0, v1, :cond_2

    .line 128
    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    if-eqz v11, :cond_1

    .line 129
    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    invoke-virtual {v11}, Landroid/speech/srec/Recognizer$Grammar;->destroy()V

    .line 131
    :cond_1
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrecGrammar:Landroid/speech/srec/Recognizer$Grammar;

    .line 132
    move/from16 v0, p4

    move-object v1, p0

    iput v0, v1, Lcom/android/voicedialer/RecognizerEngine;->mSampleRate:I

    .line 136
    :cond_2
    const-string v11, "RecognizerEngine"

    const-string v12, "start new Recognizer"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    if-nez v11, :cond_4

    .line 138
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/voicedialer/RecognizerEngine;->SREC_DIR:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/baseline11k.par"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 139
    .local v9, parFilePath:Ljava/lang/String;
    const/16 v11, 0x1f40

    move/from16 v0, p4

    move v1, v11

    if-ne v0, v1, :cond_3

    .line 140
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/voicedialer/RecognizerEngine;->SREC_DIR:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/baseline8k.par"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 142
    :cond_3
    new-instance v11, Landroid/speech/srec/Recognizer;

    invoke-direct {v11, v9}, Landroid/speech/srec/Recognizer;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    .line 146
    .end local v9           #parFilePath:Ljava/lang/String;
    :cond_4
    if-eqz p3, :cond_9

    .line 147
    const-string v11, "RecognizerEngine"

    const-string v12, "using mic file"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v8, Ljava/io/FileInputStream;

    move-object v0, v8

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 149
    .end local v7           #mic:Ljava/io/InputStream;
    .local v8, mic:Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Landroid/speech/srec/WaveHeader;

    invoke-direct {v6}, Landroid/speech/srec/WaveHeader;-><init>()V

    .line 150
    .local v6, hdr:Landroid/speech/srec/WaveHeader;
    invoke-virtual {v6, v8}, Landroid/speech/srec/WaveHeader;->read(Ljava/io/InputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d

    move-object v7, v8

    .line 157
    .end local v6           #hdr:Landroid/speech/srec/WaveHeader;
    .end local v8           #mic:Ljava/io/InputStream;
    .restart local v7       #mic:Ljava/io/InputStream;
    :goto_0
    :try_start_2
    move-object/from16 v0, p1

    move-object v1, v7

    invoke-interface {v0, v1}, Lcom/android/voicedialer/RecognizerClient;->onMicrophoneStart(Ljava/io/InputStream;)V

    .line 160
    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    move-object v0, v11

    move-object v1, v7

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/voicedialer/RecognizerLogger;->logInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object v7

    .line 162
    :cond_5
    invoke-virtual {p0}, Lcom/android/voicedialer/RecognizerEngine;->setupGrammar()V

    .line 165
    const-string v11, "RecognizerEngine"

    const-string v12, "start mSrec.start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v11}, Landroid/speech/srec/Recognizer;->start()V

    .line 167
    const/4 v10, 0x1

    .line 171
    :goto_1
    :pswitch_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v11

    if-eqz v11, :cond_a

    new-instance v11, Ljava/lang/InterruptedException;

    invoke-direct {v11}, Ljava/lang/InterruptedException;-><init>()V

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 199
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 200
    .local v3, e:Ljava/lang/InterruptedException;
    :goto_2
    :try_start_3
    const-string v11, "RecognizerEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start interrupted "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-interface {v0, v1}, Lcom/android/voicedialer/RecognizerClient;->onRecognitionError(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    const-string v11, "RecognizerEngine"

    const-string v12, "start mSrec.stop"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    if-eqz v11, :cond_6

    if-eqz v10, :cond_6

    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v11}, Landroid/speech/srec/Recognizer;->stop()V

    .line 214
    :cond_6
    if-eqz v7, :cond_7

    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 219
    :cond_7
    :goto_3
    const/4 v7, 0x0

    .line 223
    :try_start_5
    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    invoke-virtual {v11}, Lcom/android/voicedialer/RecognizerLogger;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 228
    .end local v3           #e:Ljava/lang/InterruptedException;
    :cond_8
    :goto_4
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    .line 230
    const-string v11, "RecognizerEngine"

    const-string v12, "start bye"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void

    .line 152
    :cond_9
    :try_start_6
    const-string v11, "RecognizerEngine"

    const-string v12, "start new MicrophoneInputStream"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v8, Landroid/speech/srec/MicrophoneInputStream;

    mul-int/lit8 v11, p4, 0xf

    move-object v0, v8

    move/from16 v1, p4

    move v2, v11

    invoke-direct {v0, v1, v2}, Landroid/speech/srec/MicrophoneInputStream;-><init>(II)V

    .end local v7           #mic:Ljava/io/InputStream;
    .restart local v8       #mic:Ljava/io/InputStream;
    move-object v7, v8

    .end local v8           #mic:Ljava/io/InputStream;
    .restart local v7       #mic:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 172
    :cond_a
    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v11}, Landroid/speech/srec/Recognizer;->advance()I

    move-result v4

    .line 173
    .local v4, event:I
    const/4 v11, 0x2

    if-eq v4, v11, :cond_b

    const/16 v11, 0xb

    if-eq v4, v11, :cond_b

    .line 175
    const-string v11, "RecognizerEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start advance()="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v4}, Landroid/speech/srec/Recognizer;->eventToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " avail "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_b
    packed-switch v4, :pswitch_data_0

    .line 192
    :pswitch_1
    const-string v11, "RecognizerEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unknown event "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {v4}, Landroid/speech/srec/Recognizer;->eventToString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-interface {v0, v1}, Lcom/android/voicedialer/RecognizerClient;->onRecognitionFailure(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 209
    :goto_5
    const-string v11, "RecognizerEngine"

    const-string v12, "start mSrec.stop"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    if-eqz v11, :cond_c

    if-eqz v10, :cond_c

    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v11}, Landroid/speech/srec/Recognizer;->stop()V

    .line 214
    :cond_c
    if-eqz v7, :cond_d

    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c

    .line 219
    :cond_d
    :goto_6
    const/4 v7, 0x0

    .line 223
    :try_start_8
    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    invoke-virtual {v11}, Lcom/android/voicedialer/RecognizerLogger;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_4

    .line 225
    :catch_1
    move-exception v11

    move-object v5, v11

    .line 226
    .local v5, ex:Ljava/io/IOException;
    const-string v11, "RecognizerEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start - mLoggger.close failed - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 186
    .end local v5           #ex:Ljava/io/IOException;
    :pswitch_2
    :try_start_9
    invoke-virtual/range {p0 .. p1}, Lcom/android/voicedialer/RecognizerEngine;->onRecognitionSuccess(Lcom/android/voicedialer/RecognizerClient;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_5

    .line 202
    .end local v4           #event:I
    :catch_2
    move-exception v11

    move-object v3, v11

    .line 203
    .local v3, e:Ljava/io/IOException;
    :goto_7
    :try_start_a
    const-string v11, "RecognizerEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start new Srec failed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-interface {v0, v1}, Lcom/android/voicedialer/RecognizerClient;->onRecognitionError(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 209
    const-string v11, "RecognizerEngine"

    const-string v12, "start mSrec.stop"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    if-eqz v11, :cond_e

    if-eqz v10, :cond_e

    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v11}, Landroid/speech/srec/Recognizer;->stop()V

    .line 214
    :cond_e
    if-eqz v7, :cond_f

    :try_start_b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    .line 219
    :cond_f
    :goto_8
    const/4 v7, 0x0

    .line 223
    :try_start_c
    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    invoke-virtual {v11}, Lcom/android/voicedialer/RecognizerLogger;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_4

    .line 225
    :catch_3
    move-exception v11

    move-object v5, v11

    .line 226
    .restart local v5       #ex:Ljava/io/IOException;
    const-string v11, "RecognizerEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start - mLoggger.close failed - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 189
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #ex:Ljava/io/IOException;
    .restart local v4       #event:I
    :pswitch_3
    :try_start_d
    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v11, v7}, Landroid/speech/srec/Recognizer;->putAudio(Ljava/io/InputStream;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_1

    .line 205
    .end local v4           #event:I
    :catch_4
    move-exception v11

    move-object v3, v11

    .line 206
    .local v3, e:Ljava/lang/Exception;
    :goto_9
    :try_start_e
    const-string v11, "RecognizerEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exception "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-interface {v0, v1}, Lcom/android/voicedialer/RecognizerClient;->onRecognitionError(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 209
    const-string v11, "RecognizerEngine"

    const-string v12, "start mSrec.stop"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    if-eqz v11, :cond_10

    if-eqz v10, :cond_10

    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v11}, Landroid/speech/srec/Recognizer;->stop()V

    .line 214
    :cond_10
    if-eqz v7, :cond_11

    :try_start_f
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 219
    :cond_11
    :goto_a
    const/4 v7, 0x0

    .line 223
    :try_start_10
    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    invoke-virtual {v11}, Lcom/android/voicedialer/RecognizerLogger;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_4

    .line 225
    :catch_5
    move-exception v11

    move-object v5, v11

    .line 226
    .restart local v5       #ex:Ljava/io/IOException;
    const-string v11, "RecognizerEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start - mLoggger.close failed - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 209
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_b
    const-string v12, "RecognizerEngine"

    const-string v13, "start mSrec.stop"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v12, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    if-eqz v12, :cond_12

    if-eqz v10, :cond_12

    iget-object v12, p0, Lcom/android/voicedialer/RecognizerEngine;->mSrec:Landroid/speech/srec/Recognizer;

    invoke-virtual {v12}, Landroid/speech/srec/Recognizer;->stop()V

    .line 214
    :cond_12
    if-eqz v7, :cond_13

    :try_start_11
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    .line 219
    :cond_13
    :goto_c
    const/4 v7, 0x0

    .line 223
    :try_start_12
    iget-object v12, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    if-eqz v12, :cond_14

    iget-object v12, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    invoke-virtual {v12}, Lcom/android/voicedialer/RecognizerLogger;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    .line 228
    :cond_14
    :goto_d
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/voicedialer/RecognizerEngine;->mLogger:Lcom/android/voicedialer/RecognizerLogger;

    .line 209
    throw v11

    .line 216
    :catch_6
    move-exception v5

    .line 217
    .restart local v5       #ex:Ljava/io/IOException;
    const-string v12, "RecognizerEngine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "start - mic.close failed - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 225
    .end local v5           #ex:Ljava/io/IOException;
    :catch_7
    move-exception v12

    move-object v5, v12

    .line 226
    .restart local v5       #ex:Ljava/io/IOException;
    const-string v12, "RecognizerEngine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "start - mLoggger.close failed - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 216
    .end local v5           #ex:Ljava/io/IOException;
    .local v3, e:Ljava/lang/InterruptedException;
    :catch_8
    move-exception v5

    .line 217
    .restart local v5       #ex:Ljava/io/IOException;
    const-string v11, "RecognizerEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start - mic.close failed - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 225
    .end local v5           #ex:Ljava/io/IOException;
    :catch_9
    move-exception v11

    move-object v5, v11

    .line 226
    .restart local v5       #ex:Ljava/io/IOException;
    const-string v11, "RecognizerEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start - mLoggger.close failed - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 216
    .end local v5           #ex:Ljava/io/IOException;
    .local v3, e:Ljava/io/IOException;
    :catch_a
    move-exception v5

    .line 217
    .restart local v5       #ex:Ljava/io/IOException;
    const-string v11, "RecognizerEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start - mic.close failed - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 216
    .end local v5           #ex:Ljava/io/IOException;
    .local v3, e:Ljava/lang/Exception;
    :catch_b
    move-exception v5

    .line 217
    .restart local v5       #ex:Ljava/io/IOException;
    const-string v11, "RecognizerEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start - mic.close failed - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 216
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #ex:Ljava/io/IOException;
    .restart local v4       #event:I
    :catch_c
    move-exception v5

    .line 217
    .restart local v5       #ex:Ljava/io/IOException;
    const-string v11, "RecognizerEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start - mic.close failed - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 209
    .end local v4           #event:I
    .end local v5           #ex:Ljava/io/IOException;
    .end local v7           #mic:Ljava/io/InputStream;
    .restart local v8       #mic:Ljava/io/InputStream;
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8           #mic:Ljava/io/InputStream;
    .restart local v7       #mic:Ljava/io/InputStream;
    goto/16 :goto_b

    .line 205
    .end local v7           #mic:Ljava/io/InputStream;
    .restart local v8       #mic:Ljava/io/InputStream;
    :catch_d
    move-exception v11

    move-object v3, v11

    move-object v7, v8

    .end local v8           #mic:Ljava/io/InputStream;
    .restart local v7       #mic:Ljava/io/InputStream;
    goto/16 :goto_9

    .line 202
    .end local v7           #mic:Ljava/io/InputStream;
    .restart local v8       #mic:Ljava/io/InputStream;
    :catch_e
    move-exception v11

    move-object v3, v11

    move-object v7, v8

    .end local v8           #mic:Ljava/io/InputStream;
    .restart local v7       #mic:Ljava/io/InputStream;
    goto/16 :goto_7

    .line 199
    .end local v7           #mic:Ljava/io/InputStream;
    .restart local v8       #mic:Ljava/io/InputStream;
    :catch_f
    move-exception v11

    move-object v3, v11

    move-object v7, v8

    .end local v8           #mic:Ljava/io/InputStream;
    .restart local v7       #mic:Ljava/io/InputStream;
    goto/16 :goto_2

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract setupGrammar()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
