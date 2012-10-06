.class public Lcom/xiaomi/common/BasicRefreshTask;
.super Landroid/os/AsyncTask;
.source "BasicRefreshTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/app/Activity;

.field private mMode:I

.field protected mScheduler:Lcom/xiaomi/common/BasicRefreshScheduler;

.field private mVersionChecker:Lcom/xiaomi/common/BasicVersionChecker;


# direct methods
.method public constructor <init>(Lcom/xiaomi/common/BasicRefreshScheduler;Landroid/app/Activity;ILcom/xiaomi/common/BasicVersionChecker;)V
    .locals 0
    .parameter "scheduler"
    .parameter "context"
    .parameter "mode"
    .parameter "versionChecker"

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/xiaomi/common/BasicRefreshTask;->mScheduler:Lcom/xiaomi/common/BasicRefreshScheduler;

    .line 19
    iput-object p2, p0, Lcom/xiaomi/common/BasicRefreshTask;->mContext:Landroid/app/Activity;

    .line 20
    iput p3, p0, Lcom/xiaomi/common/BasicRefreshTask;->mMode:I

    .line 21
    iput-object p4, p0, Lcom/xiaomi/common/BasicRefreshTask;->mVersionChecker:Lcom/xiaomi/common/BasicVersionChecker;

    .line 22
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .parameter "params"

    .prologue
    .line 26
    iget v0, p0, Lcom/xiaomi/common/BasicRefreshTask;->mMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/xiaomi/common/BasicRefreshTask;->mVersionChecker:Lcom/xiaomi/common/BasicVersionChecker;

    iget-object v1, p0, Lcom/xiaomi/common/BasicRefreshTask;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/xiaomi/common/BasicVersionChecker;->checkNewVersion(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/xiaomi/common/BasicRefreshTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "succeeded"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/xiaomi/common/BasicRefreshTask;->mVersionChecker:Lcom/xiaomi/common/BasicVersionChecker;

    iget-object v1, p0, Lcom/xiaomi/common/BasicRefreshTask;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/xiaomi/common/BasicVersionChecker;->hasNewAppVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/xiaomi/common/BasicRefreshTask;->mVersionChecker:Lcom/xiaomi/common/BasicVersionChecker;

    iget-object v1, p0, Lcom/xiaomi/common/BasicRefreshTask;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/xiaomi/common/BasicVersionChecker;->startUpgrade(Landroid/app/Activity;)V

    .line 42
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 7
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/xiaomi/common/BasicRefreshTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
