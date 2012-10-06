.class Lcom/miui/player/helper/SleepModeManager$1;
.super Ljava/lang/Object;
.source "SleepModeManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 77
    iput-object p1, p0, Lcom/miui/player/helper/SleepModeManager$1;->this$0:Lcom/miui/player/helper/SleepModeManager;

    iput-object p2, p0, Lcom/miui/player/helper/SleepModeManager$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/player/helper/SleepModeManager$1;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/player/helper/SleepModeManager;->setSelectTime(Landroid/content/Context;I)V

    .line 81
    iget-object v0, p0, Lcom/miui/player/helper/SleepModeManager$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/player/helper/SleepModeManager;->deleteTimer(Landroid/content/Context;)V

    .line 82
    return-void
.end method
