.class Lcom/miui/milk/service/CloudBackupService$1;
.super Ljava/lang/Object;
.source "CloudBackupService.java"

# interfaces
.implements Lcom/miui/milk/control/callback/AsyncTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/milk/service/CloudBackupService;->backupTaskItem(Lcom/miui/milk/service/CloudBackupService$TaskItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/service/CloudBackupService;

.field final synthetic val$taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;


# direct methods
.method constructor <init>(Lcom/miui/milk/service/CloudBackupService;Lcom/miui/milk/service/CloudBackupService$TaskItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 560
    iput-object p1, p0, Lcom/miui/milk/service/CloudBackupService$1;->this$0:Lcom/miui/milk/service/CloudBackupService;

    iput-object p2, p0, Lcom/miui/milk/service/CloudBackupService$1;->val$taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run([Ljava/lang/String;)I
    .locals 9
    .parameter "values"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v8, "status"

    .line 563
    const-string v3, "EXCEPTION"

    aget-object v4, p1, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 566
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 567
    .local v2, cv:Landroid/content/ContentValues;
    const-string v3, "status"

    const/4 v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 568
    array-length v3, p1

    if-le v3, v5, :cond_0

    .line 569
    const-string v3, "status_code"

    aget-object v4, p1, v5

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 571
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService$1;->this$0:Lcom/miui/milk/service/CloudBackupService;

    #getter for: Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;
    invoke-static {v3}, Lcom/miui/milk/service/CloudBackupService;->access$600(Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/storage/ProgressTrackerStore;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/milk/service/CloudBackupService$1;->val$taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;

    iget-wide v4, v4, Lcom/miui/milk/service/CloudBackupService$TaskItem;->id:J

    invoke-virtual {v3, v4, v5, v2}, Lcom/miui/milk/storage/ProgressTrackerStore;->updateTaskDetail(JLandroid/content/ContentValues;)V

    .line 572
    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService$1;->this$0:Lcom/miui/milk/service/CloudBackupService;

    #setter for: Lcom/miui/milk/service/CloudBackupService;->mTaskSucceed:Z
    invoke-static {v3, v6}, Lcom/miui/milk/service/CloudBackupService;->access$702(Lcom/miui/milk/service/CloudBackupService;Z)Z

    .line 600
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService$1;->this$0:Lcom/miui/milk/service/CloudBackupService;

    iget-object v4, p0, Lcom/miui/milk/service/CloudBackupService$1;->val$taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;

    #calls: Lcom/miui/milk/service/CloudBackupService;->callbackReturn(Lcom/miui/milk/service/CloudBackupService$TaskItem;)I
    invoke-static {v3, v4}, Lcom/miui/milk/service/CloudBackupService;->access$800(Lcom/miui/milk/service/CloudBackupService;Lcom/miui/milk/service/CloudBackupService$TaskItem;)I

    move-result v3

    return v3

    .line 573
    .end local v2           #cv:Landroid/content/ContentValues;
    :cond_2
    const-string v3, "SUCCESS"

    aget-object v4, p1, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 578
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 579
    .restart local v2       #cv:Landroid/content/ContentValues;
    const-string v3, "status"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 580
    const-string v3, "c_new"

    aget-object v4, p1, v5

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 581
    const-string v3, "c_update"

    aget-object v4, p1, v7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 582
    const-string v3, "c_delete"

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 583
    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService$1;->this$0:Lcom/miui/milk/service/CloudBackupService;

    #getter for: Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;
    invoke-static {v3}, Lcom/miui/milk/service/CloudBackupService;->access$600(Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/storage/ProgressTrackerStore;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/milk/service/CloudBackupService$1;->val$taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;

    iget-wide v4, v4, Lcom/miui/milk/service/CloudBackupService$TaskItem;->id:J

    invoke-virtual {v3, v4, v5, v2}, Lcom/miui/milk/storage/ProgressTrackerStore;->updateTaskDetail(JLandroid/content/ContentValues;)V

    goto :goto_0

    .line 588
    .end local v2           #cv:Landroid/content/ContentValues;
    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 589
    .restart local v2       #cv:Landroid/content/ContentValues;
    aget-object v3, p1, v5

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 590
    .local v0, currentProgress:J
    const-string v3, "max"

    aget-object v4, p1, v7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 591
    const-string v3, "current"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 592
    aget-object v3, p1, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 593
    const-string v3, "description"

    aget-object v4, p1, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :cond_4
    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService$1;->this$0:Lcom/miui/milk/service/CloudBackupService;

    #getter for: Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;
    invoke-static {v3}, Lcom/miui/milk/service/CloudBackupService;->access$600(Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/storage/ProgressTrackerStore;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/milk/service/CloudBackupService$1;->val$taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;

    iget-wide v4, v4, Lcom/miui/milk/service/CloudBackupService$TaskItem;->id:J

    invoke-virtual {v3, v4, v5, v2}, Lcom/miui/milk/storage/ProgressTrackerStore;->updateTaskDetail(JLandroid/content/ContentValues;)V

    .line 596
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    .line 597
    iget-object v3, p0, Lcom/miui/milk/service/CloudBackupService$1;->this$0:Lcom/miui/milk/service/CloudBackupService;

    #getter for: Lcom/miui/milk/service/CloudBackupService;->mProgressTrackerStore:Lcom/miui/milk/storage/ProgressTrackerStore;
    invoke-static {v3}, Lcom/miui/milk/service/CloudBackupService;->access$600(Lcom/miui/milk/service/CloudBackupService;)Lcom/miui/milk/storage/ProgressTrackerStore;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/milk/service/CloudBackupService$1;->val$taskItem:Lcom/miui/milk/service/CloudBackupService$TaskItem;

    iget-wide v4, v4, Lcom/miui/milk/service/CloudBackupService$TaskItem;->taskId:J

    invoke-virtual {v3, v4, v5}, Lcom/miui/milk/storage/ProgressTrackerStore;->increaseTaskProcessCount(J)V

    goto/16 :goto_0
.end method
