.class public Lcom/miui/backup/ui/ProgressPageActivity;
.super Landroid/app/Activity;
.source "ProgressPageActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/backup/ui/ProgressPageActivity$DeleteBackupTask;
    }
.end annotation


# instance fields
.field private isBackground:Z

.field private isFling:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mCancelProgressDialog:Landroid/app/ProgressDialog;

.field private mConnection:Landroid/content/ServiceConnection;

.field protected mContentsList:Landroid/widget/ListView;

.field private mCurrCmdIndex:I

.field private mErrorMessage:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mHint:Landroid/widget/TextView;

.field private mIsBound:Z

.field private mOkButton:Landroid/widget/Button;

.field private mProgressAdapter:Lcom/miui/backup/ui/ProgressItemAdapter;

.field private mProgressInfo:Landroid/widget/TextView;

.field private mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

.field private mService:Lcom/miui/backup/BackupService;

.field private mTaskRunningInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/backup/CmdRunningInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    iput-object v2, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressAdapter:Lcom/miui/backup/ui/ProgressItemAdapter;

    .line 49
    iput-object v2, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mTaskRunningInfo:Ljava/util/List;

    .line 62
    iput-boolean v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->isFling:Z

    .line 63
    iput-boolean v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->isBackground:Z

    .line 65
    iput v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCurrCmdIndex:I

    .line 234
    new-instance v0, Lcom/miui/backup/ui/ProgressPageActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/backup/ui/ProgressPageActivity$5;-><init>(Lcom/miui/backup/ui/ProgressPageActivity;)V

    iput-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mHandler:Landroid/os/Handler;

    .line 388
    iput-boolean v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mIsBound:Z

    .line 389
    iput-object v2, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    .line 390
    new-instance v0, Lcom/miui/backup/ui/ProgressPageActivity$6;

    invoke-direct {v0, p0}, Lcom/miui/backup/ui/ProgressPageActivity$6;-><init>(Lcom/miui/backup/ui/ProgressPageActivity;)V

    iput-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/backup/ui/ProgressPageActivity;)Lcom/miui/backup/BackupService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/backup/ui/ProgressPageActivity;Lcom/miui/backup/BackupService;)Lcom/miui/backup/BackupService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/backup/ui/ProgressPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/miui/backup/ui/ProgressPageActivity;->refreshNow()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/backup/ui/ProgressPageActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/backup/ui/ProgressPageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->isBackground:Z

    return v0
.end method

.method static synthetic access$502(Lcom/miui/backup/ui/ProgressPageActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCurrCmdIndex:I

    return p1
.end method

.method private freshTotalProgress()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method private genContentAdapter()V
    .locals 4

    .prologue
    .line 361
    new-instance v0, Lcom/miui/backup/ui/ProgressItemAdapter;

    const v1, 0x7f03000e

    const v2, 0x1020016

    iget-object v3, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mTaskRunningInfo:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/miui/backup/ui/ProgressItemAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressAdapter:Lcom/miui/backup/ui/ProgressItemAdapter;

    .line 363
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mContentsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressAdapter:Lcom/miui/backup/ui/ProgressItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 364
    return-void
.end method

.method private isTaskFinished()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v0}, Lcom/miui/backup/BackupService;->isTaskFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queueNextRefreshNow(J)V
    .locals 3
    .parameter "delay"

    .prologue
    const/4 v2, 0x1

    .line 329
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 330
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 331
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 332
    return-void
.end method

.method private refreshListContent()V
    .locals 2

    .prologue
    .line 345
    iget-boolean v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->isBackground:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    if-eqz v1, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressAdapter:Lcom/miui/backup/ui/ProgressItemAdapter;

    invoke-virtual {v1}, Lcom/miui/backup/ui/ProgressItemAdapter;->notifyDataSetChanged()V

    .line 349
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v1}, Lcom/miui/backup/BackupService;->getTaskCmdIndex()I

    move-result v0

    .line 350
    .local v0, cmdIndex:I
    iget v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCurrCmdIndex:I

    if-eq v1, v0, :cond_0

    .line 351
    iput v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCurrCmdIndex:I

    .line 352
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mContentsList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method private refreshNow()V
    .locals 4

    .prologue
    const v2, 0x7f060050

    const/4 v3, 0x3

    .line 249
    iget-boolean v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->isFling:Z

    if-eqz v1, :cond_0

    .line 284
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v1}, Lcom/miui/backup/BackupService;->hasTask()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v1}, Lcom/miui/backup/BackupService;->getTaskRunningInfo()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mTaskRunningInfo:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mTaskRunningInfo:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressAdapter:Lcom/miui/backup/ui/ProgressItemAdapter;

    if-nez v1, :cond_1

    .line 270
    invoke-direct {p0}, Lcom/miui/backup/ui/ProgressPageActivity;->genContentAdapter()V

    .line 272
    :cond_1
    invoke-direct {p0}, Lcom/miui/backup/ui/ProgressPageActivity;->refreshPage()V

    .line 275
    :cond_2
    invoke-direct {p0}, Lcom/miui/backup/ui/ProgressPageActivity;->isTaskFinished()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 276
    invoke-direct {p0}, Lcom/miui/backup/ui/ProgressPageActivity;->refreshOnFinished()V

    goto :goto_0

    .line 255
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 256
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v1}, Lcom/miui/backup/BackupService;->hasTask()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 257
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v1}, Lcom/miui/backup/BackupService;->getTaskType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 258
    const v1, 0x7f06006a

    invoke-virtual {p0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mErrorMessage:Ljava/lang/String;

    .line 265
    :goto_1
    invoke-virtual {p0, v3}, Lcom/miui/backup/ui/ProgressPageActivity;->showDialog(I)V

    goto :goto_0

    .line 260
    :cond_3
    const v1, 0x7f06006c

    invoke-virtual {p0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mErrorMessage:Ljava/lang/String;

    goto :goto_1

    .line 263
    :cond_4
    invoke-virtual {p0, v2}, Lcom/miui/backup/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mErrorMessage:Ljava/lang/String;

    goto :goto_1

    .line 278
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    const-wide/16 v1, 0x1f4

    invoke-direct {p0, v1, v2}, Lcom/miui/backup/ui/ProgressPageActivity;->queueNextRefreshNow(J)V

    goto :goto_0

    .line 281
    :cond_6
    invoke-virtual {p0, v2}, Lcom/miui/backup/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mErrorMessage:Ljava/lang/String;

    .line 282
    invoke-virtual {p0, v3}, Lcom/miui/backup/ui/ProgressPageActivity;->showDialog(I)V

    goto :goto_0
.end method

.method private refreshOnFinished()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 296
    invoke-direct {p0}, Lcom/miui/backup/ui/ProgressPageActivity;->refreshPage()V

    .line 297
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v1}, Lcom/miui/backup/BackupService;->getBackupRestoreDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, fileName:Ljava/lang/String;
    :try_start_0
    invoke-static {p0, v0}, Lcom/miui/backup/BackupUtils;->getShowNameFromFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 303
    :goto_0
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mHint:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v2}, Lcom/miui/backup/BackupService;->getBackupRestoreDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCancelButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 305
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 306
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v1}, Lcom/miui/backup/BackupService;->getTaskType()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 307
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressInfo:Landroid/widget/TextView;

    const v2, 0x7f06000f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 312
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 313
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v1}, Lcom/miui/backup/BackupService;->getTaskType()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 314
    new-instance v1, Lcom/miui/backup/ui/ProgressPageActivity$DeleteBackupTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/backup/ui/ProgressPageActivity$DeleteBackupTask;-><init>(Lcom/miui/backup/ui/ProgressPageActivity;Lcom/miui/backup/ui/ProgressPageActivity$1;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/miui/backup/ui/ProgressPageActivity$DeleteBackupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 326
    :cond_1
    :goto_2
    return-void

    .line 308
    :cond_2
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v1}, Lcom/miui/backup/BackupService;->getTaskType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 309
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressInfo:Landroid/widget/TextView;

    const v2, 0x7f06001f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 317
    :cond_3
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 321
    :cond_4
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2

    .line 300
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private refreshPage()V
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->isFling:Z

    if-nez v0, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/miui/backup/ui/ProgressPageActivity;->refreshTotalInfo()V

    .line 289
    invoke-direct {p0}, Lcom/miui/backup/ui/ProgressPageActivity;->freshTotalProgress()V

    .line 290
    invoke-direct {p0}, Lcom/miui/backup/ui/ProgressPageActivity;->refreshListContent()V

    .line 292
    :cond_0
    return-void
.end method

.method private refreshTotalInfo()V
    .locals 4

    .prologue
    .line 335
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v1}, Lcom/miui/backup/BackupService;->getTaskCancelResIdOfTask()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 336
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressInfo:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/backup/ui/ProgressPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v3}, Lcom/miui/backup/BackupService;->getProgressHintResIdOfTask()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v2}, Lcom/miui/backup/BackupService;->getTaskProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    return-void
.end method


# virtual methods
.method doBindService(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const-class v2, Lcom/miui/backup/BackupService;

    .line 438
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/backup/BackupService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 439
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/miui/backup/BackupService;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mIsBound:Z

    .line 440
    return-void
.end method

.method doUnbindService(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mIsBound:Z

    .line 448
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/miui/backup/ui/ProgressPageActivity;->isTaskFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 157
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 71
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0xa

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 73
    invoke-static {p0}, Lcom/miui/backup/SDCardMonitor;->getSDCardMonitor(Landroid/content/Context;)Lcom/miui/backup/SDCardMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    .line 74
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    invoke-virtual {v1, p0}, Lcom/miui/backup/SDCardMonitor;->addSdCardStatusListener(Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;)V

    .line 76
    const v1, 0x7f03000f

    invoke-virtual {p0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->setContentView(I)V

    .line 77
    const v1, 0x7f0a002b

    invoke-virtual {p0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mContentsList:Landroid/widget/ListView;

    .line 78
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mContentsList:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 80
    const v1, 0x7f0a002a

    invoke-virtual {p0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mProgressInfo:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f0a0019

    invoke-virtual {p0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mHint:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f0a0001

    invoke-virtual {p0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCancelButton:Landroid/widget/Button;

    .line 84
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/miui/backup/ui/ProgressPageActivity$1;

    invoke-direct {v2, p0}, Lcom/miui/backup/ui/ProgressPageActivity$1;-><init>(Lcom/miui/backup/ui/ProgressPageActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v1, 0x7f0a002c

    invoke-virtual {p0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mOkButton:Landroid/widget/Button;

    .line 92
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mOkButton:Landroid/widget/Button;

    new-instance v2, Lcom/miui/backup/ui/ProgressPageActivity$2;

    invoke-direct {v2, p0}, Lcom/miui/backup/ui/ProgressPageActivity$2;-><init>(Lcom/miui/backup/ui/ProgressPageActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const v5, 0x7f06000d

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 160
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v1}, Lcom/miui/backup/BackupService;->hasTask()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v3

    .line 205
    :goto_0
    return-object v1

    .line 163
    :cond_1
    packed-switch p1, :pswitch_data_0

    move-object v1, v3

    .line 205
    goto :goto_0

    .line 165
    :pswitch_0
    const/4 v0, 0x0

    .line 166
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v1}, Lcom/miui/backup/BackupService;->getTaskType()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 167
    const v1, 0x7f060058

    invoke-virtual {p0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/backup/ui/ProgressPageActivity$3;

    invoke-direct {v2, p0}, Lcom/miui/backup/ui/ProgressPageActivity$3;-><init>(Lcom/miui/backup/ui/ProgressPageActivity;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060005

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 169
    :cond_2
    const v1, 0x7f06005a

    invoke-virtual {p0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 184
    .end local v0           #message:Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x0

    .line 185
    .restart local v0       #message:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v1}, Lcom/miui/backup/BackupService;->getTaskType()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 186
    const v1, 0x7f06005b

    invoke-virtual {p0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_2
    const-string v1, ""

    invoke-static {p0, v1, v0, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    .line 191
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 192
    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 188
    :cond_3
    const v1, 0x7f06005c

    invoke-virtual {p0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 195
    .end local v0           #message:Ljava/lang/String;
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/backup/ui/ProgressPageActivity$4;

    invoke-direct {v2, p0}, Lcom/miui/backup/ui/ProgressPageActivity$4;-><init>(Lcom/miui/backup/ui/ProgressPageActivity;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mSdCardMonitor:Lcom/miui/backup/SDCardMonitor;

    invoke-virtual {v0, p0}, Lcom/miui/backup/SDCardMonitor;->removeSdCardStatusListener(Lcom/miui/backup/SDCardMonitor$SdCardStatusListener;)V

    .line 148
    invoke-virtual {p0, p0}, Lcom/miui/backup/ui/ProgressPageActivity;->doUnbindService(Landroid/content/Context;)V

    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 150
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 138
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 143
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 131
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 132
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->queueNextRefreshNow(J)V

    .line 133
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 222
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 211
    if-nez p2, :cond_0

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->isFling:Z

    .line 213
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->queueNextRefreshNow(J)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->isFling:Z

    goto :goto_0
.end method

.method public onSdcardStatusChanged(Z)V
    .locals 1
    .parameter "mount"

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mErrorMessage:Ljava/lang/String;

    .line 228
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/ProgressPageActivity;->showDialog(I)V

    .line 230
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 107
    invoke-virtual {p0, p0}, Lcom/miui/backup/ui/ProgressPageActivity;->doBindService(Landroid/content/Context;)V

    .line 109
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mOkButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mHint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v0}, Lcom/miui/backup/BackupService;->switchToForeground()V

    .line 116
    :cond_0
    iput-boolean v2, p0, Lcom/miui/backup/ui/ProgressPageActivity;->isBackground:Z

    .line 117
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 122
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v0}, Lcom/miui/backup/BackupService;->switchToBackground()V

    .line 125
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/backup/ui/ProgressPageActivity;->isBackground:Z

    .line 126
    return-void
.end method
