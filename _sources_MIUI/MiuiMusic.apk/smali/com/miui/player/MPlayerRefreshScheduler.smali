.class public Lcom/miui/player/MPlayerRefreshScheduler;
.super Lcom/xiaomi/common/BasicRefreshScheduler;
.source "MPlayerRefreshScheduler.java"


# instance fields
.field private mServerUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "serverUrl"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/xiaomi/common/BasicRefreshScheduler;-><init>(Landroid/app/Activity;)V

    .line 15
    iput-object p2, p0, Lcom/miui/player/MPlayerRefreshScheduler;->mServerUrl:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method protected bridge synthetic getDefaultRefreshTask(I)Landroid/os/AsyncTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/miui/player/MPlayerRefreshScheduler;->getDefaultRefreshTask(I)Lcom/xiaomi/common/BasicRefreshTask;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultRefreshTask(I)Lcom/xiaomi/common/BasicRefreshTask;
    .locals 5
    .parameter "mode"

    .prologue
    .line 20
    new-instance v0, Lcom/xiaomi/common/BasicRefreshTask;

    iget-object v1, p0, Lcom/xiaomi/common/BasicRefreshScheduler;->mContext:Landroid/app/Activity;

    new-instance v2, Lcom/miui/player/MPlayerVersionChecker;

    iget-object v3, p0, Lcom/xiaomi/common/BasicRefreshScheduler;->mContext:Landroid/app/Activity;

    iget-object v4, p0, Lcom/miui/player/MPlayerRefreshScheduler;->mServerUrl:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/miui/player/MPlayerVersionChecker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/xiaomi/common/BasicRefreshTask;-><init>(Lcom/xiaomi/common/BasicRefreshScheduler;Landroid/app/Activity;ILcom/xiaomi/common/BasicVersionChecker;)V

    return-object v0
.end method
