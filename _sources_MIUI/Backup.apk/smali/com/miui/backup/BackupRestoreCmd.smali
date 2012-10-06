.class public Lcom/miui/backup/BackupRestoreCmd;
.super Ljava/lang/Object;
.source "BackupRestoreCmd.java"


# instance fields
.field protected mAppInfo:Lcom/miui/backup/AppInfo;

.field protected mBaseDir:Ljava/io/File;

.field protected mContext:Landroid/content/Context;

.field private mFinishedSize:J

.field protected mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

.field protected mStrategy:Lcom/miui/backup/BackupRestoreStrategy;


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V
    .locals 2
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    .line 14
    iput-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    .line 15
    iput-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    .line 17
    iput-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    .line 18
    new-instance v0, Lcom/miui/backup/CmdRunningInfo;

    invoke-direct {v0}, Lcom/miui/backup/CmdRunningInfo;-><init>()V

    iput-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    .line 210
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mFinishedSize:J

    .line 21
    iput-object p1, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    .line 22
    iput-object p2, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    .line 23
    iput-object p3, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private recordTotalFinishedSize()V
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->getFinishedSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mFinishedSize:J

    .line 213
    return-void
.end method


# virtual methods
.method protected action()Z
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x1

    .line 117
    .local v0, ret:Z
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->genStrategy()V

    .line 118
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    invoke-virtual {v1}, Lcom/miui/backup/BackupRestoreStrategy;->execute()Z

    move-result v0

    .line 121
    :cond_0
    return v0
.end method

.method protected addItemToScript(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "cmd"
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/miui/backup/BackupRestoreCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method protected addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "strategy"
    .parameter "cmd"
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 228
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/miui/backup/ScriptStrategy;

    if-eqz v2, :cond_0

    .line 229
    move-object v0, p1

    check-cast v0, Lcom/miui/backup/ScriptStrategy;

    move-object v1, v0

    .line 230
    .local v1, scStrategy:Lcom/miui/backup/ScriptStrategy;
    invoke-virtual {v1, p2, p3, p4}, Lcom/miui/backup/ScriptStrategy;->add(ILjava/lang/String;Ljava/lang/String;)V

    .line 232
    .end local v1           #scStrategy:Lcom/miui/backup/ScriptStrategy;
    :cond_0
    return-void
.end method

.method public cancel(Z)V
    .locals 2
    .parameter "isFailed"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v0, v0, Lcom/miui/backup/CmdRunningInfo;->status:I

    packed-switch v0, :pswitch_data_0

    .line 96
    :goto_0
    :pswitch_0
    return-void

    .line 80
    :pswitch_1
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    invoke-virtual {v0}, Lcom/miui/backup/BackupRestoreStrategy;->cancel()V

    .line 85
    :cond_0
    :pswitch_2
    if-eqz p1, :cond_1

    .line 86
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    const/4 v1, 0x5

    iput v1, v0, Lcom/miui/backup/CmdRunningInfo;->status:I

    .line 87
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->handleErrors()V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    const/4 v1, 0x6

    iput v1, v0, Lcom/miui/backup/CmdRunningInfo;->status:I

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public execute()Z
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x1

    .line 33
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v1, v1, Lcom/miui/backup/CmdRunningInfo;->status:I

    if-ne v1, v6, :cond_0

    move v1, v3

    .line 74
    :goto_0
    return v1

    .line 35
    :cond_0
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v1, v1, Lcom/miui/backup/CmdRunningInfo;->status:I

    if-ne v1, v4, :cond_1

    move v1, v5

    .line 36
    goto :goto_0

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iput v3, v1, Lcom/miui/backup/CmdRunningInfo;->status:I

    .line 40
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->preAction()Z

    move-result v0

    .line 42
    .local v0, ret:Z
    if-eqz v0, :cond_2

    .line 43
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    const/4 v2, 0x2

    iput v2, v1, Lcom/miui/backup/CmdRunningInfo;->status:I

    .line 44
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->action()Z

    move-result v0

    .line 48
    invoke-direct {p0}, Lcom/miui/backup/BackupRestoreCmd;->recordTotalFinishedSize()V

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v1, v1, Lcom/miui/backup/CmdRunningInfo;->status:I

    if-ne v1, v6, :cond_3

    move v1, v3

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v1, v1, Lcom/miui/backup/CmdRunningInfo;->status:I

    if-ne v1, v4, :cond_4

    move v1, v5

    .line 54
    goto :goto_0

    .line 57
    :cond_4
    if-eqz v0, :cond_6

    .line 58
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    const/4 v2, 0x3

    iput v2, v1, Lcom/miui/backup/CmdRunningInfo;->status:I

    .line 59
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->postAction()Z

    move-result v0

    .line 64
    :goto_1
    if-eqz v0, :cond_7

    .line 65
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    const/4 v2, 0x4

    iput v2, v1, Lcom/miui/backup/CmdRunningInfo;->status:I

    .line 71
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v1, v1, Lcom/miui/backup/CmdRunningInfo;->status:I

    if-ne v1, v4, :cond_8

    move v1, v5

    .line 72
    goto :goto_0

    .line 61
    :cond_6
    invoke-virtual {p0, v3}, Lcom/miui/backup/BackupRestoreCmd;->cancel(Z)V

    goto :goto_1

    .line 66
    :cond_7
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v1, v1, Lcom/miui/backup/CmdRunningInfo;->status:I

    if-eq v1, v6, :cond_5

    .line 67
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iput v4, v1, Lcom/miui/backup/CmdRunningInfo;->status:I

    .line 68
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->handleErrors()V

    goto :goto_2

    :cond_8
    move v1, v3

    .line 74
    goto :goto_0
.end method

.method protected forceStop(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->forceKillPackage(Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method protected formatFinishedSize(J)Ljava/lang/String;
    .locals 1
    .parameter "finishedSize"

    .prologue
    .line 216
    invoke-static {p1, p2}, Lcom/miui/backup/BackupUtils;->getKMFormat(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected genStrategy()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method protected getFinishedDisplay()Ljava/lang/String;
    .locals 3

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->getFinishedSize()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/miui/backup/BackupRestoreCmd;->formatFinishedSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->getUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFinishedSize()J
    .locals 4

    .prologue
    .line 171
    const-wide/16 v0, 0x0

    .line 172
    .local v0, size:J
    iget-object v2, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v2, v2, Lcom/miui/backup/CmdRunningInfo;->status:I

    packed-switch v2, :pswitch_data_0

    .line 197
    :cond_0
    :goto_0
    :pswitch_0
    return-wide v0

    .line 174
    :pswitch_1
    const-wide/16 v0, 0x0

    .line 175
    goto :goto_0

    .line 177
    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->getPreActionSize()J

    move-result-wide v0

    .line 178
    goto :goto_0

    .line 180
    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->getPreActionSize()J

    move-result-wide v0

    .line 181
    iget-object v2, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    invoke-virtual {v2}, Lcom/miui/backup/BackupRestoreStrategy;->getFinishedSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 187
    :pswitch_4
    iget-wide v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mFinishedSize:J

    .line 188
    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v0, v0, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getPreActionSize()J
    .locals 2

    .prologue
    .line 206
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getProgress()I
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v0, v0, Lcom/miui/backup/CmdRunningInfo;->status:I

    packed-switch v0, :pswitch_data_0

    .line 167
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v0, v0, Lcom/miui/backup/CmdRunningInfo;->progress:I

    return v0

    .line 150
    :pswitch_0
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/miui/backup/CmdRunningInfo;->progress:I

    goto :goto_0

    .line 155
    :pswitch_1
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    invoke-virtual {v1}, Lcom/miui/backup/BackupRestoreStrategy;->getProgress()I

    move-result v1

    iput v1, v0, Lcom/miui/backup/CmdRunningInfo;->progress:I

    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    const/16 v1, 0x64

    iput v1, v0, Lcom/miui/backup/CmdRunningInfo;->progress:I

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getRunningInfo()Lcom/miui/backup/CmdRunningInfo;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->getLabel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/backup/CmdRunningInfo;->title:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->getProgress()I

    move-result v1

    iput v1, v0, Lcom/miui/backup/CmdRunningInfo;->progress:I

    .line 101
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreCmd;->getFinishedDisplay()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/backup/CmdRunningInfo;->finishedSize:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    return-object v0
.end method

.method protected getUnit()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleErrors()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/milk/common/AppInfo;->error:Z

    .line 133
    :cond_0
    return-void
.end method

.method protected postAction()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method protected preAction()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method
