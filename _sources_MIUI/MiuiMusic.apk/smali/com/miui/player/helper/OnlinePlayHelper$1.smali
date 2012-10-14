.class final Lcom/miui/player/helper/OnlinePlayHelper$1;
.super Ljava/lang/Object;
.source "OnlinePlayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/helper/OnlinePlayHelper;->requestCandidateUrlsAsync(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$onlineId:Ljava/lang/String;

.field final synthetic val$runnable:Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/miui/player/helper/OnlinePlayHelper$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/player/helper/OnlinePlayHelper$1;->val$onlineId:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/player/helper/OnlinePlayHelper$1;->val$runnable:Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 143
    iget-object v1, p0, Lcom/miui/player/helper/OnlinePlayHelper$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/player/helper/OnlinePlayHelper$1;->val$onlineId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/player/helper/OnlinePlayHelper;->requestCandidateUrls(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 144
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/miui/player/helper/OnlinePlayHelper$1;->val$runnable:Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/miui/player/helper/OnlinePlayHelper$1;->val$runnable:Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;

    invoke-virtual {v1, v0}, Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;->setResult(Ljava/lang/Object;)V

    .line 146
    iget-object v1, p0, Lcom/miui/player/helper/OnlinePlayHelper$1;->val$runnable:Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;

    invoke-virtual {v1}, Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;->run()V

    .line 148
    :cond_0
    return-void
.end method
