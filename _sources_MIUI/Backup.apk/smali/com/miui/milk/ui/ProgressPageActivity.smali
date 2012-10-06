.class public Lcom/miui/milk/ui/ProgressPageActivity;
.super Landroid/app/Activity;
.source "ProgressPageActivity.java"


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field protected mCancelProgressDialog:Landroid/app/ProgressDialog;

.field private mConnection:Landroid/content/ServiceConnection;

.field protected mContentsList:Landroid/widget/ListView;

.field private mFinished:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHint:Landroid/widget/TextView;

.field private mIntentTaskId:J

.field private mIsBound:Z

.field private mIsBoundSuccess:Z

.field private mIsResumed:Z

.field private mOkButton:Landroid/widget/Button;

.field private mProgressInfo:Landroid/widget/TextView;

.field private mProgressStore:Lcom/miui/milk/storage/ProgressTrackerStore;

.field private mService:Lcom/miui/milk/service/CloudBackupService;

.field private mStartActivity:Z

.field private mStatus:I

.field private mTaskDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/storage/ProgressTaskDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskId:J

.field private mType:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mTaskDetails:Ljava/util/ArrayList;

    .line 226
    new-instance v0, Lcom/miui/milk/ui/ProgressPageActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/milk/ui/ProgressPageActivity$4;-><init>(Lcom/miui/milk/ui/ProgressPageActivity;)V

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mHandler:Landroid/os/Handler;

    .line 335
    new-instance v0, Lcom/miui/milk/ui/ProgressPageActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/milk/ui/ProgressPageActivity$5;-><init>(Lcom/miui/milk/ui/ProgressPageActivity;)V

    iput-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/milk/ui/ProgressPageActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mTaskId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/miui/milk/ui/ProgressPageActivity;)Lcom/miui/milk/service/CloudBackupService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/milk/ui/ProgressPageActivity;Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/service/CloudBackupService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/milk/ui/ProgressPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/milk/ui/ProgressPageActivity;->updateProgressBar()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/milk/ui/ProgressPageActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/miui/milk/ui/ProgressPageActivity;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$402(Lcom/miui/milk/ui/ProgressPageActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mIsBoundSuccess:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/milk/ui/ProgressPageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mIsResumed:Z

    return v0
.end method

.method private queueNextRefresh(J)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 206
    iget-boolean v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mFinished:Z

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 222
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 215
    :cond_1
    iput-boolean v2, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mStartActivity:Z

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/milk/ui/ProgressResultActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    const-string v1, "TASK_ID"

    iget-wide v2, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mTaskId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 218
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, v0}, Lcom/miui/milk/ui/ProgressPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 220
    invoke-virtual {p0}, Lcom/miui/milk/ui/ProgressPageActivity;->finish()V

    goto :goto_0
.end method

.method private showProgress(Lcom/miui/milk/storage/ProgressTask;)V
    .locals 8
    .parameter "task"

    .prologue
    const/4 v5, 0x2

    const-string v7, "% "

    .line 293
    iget-wide v3, p1, Lcom/miui/milk/storage/ProgressTask;->id:J

    iput-wide v3, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mTaskId:J

    .line 295
    const/4 v1, 0x0

    .line 296
    .local v1, progressAmount:I
    iget v3, p1, Lcom/miui/milk/storage/ProgressTask;->max:I

    if-lez v3, :cond_0

    iget v3, p1, Lcom/miui/milk/storage/ProgressTask;->current:I

    if-lez v3, :cond_0

    .line 297
    iget v3, p1, Lcom/miui/milk/storage/ProgressTask;->current:I

    mul-int/lit8 v3, v3, 0x64

    iget v4, p1, Lcom/miui/milk/storage/ProgressTask;->max:I

    div-int v1, v3, v4

    .line 300
    :cond_0
    const/16 v3, 0x64

    if-gt v1, v3, :cond_1

    iget v3, p1, Lcom/miui/milk/storage/ProgressTask;->status:I

    if-ne v3, v5, :cond_2

    .line 301
    :cond_1
    const/16 v1, 0x64

    .line 304
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p1, Lcom/miui/milk/storage/ProgressTask;->description:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 306
    iget-object v3, p1, Lcom/miui/milk/storage/ProgressTask;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    const-string v3, "% "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget v3, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 313
    iget-object v3, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressInfo:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/milk/ui/ProgressPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060070

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "% "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    iget-wide v4, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mTaskId:J

    invoke-virtual {v3, v4, v5}, Lcom/miui/milk/storage/ProgressTrackerStore;->getTaskDetails(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 320
    .local v0, newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/storage/ProgressTaskDetail;>;"
    if-eqz v0, :cond_5

    .line 321
    iget-object v3, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mTaskDetails:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 322
    iget-object v3, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mTaskDetails:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 323
    iget-object v3, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mContentsList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/milk/ui/ProgressItemArrayAdapter;

    invoke-virtual {p0}, Lcom/miui/milk/ui/ProgressItemArrayAdapter;->notifyDataSetChanged()V

    .line 325
    :cond_5
    return-void

    .line 314
    .end local v0           #newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/storage/ProgressTaskDetail;>;"
    .restart local p0
    :cond_6
    iget v3, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mType:I

    if-ne v3, v5, :cond_4

    .line 315
    iget-object v3, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressInfo:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/milk/ui/ProgressPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060074

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "% "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateProgressBar()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, -0x2

    const-wide/16 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 243
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    invoke-virtual {v1}, Lcom/miui/milk/storage/ProgressTrackerStore;->getRunningTask()Lcom/miui/milk/storage/ProgressTask;

    move-result-object v0

    .line 244
    .local v0, task:Lcom/miui/milk/storage/ProgressTask;
    if-nez v0, :cond_2

    .line 246
    iget-wide v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mTaskId:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_7

    .line 248
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    iget-wide v2, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mTaskId:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/milk/storage/ProgressTrackerStore;->getTaskById(J)Lcom/miui/milk/storage/ProgressTask;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/miui/milk/storage/ProgressTask;->status:I

    if-eq v1, v5, :cond_0

    iget v1, v0, Lcom/miui/milk/storage/ProgressTask;->status:I

    if-eq v1, v9, :cond_0

    iget v1, v0, Lcom/miui/milk/storage/ProgressTask;->status:I

    if-ne v1, v8, :cond_1

    .line 253
    :cond_0
    iput-boolean v4, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mFinished:Z

    .line 257
    :cond_1
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/miui/milk/storage/ProgressTask;->status:I

    if-ne v1, v5, :cond_2

    .line 259
    invoke-static {v4}, Lcom/miui/milk/ui/CloudBackupMain;->setNeedRefresh(Z)V

    .line 267
    :cond_2
    :goto_0
    if-eqz v0, :cond_6

    .line 268
    iget v1, v0, Lcom/miui/milk/storage/ProgressTask;->type:I

    iput v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mType:I

    .line 270
    iget-boolean v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mIsBoundSuccess:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/miui/milk/storage/ProgressTask;->status:I

    if-eq v1, v5, :cond_3

    iget v1, v0, Lcom/miui/milk/storage/ProgressTask;->status:I

    if-eq v1, v9, :cond_3

    iget v1, v0, Lcom/miui/milk/storage/ProgressTask;->status:I

    if-ne v1, v8, :cond_4

    .line 274
    :cond_3
    iput-boolean v4, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mFinished:Z

    .line 276
    :cond_4
    iget-boolean v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mFinished:Z

    if-eqz v1, :cond_8

    .line 277
    iget v1, v0, Lcom/miui/milk/storage/ProgressTask;->status:I

    iput v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mStatus:I

    .line 278
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mHint:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mCancelButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 280
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mOkButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 288
    :cond_5
    :goto_1
    invoke-direct {p0, v0}, Lcom/miui/milk/ui/ProgressPageActivity;->showProgress(Lcom/miui/milk/storage/ProgressTask;)V

    .line 290
    :cond_6
    return-void

    .line 261
    :cond_7
    iget-wide v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mTaskId:J

    cmp-long v1, v1, v6

    if-nez v1, :cond_2

    iget-wide v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mIntentTaskId:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_2

    .line 263
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    iget-wide v2, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mIntentTaskId:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/milk/storage/ProgressTrackerStore;->getTaskById(J)Lcom/miui/milk/storage/ProgressTask;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_8
    iget v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mType:I

    if-ne v1, v4, :cond_9

    .line 283
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mCancelButton:Landroid/widget/Button;

    const v2, 0x7f060071

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 284
    :cond_9
    iget v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mType:I

    if-ne v1, v5, :cond_5

    .line 285
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mCancelButton:Landroid/widget/Button;

    const v2, 0x7f060075

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method doBindService(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const-class v2, Lcom/miui/milk/service/CloudBackupService;

    .line 362
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/milk/service/CloudBackupService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 363
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mIsBound:Z

    .line 364
    return-void
.end method

.method doUnbindService(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mIsBound:Z

    .line 372
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0}, Lcom/miui/milk/service/CloudBackupService;->taskIsRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 158
    :cond_0
    iget v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mStatus:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0}, Lcom/miui/milk/service/CloudBackupService;->cancelService()V

    .line 161
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/miui/milk/ui/ProgressPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 66
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v2, 0xa

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 68
    const v2, 0x7f03000f

    invoke-virtual {p0, v2}, Lcom/miui/milk/ui/ProgressPageActivity;->setContentView(I)V

    .line 70
    const v2, 0x7f0a002a

    invoke-virtual {p0, v2}, Lcom/miui/milk/ui/ProgressPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressInfo:Landroid/widget/TextView;

    .line 71
    const v2, 0x7f0a0019

    invoke-virtual {p0, v2}, Lcom/miui/milk/ui/ProgressPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mHint:Landroid/widget/TextView;

    .line 73
    const v2, 0x7f0a002b

    invoke-virtual {p0, v2}, Lcom/miui/milk/ui/ProgressPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mContentsList:Landroid/widget/ListView;

    .line 75
    const v2, 0x7f0a0001

    invoke-virtual {p0, v2}, Lcom/miui/milk/ui/ProgressPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mCancelButton:Landroid/widget/Button;

    .line 76
    iget-object v2, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/miui/milk/ui/ProgressPageActivity$1;

    invoke-direct {v3, p0}, Lcom/miui/milk/ui/ProgressPageActivity$1;-><init>(Lcom/miui/milk/ui/ProgressPageActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v2, 0x7f0a002c

    invoke-virtual {p0, v2}, Lcom/miui/milk/ui/ProgressPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mOkButton:Landroid/widget/Button;

    .line 84
    iget-object v2, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mOkButton:Landroid/widget/Button;

    new-instance v3, Lcom/miui/milk/ui/ProgressPageActivity$2;

    invoke-direct {v3, p0}, Lcom/miui/milk/ui/ProgressPageActivity$2;-><init>(Lcom/miui/milk/ui/ProgressPageActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    new-instance v2, Lcom/miui/milk/storage/ProgressTrackerStore;

    invoke-direct {v2, p0}, Lcom/miui/milk/storage/ProgressTrackerStore;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    .line 98
    new-instance v1, Lcom/miui/milk/ui/ProgressItemArrayAdapter;

    const v2, 0x7f03000e

    const v3, 0x1020016

    iget-object v4, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mTaskDetails:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/miui/milk/ui/ProgressItemArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 99
    .local v1, progressItemAdapter:Lcom/miui/milk/ui/ProgressItemArrayAdapter;
    iget-object v2, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mContentsList:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 166
    packed-switch p1, :pswitch_data_0

    move-object v1, v5

    .line 200
    :goto_0
    return-object v1

    .line 168
    :pswitch_0
    const/4 v0, 0x0

    .line 169
    .local v0, message:Ljava/lang/String;
    iget v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mType:I

    if-ne v1, v3, :cond_1

    .line 170
    const v1, 0x7f060059

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_0
    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06000d

    new-instance v3, Lcom/miui/milk/ui/ProgressPageActivity$3;

    invoke-direct {v3, p0}, Lcom/miui/milk/ui/ProgressPageActivity$3;-><init>(Lcom/miui/milk/ui/ProgressPageActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060005

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 171
    :cond_1
    iget v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mType:I

    if-ne v1, v4, :cond_0

    .line 172
    const v1, 0x7f06005a

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 188
    .end local v0           #message:Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x0

    .line 189
    .restart local v0       #message:Ljava/lang/String;
    iget v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mType:I

    if-ne v1, v3, :cond_3

    .line 190
    const v1, 0x7f06005b

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_2
    :goto_2
    const-string v1, ""

    invoke-static {p0, v1, v0, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    .line 196
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 197
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mCancelProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 191
    :cond_3
    iget v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mType:I

    if-ne v1, v4, :cond_2

    .line 192
    const v1, 0x7f06005c

    invoke-virtual {p0, v1}, Lcom/miui/milk/ui/ProgressPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mIsResumed:Z

    .line 148
    invoke-virtual {p0, p0}, Lcom/miui/milk/ui/ProgressPageActivity;->doUnbindService(Landroid/content/Context;)V

    .line 149
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mProgressStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    invoke-virtual {v0}, Lcom/miui/milk/storage/ProgressTrackerStore;->close()V

    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 151
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mIsResumed:Z

    .line 135
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 140
    :cond_0
    iget-boolean v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mStartActivity:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0}, Lcom/miui/milk/service/CloudBackupService;->switchToBackground()V

    .line 143
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mIsResumed:Z

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mStartActivity:Z

    .line 124
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 125
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/milk/ui/ProgressPageActivity;->queueNextRefresh(J)V

    .line 126
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mService:Lcom/miui/milk/service/CloudBackupService;

    invoke-virtual {v0}, Lcom/miui/milk/service/CloudBackupService;->switchToForeground()V

    .line 129
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 108
    invoke-virtual {p0, p0}, Lcom/miui/milk/ui/ProgressPageActivity;->doBindService(Landroid/content/Context;)V

    .line 110
    invoke-virtual {p0}, Lcom/miui/milk/ui/ProgressPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 111
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "TASK_ID"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mIntentTaskId:J

    .line 113
    iput-wide v3, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mTaskId:J

    .line 114
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mCancelButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    iget-object v1, p0, Lcom/miui/milk/ui/ProgressPageActivity;->mOkButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 116
    return-void
.end method
