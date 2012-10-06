.class Lcom/miui/player/helper/SleepModeManager$3;
.super Ljava/lang/Object;
.source "SleepModeManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/helper/SleepModeManager;->showSelectTimeDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/SleepModeManager;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/miui/player/helper/SleepModeManager;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/miui/player/helper/SleepModeManager$3;->this$0:Lcom/miui/player/helper/SleepModeManager;

    iput-object p2, p0, Lcom/miui/player/helper/SleepModeManager$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v10, 0x0

    .line 57
    iget-object v1, p0, Lcom/miui/player/helper/SleepModeManager$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/player/helper/SleepModeManager$3;->this$0:Lcom/miui/player/helper/SleepModeManager;

    #getter for: Lcom/miui/player/helper/SleepModeManager;->mProgress:I
    invoke-static {v2}, Lcom/miui/player/helper/SleepModeManager;->access$000(Lcom/miui/player/helper/SleepModeManager;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/player/helper/SleepModeManager;->setSelectTime(Landroid/content/Context;I)V

    .line 59
    iget-object v1, p0, Lcom/miui/player/helper/SleepModeManager$3;->this$0:Lcom/miui/player/helper/SleepModeManager;

    #getter for: Lcom/miui/player/helper/SleepModeManager;->mProgress:I
    invoke-static {v1}, Lcom/miui/player/helper/SleepModeManager;->access$000(Lcom/miui/player/helper/SleepModeManager;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v9, v1, 0x3e8

    .line 60
    .local v9, updateTime:I
    new-instance v7, Landroid/content/Intent;

    const-string v1, "com.miui.music.quit"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v7, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/player/helper/SleepModeManager$3;->val$activity:Landroid/app/Activity;

    const/high16 v2, 0x800

    invoke-static {v1, v10, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 63
    .local v6, sender:Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/miui/player/helper/SleepModeManager$3;->val$activity:Landroid/app/Activity;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 65
    .local v0, alarmManager:Landroid/app/AlarmManager;
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, v9

    add-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 68
    iget-object v1, p0, Lcom/miui/player/helper/SleepModeManager$3;->val$activity:Landroid/app/Activity;

    const v2, 0x7f0800b6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 69
    .local v8, quitWaring:Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/player/helper/SleepModeManager$3;->val$activity:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/player/helper/SleepModeManager$3;->this$0:Lcom/miui/player/helper/SleepModeManager;

    #getter for: Lcom/miui/player/helper/SleepModeManager;->mProgress:I
    invoke-static {v3}, Lcom/miui/player/helper/SleepModeManager;->access$000(Lcom/miui/player/helper/SleepModeManager;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v8, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 71
    return-void
.end method
