.class final Lcom/miui/player/helper/NetworkUtils$1;
.super Ljava/lang/Object;
.source "NetworkUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/helper/NetworkUtils;->doHttpGetAsync(Ljava/lang/String;Lcom/miui/player/helper/NetworkUtils$HttpGetAsyncRunnable;Landroid/os/Handler;Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$runAsync:Lcom/miui/player/helper/NetworkUtils$HttpGetAsyncRunnable;

.field final synthetic val$runSync:Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;

.field final synthetic val$strUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/miui/player/helper/NetworkUtils$HttpGetAsyncRunnable;Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$strUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$runAsync:Lcom/miui/player/helper/NetworkUtils$HttpGetAsyncRunnable;

    iput-object p3, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$runSync:Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;

    iput-object p4, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 128
    const/4 v2, 0x0

    .line 130
    .local v2, result:Ljava/lang/Object;
    :try_start_0
    iget-object v3, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$strUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/player/helper/NetworkUtils;->doHttpGetSync(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 131
    .local v1, instream:Ljava/io/InputStream;
    iget-object v3, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$runAsync:Lcom/miui/player/helper/NetworkUtils$HttpGetAsyncRunnable;

    if-eqz v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$runAsync:Lcom/miui/player/helper/NetworkUtils$HttpGetAsyncRunnable;

    invoke-virtual {v3, v1}, Lcom/miui/player/helper/NetworkUtils$HttpGetAsyncRunnable;->setInputStream(Ljava/io/InputStream;)V

    .line 133
    iget-object v3, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$runAsync:Lcom/miui/player/helper/NetworkUtils$HttpGetAsyncRunnable;

    invoke-virtual {v3}, Lcom/miui/player/helper/NetworkUtils$HttpGetAsyncRunnable;->run()V

    .line 134
    iget-object v3, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$runAsync:Lcom/miui/player/helper/NetworkUtils$HttpGetAsyncRunnable;

    invoke-virtual {v3}, Lcom/miui/player/helper/NetworkUtils$HttpGetAsyncRunnable;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .end local v2           #result:Ljava/lang/Object;
    :cond_0
    move-object v3, v2

    .line 144
    .end local v1           #instream:Ljava/io/InputStream;
    :goto_0
    iget-object v4, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$runSync:Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$handler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 145
    iget-object v4, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$runSync:Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;

    invoke-virtual {v4, v3}, Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;->setResult(Ljava/lang/Object;)V

    .line 146
    iget-object v3, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/miui/player/helper/NetworkUtils$1;->val$runSync:Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    :cond_1
    return-void

    .line 137
    .restart local v2       #result:Ljava/lang/Object;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 138
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    move-object v3, v2

    .line 142
    goto :goto_0

    .line 139
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 141
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v2

    goto :goto_0
.end method
