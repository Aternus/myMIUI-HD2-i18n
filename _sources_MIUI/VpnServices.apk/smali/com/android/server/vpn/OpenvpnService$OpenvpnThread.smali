.class Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;
.super Ljava/lang/Thread;
.source "OpenvpnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vpn/OpenvpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenvpnThread"
.end annotation


# instance fields
.field SFbool:Z

.field volatile SFreason:Ljava/lang/String;

.field disconnecting:Z

.field finalDisconnect:Z

.field firstConnect:Z

.field in:Ljava/io/InputStream;

.field mSocket:Landroid/net/LocalSocket;

.field out:Ljava/io/OutputStream;

.field passwordError:Z

.field final synthetic this$0:Lcom/android/server/vpn/OpenvpnService;

.field vpnState:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/vpn/OpenvpnService;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 193
    iput-object p1, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->this$0:Lcom/android/server/vpn/OpenvpnService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 179
    iput-boolean v0, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->finalDisconnect:Z

    .line 181
    iput-boolean v0, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->firstConnect:Z

    .line 183
    iput-boolean v0, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->disconnecting:Z

    .line 185
    iput-boolean v0, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->passwordError:Z

    .line 191
    const-string v0, "WAIT"

    iput-object v0, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->vpnState:Ljava/lang/String;

    .line 194
    invoke-direct {p0}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->openSocket()V

    .line 195
    iget-object v0, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->in:Ljava/io/InputStream;

    .line 196
    iget-object v0, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->out:Ljava/io/OutputStream;

    .line 197
    return-void
.end method

.method private isConnected()Z
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->vpnState:Ljava/lang/String;

    const-string v1, "CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private openSocket()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v5, Landroid/net/LocalSocket;

    invoke-direct {v5}, Landroid/net/LocalSocket;-><init>()V

    .line 242
    .local v5, s:Landroid/net/LocalSocket;
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v6, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->this$0:Lcom/android/server/vpn/OpenvpnService;

    #getter for: Lcom/android/server/vpn/OpenvpnService;->socketName:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/vpn/OpenvpnService;->access$000(Lcom/android/server/vpn/OpenvpnService;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v6, v7}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 244
    .local v0, a:Landroid/net/LocalSocketAddress;
    const/4 v3, 0x0

    .line 245
    .local v3, excp:Ljava/io/IOException;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    const/16 v6, 0xa

    if-ge v4, v6, :cond_0

    .line 247
    :try_start_0
    invoke-virtual {v5, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 248
    iput-object v5, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->mSocket:Landroid/net/LocalSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    return-void

    .line 250
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 251
    .local v1, e:Ljava/io/IOException;
    move-object v3, v1

    .line 253
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 254
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 255
    .local v2, ex:Ljava/lang/InterruptedException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 259
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #ex:Ljava/lang/InterruptedException;
    :cond_0
    throw v3
.end method

.method private parseLine(Ljava/lang/String;)V
    .locals 6
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 372
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 373
    .local v1, index:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, token:Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, body:Ljava/lang/String;
    const-string v3, ">INFO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 382
    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 383
    const/4 v3, 0x1

    invoke-direct {p0, v3, v0}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->signalSuccessOrFail(ZLjava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_2
    const-string v3, "ERROR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 385
    invoke-direct {p0, v4, v0}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->signalSuccessOrFail(ZLjava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_3
    const-string v3, ">STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 387
    invoke-direct {p0, v0}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->signalState(Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_4
    const-string v3, ">FATAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXITING,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->signalState(Ljava/lang/String;)V

    goto :goto_0

    .line 390
    :cond_5
    const-string v3, ">PASSWORD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 391
    invoke-direct {p0, v0}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->signalPassword(Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_6
    const-string v3, ">LOG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 393
    invoke-direct {p0, v0}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->signalLog(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_7
    const-string v3, ">HOLD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 396
    const-string v3, ">BYTECOUNT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 397
    invoke-direct {p0, v0}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->signalBytecount(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 399
    :cond_8
    invoke-static {}, Lcom/android/server/vpn/OpenvpnService;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown control token:\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private send(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->sendAsync(Ljava/lang/String;)V

    .line 288
    invoke-direct {p0}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->waitForSuccessOrFail()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized sendAsync(Ljava/lang/String;)V
    .locals 2
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 282
    iget-object v0, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 283
    iget-object v0, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private signalBytecount(Ljava/lang/String;)V
    .locals 8
    .parameter "s"

    .prologue
    .line 349
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 350
    .local v1, index:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 357
    :goto_0
    return-void

    .line 354
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, in:Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, out:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->this$0:Lcom/android/server/vpn/OpenvpnService;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/vpn/OpenvpnService;->vpnStateUpdate(JJ)V

    goto :goto_0
.end method

.method private signalLog(Ljava/lang/String;)V
    .locals 6
    .parameter "s"

    .prologue
    const/16 v5, 0x2c

    const/4 v4, -0x1

    .line 361
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 362
    .local v0, first:I
    if-ne v0, v4, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 365
    .local v2, second:I
    if-eq v2, v4, :cond_0

    .line 367
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, message:Ljava/lang/String;
    const-string v3, "openvpn"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized signalPassword(Ljava/lang/String;)V
    .locals 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "\' \'"

    const-string v3, "\'"

    .line 324
    monitor-enter p0

    const/16 v3, 0x27

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 325
    .local v1, first:I
    const/16 v3, 0x27

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 326
    .local v2, second:I
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, authType:Ljava/lang/String;
    const-string v3, "Need"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "username \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->this$0:Lcom/android/server/vpn/OpenvpnService;

    #getter for: Lcom/android/server/vpn/OpenvpnService;->mUsername:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/vpn/OpenvpnService;->access$100(Lcom/android/server/vpn/OpenvpnService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->sendAsync(Ljava/lang/String;)V

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "password \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->this$0:Lcom/android/server/vpn/OpenvpnService;

    #getter for: Lcom/android/server/vpn/OpenvpnService;->mPassword:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/vpn/OpenvpnService;->access$200(Lcom/android/server/vpn/OpenvpnService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->sendAsync(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :goto_0
    monitor-exit p0

    return-void

    .line 343
    :cond_0
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->passwordError:Z

    .line 344
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 324
    .end local v0           #authType:Ljava/lang/String;
    .end local v1           #first:I
    .end local v2           #second:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized signalState(Ljava/lang/String;)V
    .locals 6
    .parameter "s"

    .prologue
    const/4 v5, -0x1

    .line 293
    monitor-enter p0

    const/16 v3, 0x2c

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 294
    .local v0, first:I
    if-ne v0, v5, :cond_1

    .line 316
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 296
    :cond_1
    const/16 v3, 0x2c

    add-int/lit8 v4, v0, 0x1

    :try_start_1
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 297
    .local v1, second:I
    if-eq v1, v5, :cond_0

    .line 299
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, state:Ljava/lang/String;
    iput-object v2, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->vpnState:Ljava/lang/String;

    .line 313
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 314
    const-string v3, "EXITING"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->firstConnect:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->disconnecting:Z

    if-nez v3, :cond_0

    .line 315
    iget-object v3, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->this$0:Lcom/android/server/vpn/OpenvpnService;

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Connection Closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/vpn/OpenvpnService;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 293
    .end local v0           #first:I
    .end local v1           #second:I
    .end local v2           #state:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized signalSuccessOrFail(ZLjava/lang/String;)V
    .locals 1
    .parameter "success"
    .parameter "reason"

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->SFbool:Z

    .line 276
    iput-object p2, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->SFreason:Ljava/lang/String;

    .line 277
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    monitor-exit p0

    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized waitForSuccessOrFail()Z
    .locals 2

    .prologue
    .line 263
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->SFreason:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->SFreason:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 266
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 270
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    .end local v0           #e:Ljava/lang/InterruptedException;
    :goto_1
    monitor-exit p0

    return v1

    .line 268
    :cond_0
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->SFbool:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 263
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized disconnectAndWait()V
    .locals 1

    .prologue
    .line 210
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->disconnecting:Z

    .line 211
    const-string v0, "signal SIGTERM"

    invoke-direct {p0, v0}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->send(Ljava/lang/String;)Z

    .line 212
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->finalDisconnect:Z

    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 217
    :cond_0
    monitor-exit p0

    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public openvpnStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    .line 201
    const-string v0, "state on"

    invoke-direct {p0, v0}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->send(Ljava/lang/String;)Z

    .line 202
    const-string v0, "log on"

    invoke-direct {p0, v0}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->send(Ljava/lang/String;)Z

    .line 203
    const-string v0, "hold off"

    invoke-direct {p0, v0}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->send(Ljava/lang/String;)Z

    .line 204
    const-string v0, "hold release"

    invoke-direct {p0, v0}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->send(Ljava/lang/String;)Z

    .line 205
    const-string v0, "bytecount 2"

    invoke-direct {p0, v0}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->send(Ljava/lang/String;)Z

    .line 206
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const-string v7, " TERMINATED"

    const-string v6, "THREAD "

    .line 405
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "THREAD "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RUNNING"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 409
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 411
    .local v1, s:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 412
    .local v0, c:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 413
    new-instance v2, Ljava/io/IOException;

    const-string v3, "End of Stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    .end local v0           #c:I
    .end local v1           #s:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .line 426
    monitor-enter p0

    .line 427
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->finalDisconnect:Z

    .line 428
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 429
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 430
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "THREAD "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " TERMINATED"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 432
    return-void

    .line 414
    .restart local v0       #c:I
    .restart local v1       #s:Ljava/lang/StringBuffer;
    :cond_1
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 415
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->parseLine(Ljava/lang/String;)V

    .line 416
    new-instance v1, Ljava/lang/StringBuffer;

    .end local v1           #s:Ljava/lang/StringBuffer;
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 417
    .restart local v1       #s:Ljava/lang/StringBuffer;
    goto :goto_0

    .line 419
    :cond_2
    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    .line 421
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 426
    .end local v0           #c:I
    .end local v1           #s:Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v2

    monitor-enter p0

    .line 427
    const/4 v3, 0x1

    :try_start_3
    iput-boolean v3, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->finalDisconnect:Z

    .line 428
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 429
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 430
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "THREAD "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " TERMINATED"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    throw v2

    .line 429
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v2
.end method

.method public declared-synchronized waitConnect(J)V
    .locals 8
    .parameter "seconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p1

    add-long v0, v4, v6

    .line 222
    .local v0, endTime:J
    :cond_0
    invoke-direct {p0}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    sub-long v2, v0, v4

    .local v2, wait:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 224
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    :goto_0
    :try_start_2
    iget-boolean v4, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->passwordError:Z

    if-eqz v4, :cond_0

    .line 229
    new-instance v4, Lcom/android/server/vpn/VpnConnectingError;

    const/16 v5, 0x33

    invoke-direct {v4, v5}, Lcom/android/server/vpn/VpnConnectingError;-><init>(I)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    .end local v0           #endTime:J
    .end local v2           #wait:J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 231
    .restart local v0       #endTime:J
    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    .line 232
    new-instance v4, Lcom/android/server/vpn/VpnConnectingError;

    const/16 v5, 0x65

    invoke-direct {v4, v5}, Lcom/android/server/vpn/VpnConnectingError;-><init>(I)V

    throw v4

    .line 233
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/vpn/OpenvpnService$OpenvpnThread;->firstConnect:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 225
    .restart local v2       #wait:J
    :catch_0
    move-exception v4

    goto :goto_0
.end method
