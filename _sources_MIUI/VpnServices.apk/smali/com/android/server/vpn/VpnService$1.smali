.class Lcom/android/server/vpn/VpnService$1;
.super Ljava/lang/Object;
.source "VpnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vpn/VpnService;->startConnectivityMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vpn/VpnService;


# direct methods
.method constructor <init>(Lcom/android/server/vpn/VpnService;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    .local p0, this:Lcom/android/server/vpn/VpnService$1;,"Lcom/android/server/vpn/VpnService.1;"
    iput-object p1, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 361
    .local p0, this:Lcom/android/server/vpn/VpnService$1;,"Lcom/android/server/vpn/VpnService.1;"
    iget-object v7, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    #getter for: Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/vpn/VpnService;->access$100(Lcom/android/server/vpn/VpnService;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "VPN connectivity monitor running"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/16 v2, 0xa

    .line 364
    .local v2, i:I
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 366
    .local v3, now:J
    if-nez v2, :cond_0

    const/4 v7, 0x1

    move v1, v7

    .line 367
    .local v1, heavyCheck:Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :try_start_1
    iget-object v8, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    #getter for: Lcom/android/server/vpn/VpnService;->mState:Landroid/net/vpn/VpnState;
    invoke-static {v8}, Lcom/android/server/vpn/VpnService;->access$200(Lcom/android/server/vpn/VpnService;)Landroid/net/vpn/VpnState;

    move-result-object v8

    sget-object v9, Landroid/net/vpn/VpnState;->CONNECTED:Landroid/net/vpn/VpnState;

    if-eq v8, v9, :cond_1

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    .end local v1           #heavyCheck:Z
    .end local v3           #now:J
    :goto_2
    iget-object v7, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    #getter for: Lcom/android/server/vpn/VpnService;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/vpn/VpnService;->access$100(Lcom/android/server/vpn/VpnService;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "VPN connectivity monitor stopped"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-void

    .line 366
    .restart local v3       #now:J
    :cond_0
    const/4 v7, 0x0

    move v1, v7

    goto :goto_1

    .line 369
    .restart local v1       #heavyCheck:Z
    :cond_1
    :try_start_2
    iget-object v8, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    #getter for: Lcom/android/server/vpn/VpnService;->mNotification:Lcom/android/server/vpn/VpnService$NotificationHelper;
    invoke-static {v8}, Lcom/android/server/vpn/VpnService;->access$300(Lcom/android/server/vpn/VpnService;)Lcom/android/server/vpn/VpnService$NotificationHelper;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Lcom/android/server/vpn/VpnService$NotificationHelper;->update(J)V

    .line 371
    if-eqz v1, :cond_2

    .line 372
    const/16 v2, 0xa

    .line 373
    iget-object v8, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    #calls: Lcom/android/server/vpn/VpnService;->checkConnectivity()Z
    invoke-static {v8}, Lcom/android/server/vpn/VpnService;->access$400(Lcom/android/server/vpn/VpnService;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    #calls: Lcom/android/server/vpn/VpnService;->checkDns()V
    invoke-static {v8}, Lcom/android/server/vpn/VpnService;->access$500(Lcom/android/server/vpn/VpnService;)V

    .line 375
    :cond_2
    const-wide/16 v8, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v8, v10

    add-long v5, v8, v3

    .line 376
    .local v5, t:J
    const-wide/16 v8, 0x64

    cmp-long v8, v5, v8

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    invoke-virtual {v8, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 377
    :cond_3
    monitor-exit v7

    .line 363
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 377
    .end local v5           #t:J
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v8
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 379
    .end local v1           #heavyCheck:Z
    .end local v3           #now:J
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 380
    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v7, p0, Lcom/android/server/vpn/VpnService$1;->this$0:Lcom/android/server/vpn/VpnService;

    invoke-virtual {v7, v0}, Lcom/android/server/vpn/VpnService;->onError(Ljava/lang/Throwable;)V

    goto :goto_2
.end method
