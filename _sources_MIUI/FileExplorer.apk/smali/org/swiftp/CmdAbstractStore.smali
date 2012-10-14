.class public abstract Lorg/swiftp/CmdAbstractStore;
.super Lorg/swiftp/FtpCmd;
.source "CmdAbstractStore.java"


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    const-class v0, Lorg/swiftp/CmdAbstractStore;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/FtpCmd;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public doStorOrAppe(Ljava/lang/String;Z)V
    .locals 25
    .parameter "param"
    .parameter "append"

    .prologue
    .line 43
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/FtpCmd;->myLog:Lorg/swiftp/MyLog;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "STOR/APPE executing with append="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 44
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/swiftp/SessionThread;->getWorkingDir()Ljava/io/File;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/swiftp/CmdAbstractStore;->inputPathToChrootedFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    .line 46
    .local v19, storeFile:Ljava/io/File;
    const/4 v11, 0x0

    .line 47
    .local v11, errString:Ljava/lang/String;
    const/16 v16, 0x0

    .line 53
    .local v16, out:Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/swiftp/CmdAbstractStore;->violatesChroot(Ljava/io/File;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 54
    const-string v11, "550 Invalid name or chroot violation\r\n"

    .line 195
    :goto_0
    if-eqz v16, :cond_0

    .line 196
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 200
    :cond_0
    :goto_1
    if-eqz v11, :cond_c

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/FtpCmd;->myLog:Lorg/swiftp/MyLog;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "STOR error: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 209
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/swiftp/SessionThread;->closeDataSocket()V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/FtpCmd;->myLog:Lorg/swiftp/MyLog;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    const-string v23, "STOR finished"

    invoke-virtual/range {v21 .. v23}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 211
    return-void

    .line 57
    :cond_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isDirectory()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 58
    const-string v11, "451 Can\'t overwrite a directory\r\n"

    .line 59
    goto :goto_0

    .line 63
    :cond_2
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 64
    if-nez p2, :cond_4

    .line 65
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    move-result v21

    if-nez v21, :cond_3

    .line 66
    const-string v11, "451 Couldn\'t truncate file\r\n"

    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/swiftp/Util;->deletedFileNotify(Ljava/lang/String;)V

    .line 73
    :cond_4
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    .end local v16           #out:Ljava/io/FileOutputStream;
    .local v17, out:Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/swiftp/SessionThread;->startUsingDataSocket()Z

    move-result v21

    if-nez v21, :cond_5

    .line 84
    const-string v11, "425 Couldn\'t open data socket\r\n"

    move-object/from16 v16, v17

    .line 85
    .end local v17           #out:Ljava/io/FileOutputStream;
    .restart local v16       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 74
    :catch_0
    move-exception v21

    move-object/from16 v8, v21

    .line 76
    .local v8, e:Ljava/io/FileNotFoundException;
    :try_start_2
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "451 Couldn\'t open file \""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\" aka \""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\" for writing\r\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    goto/16 :goto_0

    .line 78
    :catch_1
    move-exception v21

    move-object/from16 v13, v21

    .line 79
    .local v13, io_e:Ljava/io/IOException;
    const-string v11, "451 Couldn\'t open file, nested exception\r\n"

    goto/16 :goto_0

    .line 87
    .end local v8           #e:Ljava/io/FileNotFoundException;
    .end local v13           #io_e:Ljava/io/IOException;
    .end local v16           #out:Ljava/io/FileOutputStream;
    .restart local v17       #out:Ljava/io/FileOutputStream;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/FtpCmd;->myLog:Lorg/swiftp/MyLog;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    const-string v23, "Data socket ready"

    invoke-virtual/range {v21 .. v23}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    move-object/from16 v21, v0

    const-string v22, "150 Data socket ready\r\n"

    invoke-virtual/range {v21 .. v22}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lorg/swiftp/Defaults;->getDataChunkSize()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object v5, v0

    .line 97
    .local v5, buffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/swiftp/SessionThread;->isBinaryMode()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/FtpCmd;->myLog:Lorg/swiftp/MyLog;

    move-object/from16 v21, v0

    const-string v22, "Mode is binary"

    invoke-virtual/range {v21 .. v22}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 102
    :goto_3
    const/4 v7, 0x0

    .line 103
    .local v7, bytesSinceReopen:I
    const/4 v6, 0x0

    .line 109
    .local v6, bytesSinceFlush:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/swiftp/SessionThread;->receiveFromDataSocket([B)I

    move-result v15

    .local v15, numRead:I
    packed-switch v15, :pswitch_data_0

    .line 125
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/swiftp/SessionThread;->isBinaryMode()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 126
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object v1, v5

    move/from16 v2, v21

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 168
    :cond_6
    :goto_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 170
    :catch_2
    move-exception v21

    move-object/from16 v8, v21

    .line 171
    .local v8, e:Ljava/io/IOException;
    const-string v11, "451 File IO problem. Device might be full.\r\n"

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/FtpCmd;->myLog:Lorg/swiftp/MyLog;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception while storing: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/FtpCmd;->myLog:Lorg/swiftp/MyLog;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Message: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/FtpCmd;->myLog:Lorg/swiftp/MyLog;

    move-object/from16 v21, v0

    const-string v22, "Stack trace: "

    invoke-virtual/range {v21 .. v22}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v8}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v20

    .line 176
    .local v20, traceElems:[Ljava/lang/StackTraceElement;
    move-object/from16 v4, v20

    .local v4, arr$:[Ljava/lang/StackTraceElement;
    array-length v14, v4

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_6
    if-ge v12, v14, :cond_b

    aget-object v9, v4, v12

    .line 177
    .local v9, elem:Ljava/lang/StackTraceElement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/FtpCmd;->myLog:Lorg/swiftp/MyLog;

    move-object/from16 v21, v0

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    .line 176
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 100
    .end local v4           #arr$:[Ljava/lang/StackTraceElement;
    .end local v6           #bytesSinceFlush:I
    .end local v7           #bytesSinceReopen:I
    .end local v8           #e:Ljava/io/IOException;
    .end local v9           #elem:Ljava/lang/StackTraceElement;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .end local v15           #numRead:I
    .end local v20           #traceElems:[Ljava/lang/StackTraceElement;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/FtpCmd;->myLog:Lorg/swiftp/MyLog;

    move-object/from16 v21, v0

    const-string v22, "Mode is ascii"

    invoke-virtual/range {v21 .. v22}, Lorg/swiftp/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 111
    .restart local v6       #bytesSinceFlush:I
    .restart local v7       #bytesSinceReopen:I
    .restart local v15       #numRead:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/FtpCmd;->myLog:Lorg/swiftp/MyLog;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    const-string v23, "Returned from final read"

    invoke-virtual/range {v21 .. v23}, Lorg/swiftp/MyLog;->l(ILjava/lang/String;)V

    move-object/from16 v16, v17

    .line 113
    .end local v17           #out:Ljava/io/FileOutputStream;
    .restart local v16       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 115
    .end local v16           #out:Ljava/io/FileOutputStream;
    .restart local v17       #out:Ljava/io/FileOutputStream;
    :pswitch_1
    const-string v11, "426 Couldn\'t receive data\r\n"

    move-object/from16 v16, v17

    .line 116
    .end local v17           #out:Ljava/io/FileOutputStream;
    .restart local v16       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 118
    .end local v16           #out:Ljava/io/FileOutputStream;
    .restart local v17       #out:Ljava/io/FileOutputStream;
    :pswitch_2
    const-string v11, "425 Could not connect data socket\r\n"

    move-object/from16 v16, v17

    .line 119
    .end local v17           #out:Ljava/io/FileOutputStream;
    .restart local v16       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 129
    .end local v16           #out:Ljava/io/FileOutputStream;
    .restart local v17       #out:Ljava/io/FileOutputStream;
    :cond_8
    const/16 v18, 0x0

    .line 130
    .local v18, startPos:I
    const/4 v10, 0x0

    .local v10, endPos:I
    :goto_7
    if-ge v10, v15, :cond_a

    .line 131
    :try_start_4
    aget-byte v21, v5, v10

    const/16 v22, 0xd

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 133
    sub-int v21, v10, v18

    move-object/from16 v0, v17

    move-object v1, v5

    move/from16 v2, v18

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 134
    add-int/lit8 v18, v10, 0x1

    .line 130
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 139
    :cond_a
    move/from16 v0, v18

    move v1, v15

    if-ge v0, v1, :cond_6

    .line 140
    sub-int v21, v10, v18

    move-object/from16 v0, v17

    move-object v1, v5

    move/from16 v2, v18

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_5

    .end local v10           #endPos:I
    .end local v18           #startPos:I
    .restart local v4       #arr$:[Ljava/lang/StackTraceElement;
    .restart local v8       #e:Ljava/io/IOException;
    .restart local v12       #i$:I
    .restart local v14       #len$:I
    .restart local v20       #traceElems:[Ljava/lang/StackTraceElement;
    :cond_b
    move-object/from16 v16, v17

    .line 179
    .end local v17           #out:Ljava/io/FileOutputStream;
    .restart local v16       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 204
    .end local v4           #arr$:[Ljava/lang/StackTraceElement;
    .end local v5           #buffer:[B
    .end local v6           #bytesSinceFlush:I
    .end local v7           #bytesSinceReopen:I
    .end local v8           #e:Ljava/io/IOException;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .end local v15           #numRead:I
    .end local v20           #traceElems:[Ljava/lang/StackTraceElement;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/swiftp/FtpCmd;->sessionThread:Lorg/swiftp/SessionThread;

    move-object/from16 v21, v0

    const-string v22, "226 Transmission complete\r\n"

    invoke-virtual/range {v21 .. v22}, Lorg/swiftp/SessionThread;->writeString(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/swiftp/Util;->newFileNotify(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 198
    :catch_3
    move-exception v21

    goto/16 :goto_1

    .line 109
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
