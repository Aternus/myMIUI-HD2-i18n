.class public Lcom/miui/milk/service/CloudBackupService;
.super Landroid/app/Service;
.source "CloudBackupService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/service/CloudBackupService$TaskItem;,
        Lcom/miui/milk/service/CloudBackupService$ServiceHandler;,
        Lcom/miui/milk/service/CloudBackupService$CloudBinder;
    }
.end annotation


# instance fields
.field private final NM_BACKUP_FINISHED:I

.field private final NM_BACKUP_PROGRESS:I

.field private final NM_RESTORE_FINISHED:I

.field private final NM_RESTORE_PROGRESS:I

.field private final TASK_BACKUP:I

.field private final TASK_FINDLOST:I

.field private final TASK_RESTORE:I

.field private mAbController:Lcom/miui/milk/control/cloud/AddressBookCloudController;

.field private mAppInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/common/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoBackup:Z

.field private final mBinder:Landroid/os/IBinder;

.field private mCallsTrackerStore:Lcom/miui/milk/storage/CalllogTrackerStore;

.field private mCanceled:Z

.field private mCcController:Lcom/miui/milk/control/cloud/CalllogCloudController;

.field private mContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mContactVersionStore:Lcom/miui/milk/storage/ContactTrackerStore;

.field private mGroupVersionStore:Lcom/miui/milk/storage/GroupTrackerStore;

.field private mIsBackgroundRunning:Z

.field private mMaxCount:I

.field private mNM:Landroid/app/NotificationManager;

.field private mNcController:Lcom/miui/milk/control/cloud/NoteCloudController;

.field private mNoteFolderTrackerStore:Lcom/miui/milk/storage/NoteFolderTrackerStore;

.field private mNoteTrackerStore:Lcom/miui/milk/storage/NoteTrackerStore;

.field private mPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/service/CloudBackupService$TaskItem;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

.field private mRestoreTaskItemIndex:I

.field private mScController:Lcom/miui/milk/control/cloud/SmsCloudController;

.field private mServiceHandler:Lcom/miui/milk/service/CloudBackupService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field private mSmsBookmarkTrackerStore:Lcom/miui/milk/storage/SmsBookmarkTrackerStore;

.field private mSmsTrackerStore:Lcom/miui/milk/storage/SmsTrackerStore;

.field private mTaskId:J

.field private mTaskRunning:Z

.field private mTaskSucceed:Z

.field private mTaskType:I

.field private mThread:Landroid/os/HandlerThread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiController:Lcom/miui/milk/control/cloud/WifiCloudController;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private sharedPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 82
    new-instance v0, Lcom/miui/milk/service/CloudBackupService$CloudBinder;

    invoke-direct {v0, p0}, Lcom/miui/milk/service/CloudBackupService$CloudBinder;-><init>(Lcom/miui/milk/service/CloudBackupService;)V

    iput-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mBinder:Landroid/os/IBinder;

    .line 96
    iput-boolean v1, p0, Lcom/miui/milk/service/CloudBackupService;->mCanceled:Z

    .line 98
    iput-boolean v2, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskSucceed:Z

    .line 100
    iput-boolean v1, p0, Lcom/miui/milk/service/CloudBackupService;->mAutoBackup:Z

    .line 164
    iput v2, p0, Lcom/miui/milk/service/CloudBackupService;->NM_BACKUP_FINISHED:I

    .line 165
    iput v3, p0, Lcom/miui/milk/service/CloudBackupService;->NM_RESTORE_FINISHED:I

    .line 166
    iput v4, p0, Lcom/miui/milk/service/CloudBackupService;->NM_BACKUP_PROGRESS:I

    .line 167
    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/milk/service/CloudBackupService;->NM_RESTORE_PROGRESS:I

    .line 270
    iput v2, p0, Lcom/miui/milk/service/CloudBackupService;->TASK_BACKUP:I

    .line 271
    iput v3, p0, Lcom/miui/milk/service/CloudBackupService;->TASK_RESTORE:I

    .line 272
    iput v4, p0, Lcom/miui/milk/service/CloudBackupService;->TASK_FINDLOST:I

    .line 309
    iput-boolean v1, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    .line 314
    return-void
.end method

.method static synthetic access$000(Lcom/miui/milk/service/CloudBackupService;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/milk/service/CloudBackupService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/miui/milk/service/CloudBackupService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskType:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/milk/service/CloudBackupService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/miui/milk/service/CloudBackupService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->runBackup()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/milk/service/CloudBackupService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->runRestore()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/milk/service/CloudBackupService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->runFindlostContact()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/storage/ProgressTrackerStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    return-object v0
.end method

.method static synthetic access$702(Lcom/miui/milk/service/CloudBackupService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskSucceed:Z

    return p1
.end method

.method static synthetic access$800(Lcom/miui/milk/service/CloudBackupService;Lcom/miui/milk/service/CloudBackupService$TaskItem;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/miui/milk/service/CloudBackupService;->callbackReturn(Lcom/miui/milk/service/CloudBackupService$TaskItem;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/miui/milk/service/CloudBackupService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/miui/milk/service/CloudBackupService;->mRestoreTaskItemIndex:I

    return v0
.end method

.method private addTaskDetail(Lcom/miui/milk/common/AppInfo;I)J
    .locals 4
    .parameter "appInfo"
    .parameter "taskDetailType"

    .prologue
    .line 376
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 377
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "name"

    iget-object v2, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v1, "title"

    iget-object v2, p1, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v1, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    const-string v1, "task_id"

    iget-wide v2, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 381
    const-string v1, "date"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 382
    const-string v1, "status"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 383
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    invoke-virtual {v1, v0}, Lcom/miui/milk/storage/ProgressTrackerStore;->addTaskDetail(Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method private backupTaskItem(Lcom/miui/milk/service/CloudBackupService$TaskItem;)V
    .locals 3
    .parameter "taskItem"

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/miui/milk/service/CloudBackupService;->beginTaskItemRunning(Lcom/miui/milk/service/CloudBackupService$TaskItem;)V

    .line 560
    new-instance v0, Lcom/miui/milk/service/CloudBackupService$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/milk/service/CloudBackupService$1;-><init>(Lcom/miui/milk/service/CloudBackupService;Lcom/miui/milk/service/CloudBackupService$TaskItem;)V

    .line 604
    .local v0, callback:Lcom/miui/milk/control/callback/AsyncTaskCallback;
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 605
    iget-object v1, p1, Lcom/miui/milk/service/CloudBackupService$TaskItem;->baseCloudController:Lcom/miui/milk/control/cloud/BaseCloudController;

    invoke-virtual {v1}, Lcom/miui/milk/control/cloud/BaseCloudController;->clearPrepared()V

    .line 606
    iget-object v1, p1, Lcom/miui/milk/service/CloudBackupService$TaskItem;->baseCloudController:Lcom/miui/milk/control/cloud/BaseCloudController;

    iget-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->sharedPref:Landroid/content/SharedPreferences;

    invoke-virtual {v1, v0, v2}, Lcom/miui/milk/control/cloud/BaseCloudController;->saveInBatchMode(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V

    .line 607
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 610
    :cond_0
    return-void
.end method

.method private beginTaskItemRunning(Lcom/miui/milk/service/CloudBackupService$TaskItem;)V
    .locals 4
    .parameter "taskItem"

    .prologue
    .line 414
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 415
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "date"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 416
    const-string v1, "status"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    iget-wide v2, p1, Lcom/miui/milk/service/CloudBackupService$TaskItem;->id:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/milk/storage/ProgressTrackerStore;->updateTaskDetail(JLandroid/content/ContentValues;)V

    .line 418
    return-void
.end method

.method private callbackReturn(Lcom/miui/milk/service/CloudBackupService$TaskItem;)I
    .locals 1
    .parameter "taskItem"

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/miui/milk/service/CloudBackupService;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/milk/service/CloudBackupService;->updateTaskItemStatus(Lcom/miui/milk/service/CloudBackupService$TaskItem;I)V

    .line 332
    const/4 v0, 0x0

    .line 334
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clearAllNotifications()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f06000c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 171
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f060020

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 172
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f06000e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 173
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f06001e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 174
    return-void
.end method

.method private clearBackupProgressNotification()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f06000c

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 217
    return-void
.end method

.method private clearRestoreProgressNotification()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f060020

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 230
    return-void
.end method

.method private createNewTask(I)J
    .locals 4
    .parameter "taskType"

    .prologue
    .line 339
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 340
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v1, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    const-string v1, "date"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 343
    const-string v1, "status"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 344
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    invoke-virtual {v1, v0}, Lcom/miui/milk/storage/ProgressTrackerStore;->addTask(Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method private createNewTaskItem(JLcom/miui/milk/common/AppInfo;)Lcom/miui/milk/service/CloudBackupService$TaskItem;
    .locals 3
    .parameter "taskItemId"
    .parameter "appInfo"

    .prologue
    .line 348
    new-instance v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/milk/service/CloudBackupService$TaskItem;-><init>(Lcom/miui/milk/service/CloudBackupService$1;)V

    .line 349
    .local v0, newTaskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    iput-wide p1, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->id:J

    .line 350
    iget-wide v1, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    iput-wide v1, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->taskId:J

    .line 351
    iget-object v1, p3, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->name:Ljava/lang/String;

    .line 352
    iget-object v1, p3, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->title:Ljava/lang/String;

    .line 353
    const-string v1, "ADDRESSBOOK"

    iget-object v2, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 354
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mAbController:Lcom/miui/milk/control/cloud/AddressBookCloudController;

    iput-object v1, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->baseCloudController:Lcom/miui/milk/control/cloud/BaseCloudController;

    .line 364
    :cond_0
    :goto_0
    return-object v0

    .line 355
    :cond_1
    const-string v1, "CALLLOG"

    iget-object v2, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mCcController:Lcom/miui/milk/control/cloud/CalllogCloudController;

    iput-object v1, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->baseCloudController:Lcom/miui/milk/control/cloud/BaseCloudController;

    goto :goto_0

    .line 357
    :cond_2
    const-string v1, "SMS"

    iget-object v2, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 358
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mScController:Lcom/miui/milk/control/cloud/SmsCloudController;

    iput-object v1, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->baseCloudController:Lcom/miui/milk/control/cloud/BaseCloudController;

    goto :goto_0

    .line 359
    :cond_3
    const-string v1, "WIFI"

    iget-object v2, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 360
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWifiController:Lcom/miui/milk/control/cloud/WifiCloudController;

    iput-object v1, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->baseCloudController:Lcom/miui/milk/control/cloud/BaseCloudController;

    goto :goto_0

    .line 361
    :cond_4
    const-string v1, "NOTE"

    iget-object v2, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mNcController:Lcom/miui/milk/control/cloud/NoteCloudController;

    iput-object v1, v0, Lcom/miui/milk/service/CloudBackupService$TaskItem;->baseCloudController:Lcom/miui/milk/control/cloud/BaseCloudController;

    goto :goto_0
.end method

.method private findlostContact(Lcom/miui/milk/service/CloudBackupService$TaskItem;)V
    .locals 3
    .parameter "taskItem"

    .prologue
    .line 820
    invoke-direct {p0, p1}, Lcom/miui/milk/service/CloudBackupService;->beginTaskItemRunning(Lcom/miui/milk/service/CloudBackupService$TaskItem;)V

    .line 823
    new-instance v0, Lcom/miui/milk/service/CloudBackupService$3;

    invoke-direct {v0, p0, p1}, Lcom/miui/milk/service/CloudBackupService$3;-><init>(Lcom/miui/milk/service/CloudBackupService;Lcom/miui/milk/service/CloudBackupService$TaskItem;)V

    .line 864
    .local v0, callback:Lcom/miui/milk/control/callback/AsyncTaskCallback;
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 865
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mAbController:Lcom/miui/milk/control/cloud/AddressBookCloudController;

    invoke-virtual {v1}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->clearPrepared()V

    .line 866
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mAbController:Lcom/miui/milk/control/cloud/AddressBookCloudController;

    iget-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mContactList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->importFindlostContacts(Lcom/miui/milk/control/callback/AsyncTaskCallback;Ljava/util/ArrayList;)V

    .line 867
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 868
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 870
    :cond_0
    return-void
.end method

.method private initTaskMaxInfo(I)V
    .locals 4
    .parameter "max"

    .prologue
    .line 387
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 388
    .local v0, cv1:Landroid/content/ContentValues;
    const-string v1, "max"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    const-string v1, "description"

    const v2, 0x7f060043

    invoke-virtual {p0, v2}, Lcom/miui/milk/service/CloudBackupService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    iget-wide v2, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/milk/storage/ProgressTrackerStore;->updateTask(JLandroid/content/ContentValues;)V

    .line 391
    return-void
.end method

.method private initTaskVariables()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 368
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mPendingList:Ljava/util/ArrayList;

    .line 370
    iput v2, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    .line 371
    iput-boolean v2, p0, Lcom/miui/milk/service/CloudBackupService;->mCanceled:Z

    .line 372
    iput-boolean v2, p0, Lcom/miui/milk/service/CloudBackupService;->mAutoBackup:Z

    .line 373
    return-void
.end method

.method private restoreTaskItem(Lcom/miui/milk/service/CloudBackupService$TaskItem;)V
    .locals 3
    .parameter "taskItem"

    .prologue
    .line 685
    invoke-direct {p0, p1}, Lcom/miui/milk/service/CloudBackupService;->beginTaskItemRunning(Lcom/miui/milk/service/CloudBackupService$TaskItem;)V

    .line 688
    new-instance v0, Lcom/miui/milk/service/CloudBackupService$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/milk/service/CloudBackupService$2;-><init>(Lcom/miui/milk/service/CloudBackupService;Lcom/miui/milk/service/CloudBackupService$TaskItem;)V

    .line 729
    .local v0, callback:Lcom/miui/milk/control/callback/AsyncTaskCallback;
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 730
    iget-object v1, p1, Lcom/miui/milk/service/CloudBackupService$TaskItem;->baseCloudController:Lcom/miui/milk/control/cloud/BaseCloudController;

    invoke-virtual {v1}, Lcom/miui/milk/control/cloud/BaseCloudController;->clearPrepared()V

    .line 731
    iget-object v1, p1, Lcom/miui/milk/service/CloudBackupService$TaskItem;->baseCloudController:Lcom/miui/milk/control/cloud/BaseCloudController;

    iget-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->sharedPref:Landroid/content/SharedPreferences;

    invoke-virtual {v1, v0, v2}, Lcom/miui/milk/control/cloud/BaseCloudController;->read(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)V

    .line 732
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 735
    :cond_0
    return-void
.end method

.method private runBackup()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    .line 484
    iget-boolean v9, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    if-eqz v9, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    iput-boolean v11, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    .line 488
    iput-boolean v11, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskSucceed:Z

    .line 489
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->clearAllNotifications()V

    .line 492
    iget-object v9, p0, Lcom/miui/milk/service/CloudBackupService;->mAppInfos:Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    .line 493
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v9, p0, Lcom/miui/milk/service/CloudBackupService;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 494
    iget-object v9, p0, Lcom/miui/milk/service/CloudBackupService;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/common/AppInfo;

    .line 495
    .local v0, appInfo:Lcom/miui/milk/common/AppInfo;
    iget-boolean v9, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    if-eqz v9, :cond_2

    .line 497
    iget v9, v0, Lcom/miui/milk/common/AppInfo;->type:I

    packed-switch v9, :pswitch_data_0

    .line 493
    :cond_2
    :goto_2
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 503
    :pswitch_1
    invoke-direct {p0, v0, v11}, Lcom/miui/milk/service/CloudBackupService;->addTaskDetail(Lcom/miui/milk/common/AppInfo;I)J

    move-result-wide v7

    .line 504
    .local v7, taskItemId:J
    const-wide/16 v9, -0x1

    cmp-long v9, v7, v9

    if-eqz v9, :cond_2

    .line 505
    invoke-direct {p0, v7, v8, v0}, Lcom/miui/milk/service/CloudBackupService;->createNewTaskItem(JLcom/miui/milk/common/AppInfo;)Lcom/miui/milk/service/CloudBackupService$TaskItem;

    move-result-object v4

    .line 506
    .local v4, newTaskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    iget-object v9, p0, Lcom/miui/milk/service/CloudBackupService;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 513
    .end local v0           #appInfo:Lcom/miui/milk/common/AppInfo;
    .end local v4           #newTaskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    .end local v7           #taskItemId:J
    :cond_3
    iget-object v9, p0, Lcom/miui/milk/service/CloudBackupService;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/milk/service/CloudBackupService$TaskItem;

    .line 514
    .local v6, taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    iget-object v9, v6, Lcom/miui/milk/service/CloudBackupService$TaskItem;->baseCloudController:Lcom/miui/milk/control/cloud/BaseCloudController;

    invoke-virtual {v9}, Lcom/miui/milk/control/cloud/BaseCloudController;->clearPrepared()V

    .line 515
    iget-object v9, v6, Lcom/miui/milk/service/CloudBackupService$TaskItem;->baseCloudController:Lcom/miui/milk/control/cloud/BaseCloudController;

    invoke-virtual {v9}, Lcom/miui/milk/control/cloud/BaseCloudController;->calculateSyncSize()I

    move-result v5

    .line 517
    .local v5, syncSize:I
    iget v9, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    add-int/2addr v9, v5

    iput v9, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    .line 518
    div-int/lit16 v1, v5, 0xfa

    .line 519
    .local v1, batches:I
    mul-int/lit16 v9, v1, 0xfa

    if-le v5, v9, :cond_4

    .line 520
    add-int/lit8 v1, v1, 0x1

    .line 525
    :cond_4
    iget v9, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    mul-int/lit8 v10, v1, 0xa

    add-int/2addr v9, v10

    iput v9, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    .line 527
    iget v9, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    add-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    goto :goto_3

    .line 530
    .end local v1           #batches:I
    .end local v5           #syncSize:I
    .end local v6           #taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    :cond_5
    iget-wide v9, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_6

    .line 531
    iget v9, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    invoke-direct {p0, v9}, Lcom/miui/milk/service/CloudBackupService;->initTaskMaxInfo(I)V

    .line 536
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_6
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->startTaskProgressStatus()V

    .line 537
    iget-object v9, p0, Lcom/miui/milk/service/CloudBackupService;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/milk/service/CloudBackupService$TaskItem;

    .line 538
    .restart local v6       #taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    iget-boolean v9, p0, Lcom/miui/milk/service/CloudBackupService;->mCanceled:Z

    if-eqz v9, :cond_7

    .line 539
    const/4 v9, -0x1

    invoke-direct {p0, v6, v9}, Lcom/miui/milk/service/CloudBackupService;->updateTaskItemStatus(Lcom/miui/milk/service/CloudBackupService$TaskItem;I)V

    goto :goto_4

    .line 543
    :cond_7
    invoke-direct {p0, v6}, Lcom/miui/milk/service/CloudBackupService;->backupTaskItem(Lcom/miui/milk/service/CloudBackupService$TaskItem;)V

    .line 544
    iget-object v9, p0, Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    iget-wide v10, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    invoke-virtual {v9, v10, v11}, Lcom/miui/milk/storage/ProgressTrackerStore;->increaseTaskProcessCount(J)V

    goto :goto_4

    .line 547
    .end local v6           #taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    :cond_8
    iget v9, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    invoke-direct {p0, v9}, Lcom/miui/milk/service/CloudBackupService;->stopTaskProgressStatus(I)V

    .line 549
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    .line 550
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->clearBackupProgressNotification()V

    .line 551
    iget-boolean v9, p0, Lcom/miui/milk/service/CloudBackupService;->mCanceled:Z

    if-nez v9, :cond_0

    .line 552
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->showBackupFinishedNotification()V

    goto/16 :goto_0

    .line 497
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private runFindlostContact()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 786
    iget-boolean v2, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    if-eqz v2, :cond_1

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    iput-boolean v3, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    .line 790
    iput-boolean v3, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskSucceed:Z

    .line 791
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->clearAllNotifications()V

    .line 794
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->startTaskProgressStatus()V

    .line 796
    iput v4, p0, Lcom/miui/milk/service/CloudBackupService;->mRestoreTaskItemIndex:I

    .line 797
    iget-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/milk/service/CloudBackupService$TaskItem;

    .line 798
    .local v1, taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    iget-boolean v2, p0, Lcom/miui/milk/service/CloudBackupService;->mCanceled:Z

    if-eqz v2, :cond_2

    .line 799
    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/miui/milk/service/CloudBackupService;->updateTaskItemStatus(Lcom/miui/milk/service/CloudBackupService$TaskItem;I)V

    goto :goto_1

    .line 803
    :cond_2
    const-string v2, "ADDRESSBOOK"

    iget-object v3, v1, Lcom/miui/milk/service/CloudBackupService$TaskItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 804
    invoke-direct {p0, v1}, Lcom/miui/milk/service/CloudBackupService;->findlostContact(Lcom/miui/milk/service/CloudBackupService$TaskItem;)V

    .line 806
    :cond_3
    iget v2, p0, Lcom/miui/milk/service/CloudBackupService;->mRestoreTaskItemIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/milk/service/CloudBackupService;->mRestoreTaskItemIndex:I

    goto :goto_1

    .line 810
    .end local v1           #taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    :cond_4
    const/16 v2, 0x64

    invoke-direct {p0, v2}, Lcom/miui/milk/service/CloudBackupService;->stopTaskProgressStatus(I)V

    .line 812
    iput-boolean v4, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    .line 813
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->clearRestoreProgressNotification()V

    .line 814
    iget-boolean v2, p0, Lcom/miui/milk/service/CloudBackupService;->mCanceled:Z

    if-nez v2, :cond_0

    .line 815
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->showRestoreFinishedNotification()V

    goto :goto_0
.end method

.method private runRestore()V
    .locals 13

    .prologue
    const/16 v12, 0x64

    const/4 v8, 0x1

    const/4 v11, 0x0

    .line 622
    iget-boolean v7, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    if-eqz v7, :cond_1

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    iput-boolean v8, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    .line 626
    iput-boolean v8, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskSucceed:Z

    .line 627
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->clearAllNotifications()V

    .line 630
    iget-object v7, p0, Lcom/miui/milk/service/CloudBackupService;->mAppInfos:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    .line 631
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v7, p0, Lcom/miui/milk/service/CloudBackupService;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 632
    iget-object v7, p0, Lcom/miui/milk/service/CloudBackupService;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/milk/common/AppInfo;

    .line 633
    .local v0, appInfo:Lcom/miui/milk/common/AppInfo;
    iget-boolean v7, v0, Lcom/miui/milk/common/AppInfo;->checked:Z

    if-eqz v7, :cond_2

    .line 636
    iget v7, v0, Lcom/miui/milk/common/AppInfo;->type:I

    packed-switch v7, :pswitch_data_0

    .line 631
    :cond_2
    :goto_2
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 642
    :pswitch_1
    const/4 v7, 0x2

    invoke-direct {p0, v0, v7}, Lcom/miui/milk/service/CloudBackupService;->addTaskDetail(Lcom/miui/milk/common/AppInfo;I)J

    move-result-wide v5

    .line 643
    .local v5, taskItemId:J
    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2

    .line 644
    invoke-direct {p0, v5, v6, v0}, Lcom/miui/milk/service/CloudBackupService;->createNewTaskItem(JLcom/miui/milk/common/AppInfo;)Lcom/miui/milk/service/CloudBackupService$TaskItem;

    move-result-object v3

    .line 645
    .local v3, newTaskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    iget-object v7, p0, Lcom/miui/milk/service/CloudBackupService;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    iget v7, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    goto :goto_2

    .line 656
    .end local v0           #appInfo:Lcom/miui/milk/common/AppInfo;
    .end local v3           #newTaskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    .end local v5           #taskItemId:J
    :cond_3
    iget-wide v7, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    .line 657
    invoke-direct {p0, v12}, Lcom/miui/milk/service/CloudBackupService;->initTaskMaxInfo(I)V

    .line 661
    .end local v1           #i:I
    :cond_4
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->startTaskProgressStatus()V

    .line 663
    iput v11, p0, Lcom/miui/milk/service/CloudBackupService;->mRestoreTaskItemIndex:I

    .line 664
    iget-object v7, p0, Lcom/miui/milk/service/CloudBackupService;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/milk/service/CloudBackupService$TaskItem;

    .line 665
    .local v4, taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    iget-boolean v7, p0, Lcom/miui/milk/service/CloudBackupService;->mCanceled:Z

    if-eqz v7, :cond_5

    .line 666
    const/4 v7, -0x1

    invoke-direct {p0, v4, v7}, Lcom/miui/milk/service/CloudBackupService;->updateTaskItemStatus(Lcom/miui/milk/service/CloudBackupService$TaskItem;I)V

    goto :goto_3

    .line 670
    :cond_5
    invoke-direct {p0, v4}, Lcom/miui/milk/service/CloudBackupService;->restoreTaskItem(Lcom/miui/milk/service/CloudBackupService$TaskItem;)V

    .line 671
    iget v7, p0, Lcom/miui/milk/service/CloudBackupService;->mRestoreTaskItemIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/miui/milk/service/CloudBackupService;->mRestoreTaskItemIndex:I

    goto :goto_3

    .line 675
    .end local v4           #taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    :cond_6
    invoke-direct {p0, v12}, Lcom/miui/milk/service/CloudBackupService;->stopTaskProgressStatus(I)V

    .line 677
    iput-boolean v11, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    .line 678
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->clearRestoreProgressNotification()V

    .line 679
    iget-boolean v7, p0, Lcom/miui/milk/service/CloudBackupService;->mCanceled:Z

    if-nez v7, :cond_0

    .line 680
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->showRestoreFinishedNotification()V

    goto/16 :goto_0

    .line 636
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private runTask(Ljava/util/ArrayList;II)J
    .locals 7
    .parameter
    .parameter "taskType"
    .parameter "messageType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/common/AppInfo;",
            ">;II)J"
        }
    .end annotation

    .prologue
    .local p1, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/common/AppInfo;>;"
    const-wide/16 v5, 0x0

    .line 454
    iget-boolean v1, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    if-eqz v1, :cond_0

    move-wide v1, v5

    .line 471
    :goto_0
    return-wide v1

    .line 457
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/service/CloudBackupService;->mAppInfos:Ljava/util/ArrayList;

    .line 458
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->initTaskVariables()V

    .line 459
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mAppInfos:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 460
    iget-wide v1, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    .line 462
    invoke-direct {p0, p2}, Lcom/miui/milk/service/CloudBackupService;->createNewTask(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    .line 463
    iget-wide v1, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 464
    const-string v1, "CloudBackupService"

    const-string v2, "Error: runBackup "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v1, v5

    .line 465
    goto :goto_0

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mServiceHandler:Lcom/miui/milk/service/CloudBackupService$ServiceHandler;

    invoke-virtual {v1, p3}, Lcom/miui/milk/service/CloudBackupService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 470
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mServiceHandler:Lcom/miui/milk/service/CloudBackupService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/miui/milk/service/CloudBackupService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 471
    iget-wide v1, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    goto :goto_0
.end method

.method private showBackupFinishedNotification()V
    .locals 7

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskSucceed:Z

    if-eqz v0, :cond_0

    .line 179
    const v0, 0x7f060069

    invoke-virtual {p0, v0}, Lcom/miui/milk/service/CloudBackupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 183
    .local v2, text:Ljava/lang/CharSequence;
    :goto_0
    const v1, 0x7f02000d

    .line 184
    .local v1, icon:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 186
    .local v3, when:J
    const/4 v5, 0x1

    const v6, 0x7f06000e

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/service/CloudBackupService;->showResultNotification(ILjava/lang/CharSequence;JII)V

    .line 187
    return-void

    .line 181
    .end local v1           #icon:I
    .end local v2           #text:Ljava/lang/CharSequence;
    .end local v3           #when:J
    :cond_0
    const v0, 0x7f06006a

    invoke-virtual {p0, v0}, Lcom/miui/milk/service/CloudBackupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2       #text:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private showBackupProgressNotification()V
    .locals 7

    .prologue
    const v6, 0x7f06000c

    .line 204
    iget-boolean v0, p0, Lcom/miui/milk/service/CloudBackupService;->mAutoBackup:Z

    if-eqz v0, :cond_0

    .line 205
    const v0, 0x7f060082

    invoke-virtual {p0, v0}, Lcom/miui/milk/service/CloudBackupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 209
    .local v2, text:Ljava/lang/CharSequence;
    :goto_0
    const v1, 0x7f02000d

    .line 210
    .local v1, icon:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 212
    .local v3, when:J
    const/4 v5, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/service/CloudBackupService;->showProgressNotification(ILjava/lang/CharSequence;JII)V

    .line 213
    return-void

    .line 207
    .end local v1           #icon:I
    .end local v2           #text:Ljava/lang/CharSequence;
    .end local v3           #when:J
    :cond_0
    invoke-virtual {p0, v6}, Lcom/miui/milk/service/CloudBackupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2       #text:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private showProgressNotification(ILjava/lang/CharSequence;JII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 235
    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 237
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/milk/ui/ProgressPageActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    const-string v2, "TASK_ID"

    iget-wide v3, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 239
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 241
    const/high16 v2, 0x800

    invoke-static {p0, p5, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 244
    const v2, 0x7f060025

    invoke-virtual {p0, v2}, Lcom/miui/milk/service/CloudBackupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p0, v2, p2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 245
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v1, p6, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 246
    return-void
.end method

.method private showRestoreFinishedNotification()V
    .locals 7

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskSucceed:Z

    if-eqz v0, :cond_0

    .line 192
    const v0, 0x7f06006b

    invoke-virtual {p0, v0}, Lcom/miui/milk/service/CloudBackupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 196
    .local v2, text:Ljava/lang/CharSequence;
    :goto_0
    const v1, 0x7f02000d

    .line 197
    .local v1, icon:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 199
    .local v3, when:J
    const/4 v5, 0x2

    const v6, 0x7f06001e

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/service/CloudBackupService;->showResultNotification(ILjava/lang/CharSequence;JII)V

    .line 200
    return-void

    .line 194
    .end local v1           #icon:I
    .end local v2           #text:Ljava/lang/CharSequence;
    .end local v3           #when:J
    :cond_0
    const v0, 0x7f06006c

    invoke-virtual {p0, v0}, Lcom/miui/milk/service/CloudBackupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2       #text:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private showRestoreProgressNotification()V
    .locals 7

    .prologue
    const v6, 0x7f060020

    .line 221
    invoke-virtual {p0, v6}, Lcom/miui/milk/service/CloudBackupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 222
    .local v2, text:Ljava/lang/CharSequence;
    const v1, 0x7f02000d

    .line 223
    .local v1, icon:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 225
    .local v3, when:J
    const/4 v5, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/milk/service/CloudBackupService;->showProgressNotification(ILjava/lang/CharSequence;JII)V

    .line 226
    return-void
.end method

.method private showResultNotification(ILjava/lang/CharSequence;JII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/miui/milk/service/CloudBackupService;->mIsBackgroundRunning:Z

    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 254
    :cond_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 255
    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 257
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/milk/ui/ProgressResultActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 258
    const-string v2, "TASK_ID"

    iget-wide v3, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 259
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 261
    const/high16 v2, 0x800

    invoke-static {p0, p5, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 264
    const v2, 0x7f060025

    invoke-virtual {p0, v2}, Lcom/miui/milk/service/CloudBackupService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p0, v2, p2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 265
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v1, p6, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private startTaskProgressStatus()V
    .locals 4

    .prologue
    .line 394
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 395
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "date"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 396
    const-string v1, "status"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    iget-wide v2, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/milk/storage/ProgressTrackerStore;->updateTask(JLandroid/content/ContentValues;)V

    .line 398
    return-void
.end method

.method private stopTaskProgressStatus(I)V
    .locals 4
    .parameter "currentProgress"

    .prologue
    const-string v3, "status"

    .line 401
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 402
    .local v0, cv2:Landroid/content/ContentValues;
    const-string v1, "current"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 403
    iget-boolean v1, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskSucceed:Z

    if-eqz v1, :cond_0

    .line 404
    const-string v1, "status"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 410
    :goto_0
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    iget-wide v2, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/milk/storage/ProgressTrackerStore;->updateTask(JLandroid/content/ContentValues;)V

    .line 411
    return-void

    .line 405
    :cond_0
    iget-boolean v1, p0, Lcom/miui/milk/service/CloudBackupService;->mCanceled:Z

    if-eqz v1, :cond_1

    .line 406
    const-string v1, "status"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 408
    :cond_1
    const-string v1, "status"

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private updateTaskItemStatus(Lcom/miui/milk/service/CloudBackupService$TaskItem;I)V
    .locals 4
    .parameter "taskItem"
    .parameter "status"

    .prologue
    .line 421
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 422
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "status"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 423
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    iget-wide v2, p1, Lcom/miui/milk/service/CloudBackupService$TaskItem;->id:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/milk/storage/ProgressTrackerStore;->updateTaskDetail(JLandroid/content/ContentValues;)V

    .line 424
    return-void
.end method


# virtual methods
.method public cancelService()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/service/CloudBackupService;->mCanceled:Z

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskSucceed:Z

    .line 162
    return-void
.end method

.method public getFindlostAddressBook(Lcom/miui/milk/control/callback/AsyncTaskCallback;)Lcom/miui/milk/model/ContactProtos2$AddressBook;
    .locals 3
    .parameter "callback"

    .prologue
    .line 300
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 301
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mAbController:Lcom/miui/milk/control/cloud/AddressBookCloudController;

    invoke-virtual {v1}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->clearPrepared()V

    .line 302
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mAbController:Lcom/miui/milk/control/cloud/AddressBookCloudController;

    iget-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->sharedPref:Landroid/content/SharedPreferences;

    invoke-virtual {v1, p1, v2}, Lcom/miui/milk/control/cloud/AddressBookCloudController;->getFindlostAddressBook(Lcom/miui/milk/control/callback/AsyncTaskCallback;Landroid/content/SharedPreferences;)Lcom/miui/milk/model/ContactProtos2$AddressBook;

    move-result-object v0

    .line 303
    .local v0, res:Lcom/miui/milk/model/ContactProtos2$AddressBook;
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 306
    :cond_0
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 104
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/miui/milk/service/CloudBackupService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 105
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 107
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/miui/milk/service/CloudBackupService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 108
    .local v1, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 109
    iget-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 111
    new-instance v2, Lcom/miui/milk/storage/GroupTrackerStore;

    invoke-direct {v2, p0}, Lcom/miui/milk/storage/GroupTrackerStore;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mGroupVersionStore:Lcom/miui/milk/storage/GroupTrackerStore;

    .line 112
    new-instance v2, Lcom/miui/milk/storage/ContactTrackerStore;

    invoke-direct {v2, p0}, Lcom/miui/milk/storage/ContactTrackerStore;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mContactVersionStore:Lcom/miui/milk/storage/ContactTrackerStore;

    .line 113
    new-instance v2, Lcom/miui/milk/storage/CalllogTrackerStore;

    invoke-direct {v2, p0}, Lcom/miui/milk/storage/CalllogTrackerStore;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mCallsTrackerStore:Lcom/miui/milk/storage/CalllogTrackerStore;

    .line 114
    new-instance v2, Lcom/miui/milk/storage/SmsTrackerStore;

    invoke-direct {v2, p0}, Lcom/miui/milk/storage/SmsTrackerStore;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mSmsTrackerStore:Lcom/miui/milk/storage/SmsTrackerStore;

    .line 115
    new-instance v2, Lcom/miui/milk/storage/SmsBookmarkTrackerStore;

    invoke-direct {v2, p0}, Lcom/miui/milk/storage/SmsBookmarkTrackerStore;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mSmsBookmarkTrackerStore:Lcom/miui/milk/storage/SmsBookmarkTrackerStore;

    .line 116
    new-instance v2, Lcom/miui/milk/storage/NoteFolderTrackerStore;

    invoke-direct {v2, p0}, Lcom/miui/milk/storage/NoteFolderTrackerStore;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mNoteFolderTrackerStore:Lcom/miui/milk/storage/NoteFolderTrackerStore;

    .line 117
    new-instance v2, Lcom/miui/milk/storage/NoteTrackerStore;

    invoke-direct {v2, p0}, Lcom/miui/milk/storage/NoteTrackerStore;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mNoteTrackerStore:Lcom/miui/milk/storage/NoteTrackerStore;

    .line 119
    new-instance v2, Lcom/miui/milk/control/cloud/AddressBookCloudController;

    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService;->mGroupVersionStore:Lcom/miui/milk/storage/GroupTrackerStore;

    iget-object v4, p0, Lcom/miui/milk/service/CloudBackupService;->mContactVersionStore:Lcom/miui/milk/storage/ContactTrackerStore;

    invoke-direct {v2, p0, v3, v4}, Lcom/miui/milk/control/cloud/AddressBookCloudController;-><init>(Landroid/content/Context;Lcom/miui/milk/storage/GroupTrackerStore;Lcom/miui/milk/storage/ContactTrackerStore;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mAbController:Lcom/miui/milk/control/cloud/AddressBookCloudController;

    .line 120
    new-instance v2, Lcom/miui/milk/control/cloud/CalllogCloudController;

    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService;->mCallsTrackerStore:Lcom/miui/milk/storage/CalllogTrackerStore;

    invoke-direct {v2, p0, v3}, Lcom/miui/milk/control/cloud/CalllogCloudController;-><init>(Landroid/content/Context;Lcom/miui/milk/storage/CalllogTrackerStore;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mCcController:Lcom/miui/milk/control/cloud/CalllogCloudController;

    .line 121
    new-instance v2, Lcom/miui/milk/control/cloud/SmsCloudController;

    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService;->mSmsTrackerStore:Lcom/miui/milk/storage/SmsTrackerStore;

    iget-object v4, p0, Lcom/miui/milk/service/CloudBackupService;->mSmsBookmarkTrackerStore:Lcom/miui/milk/storage/SmsBookmarkTrackerStore;

    invoke-direct {v2, p0, v3, v4}, Lcom/miui/milk/control/cloud/SmsCloudController;-><init>(Landroid/content/Context;Lcom/miui/milk/storage/SmsTrackerStore;Lcom/miui/milk/storage/SmsBookmarkTrackerStore;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mScController:Lcom/miui/milk/control/cloud/SmsCloudController;

    .line 122
    new-instance v2, Lcom/miui/milk/control/cloud/WifiCloudController;

    invoke-direct {v2, p0}, Lcom/miui/milk/control/cloud/WifiCloudController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mWifiController:Lcom/miui/milk/control/cloud/WifiCloudController;

    .line 123
    new-instance v2, Lcom/miui/milk/control/cloud/NoteCloudController;

    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService;->mNoteFolderTrackerStore:Lcom/miui/milk/storage/NoteFolderTrackerStore;

    iget-object v4, p0, Lcom/miui/milk/service/CloudBackupService;->mNoteTrackerStore:Lcom/miui/milk/storage/NoteTrackerStore;

    invoke-direct {v2, p0, v3, v4}, Lcom/miui/milk/control/cloud/NoteCloudController;-><init>(Landroid/content/Context;Lcom/miui/milk/storage/NoteFolderTrackerStore;Lcom/miui/milk/storage/NoteTrackerStore;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mNcController:Lcom/miui/milk/control/cloud/NoteCloudController;

    .line 125
    new-instance v2, Lcom/miui/milk/storage/ProgressTrackerStore;

    invoke-direct {v2, p0}, Lcom/miui/milk/storage/ProgressTrackerStore;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    .line 126
    const-string v2, "SyncPref"

    invoke-virtual {p0, v2, v5}, Lcom/miui/milk/service/CloudBackupService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->sharedPref:Landroid/content/SharedPreferences;

    .line 131
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "CloudBackupService"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mThread:Landroid/os/HandlerThread;

    .line 132
    iget-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 134
    iget-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mServiceLooper:Landroid/os/Looper;

    .line 135
    new-instance v2, Lcom/miui/milk/service/CloudBackupService$ServiceHandler;

    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/miui/milk/service/CloudBackupService$ServiceHandler;-><init>(Lcom/miui/milk/service/CloudBackupService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mServiceHandler:Lcom/miui/milk/service/CloudBackupService$ServiceHandler;

    .line 137
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/miui/milk/service/CloudBackupService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/miui/milk/service/CloudBackupService;->mNM:Landroid/app/NotificationManager;

    .line 138
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 156
    const v0, 0x7f06005f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 157
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 142
    const-string v0, "CloudBackupService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public runAutoBackup(Ljava/util/ArrayList;)J
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/common/AppInfo;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/common/AppInfo;>;"
    invoke-virtual {p0, p1}, Lcom/miui/milk/service/CloudBackupService;->runBackup(Ljava/util/ArrayList;)J

    move-result-wide v0

    .line 428
    .local v0, res:J
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/milk/service/CloudBackupService;->mAutoBackup:Z

    .line 429
    return-wide v0
.end method

.method public runBackup(Ljava/util/ArrayList;)J
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/common/AppInfo;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/common/AppInfo;>;"
    const/4 v2, 0x1

    .line 475
    invoke-direct {p0, p1, v2, v2}, Lcom/miui/milk/service/CloudBackupService;->runTask(Ljava/util/ArrayList;II)J

    move-result-wide v0

    .line 476
    .local v0, taskId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 477
    const-string v2, "CloudBackupService"

    const-string v3, "Error: runBackup "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-wide/16 v2, 0x0

    .line 480
    :goto_0
    return-wide v2

    :cond_0
    move-wide v2, v0

    goto :goto_0
.end method

.method public runFindlost(Ljava/util/ArrayList;)J
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/model/ContactProtos2$Contact;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/model/ContactProtos2$Contact;>;"
    const-wide/16 v11, -0x1

    const v10, 0x7f06002d

    const/4 v7, 0x2

    const-wide/16 v8, 0x0

    const-string v13, "ADDRESSBOOK"

    .line 739
    iget-boolean v5, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    if-eqz v5, :cond_0

    move-wide v5, v8

    .line 782
    :goto_0
    return-wide v5

    .line 742
    :cond_0
    iput-object p1, p0, Lcom/miui/milk/service/CloudBackupService;->mContactList:Ljava/util/ArrayList;

    .line 743
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->initTaskVariables()V

    .line 744
    iget-wide v5, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    cmp-long v5, v5, v8

    if-nez v5, :cond_1

    .line 746
    invoke-direct {p0, v7}, Lcom/miui/milk/service/CloudBackupService;->createNewTask(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    .line 747
    iget-wide v5, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    cmp-long v5, v5, v11

    if-nez v5, :cond_1

    .line 748
    const-string v5, "CloudBackupService"

    const-string v6, "Error: runFindlost "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v5, v8

    .line 749
    goto :goto_0

    .line 755
    :cond_1
    iget-wide v5, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    cmp-long v5, v5, v8

    if-eqz v5, :cond_3

    .line 756
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 757
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "name"

    const-string v6, "ADDRESSBOOK"

    invoke-virtual {v0, v5, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v5, "title"

    invoke-virtual {p0, v10}, Lcom/miui/milk/service/CloudBackupService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v5, "type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 760
    const-string v5, "task_id"

    iget-wide v6, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 761
    const-string v5, "date"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 762
    const-string v5, "status"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 763
    iget-object v5, p0, Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;

    invoke-virtual {v5, v0}, Lcom/miui/milk/storage/ProgressTrackerStore;->addTaskDetail(Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 764
    .local v3, taskItemId:J
    cmp-long v5, v3, v11

    if-eqz v5, :cond_2

    .line 765
    new-instance v2, Lcom/miui/milk/service/CloudBackupService$TaskItem;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/miui/milk/service/CloudBackupService$TaskItem;-><init>(Lcom/miui/milk/service/CloudBackupService$1;)V

    .line 766
    .local v2, newTaskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    iput-wide v3, v2, Lcom/miui/milk/service/CloudBackupService$TaskItem;->id:J

    .line 767
    iget-wide v5, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    iput-wide v5, v2, Lcom/miui/milk/service/CloudBackupService$TaskItem;->taskId:J

    .line 768
    const-string v5, "ADDRESSBOOK"

    iput-object v13, v2, Lcom/miui/milk/service/CloudBackupService$TaskItem;->name:Ljava/lang/String;

    .line 769
    invoke-virtual {p0, v10}, Lcom/miui/milk/service/CloudBackupService;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/miui/milk/service/CloudBackupService$TaskItem;->title:Ljava/lang/String;

    .line 770
    iget-object v5, p0, Lcom/miui/milk/service/CloudBackupService;->mPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    iget v5, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/miui/milk/service/CloudBackupService;->mMaxCount:I

    .line 776
    .end local v2           #newTaskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;
    :cond_2
    iget-wide v5, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    cmp-long v5, v5, v8

    if-eqz v5, :cond_3

    .line 777
    const/16 v5, 0x64

    invoke-direct {p0, v5}, Lcom/miui/milk/service/CloudBackupService;->initTaskMaxInfo(I)V

    .line 780
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v3           #taskItemId:J
    :cond_3
    iget-object v5, p0, Lcom/miui/milk/service/CloudBackupService;->mServiceHandler:Lcom/miui/milk/service/CloudBackupService$ServiceHandler;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/miui/milk/service/CloudBackupService$ServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 781
    .local v1, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/miui/milk/service/CloudBackupService;->mServiceHandler:Lcom/miui/milk/service/CloudBackupService$ServiceHandler;

    invoke-virtual {v5, v1}, Lcom/miui/milk/service/CloudBackupService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 782
    iget-wide v5, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskId:J

    goto/16 :goto_0
.end method

.method public runRestore(Ljava/util/ArrayList;)J
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/milk/common/AppInfo;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/milk/common/AppInfo;>;"
    const/4 v2, 0x2

    .line 613
    invoke-direct {p0, p1, v2, v2}, Lcom/miui/milk/service/CloudBackupService;->runTask(Ljava/util/ArrayList;II)J

    move-result-wide v0

    .line 614
    .local v0, taskId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 615
    const-string v2, "CloudBackupService"

    const-string v3, "Error: runRestore "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const-wide/16 v2, 0x0

    .line 618
    :goto_0
    return-wide v2

    :cond_0
    move-wide v2, v0

    goto :goto_0
.end method

.method public switchToBackground()V
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/service/CloudBackupService;->mIsBackgroundRunning:Z

    .line 440
    invoke-virtual {p0}, Lcom/miui/milk/service/CloudBackupService;->taskIsRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget v0, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskType:I

    packed-switch v0, :pswitch_data_0

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 443
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->showBackupProgressNotification()V

    goto :goto_0

    .line 447
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->showRestoreProgressNotification()V

    goto :goto_0

    .line 441
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public switchToForeground()V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/milk/service/CloudBackupService;->mIsBackgroundRunning:Z

    .line 435
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService;->clearAllNotifications()V

    .line 436
    return-void
.end method

.method public taskIsRunning()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/miui/milk/service/CloudBackupService;->mTaskRunning:Z

    return v0
.end method
