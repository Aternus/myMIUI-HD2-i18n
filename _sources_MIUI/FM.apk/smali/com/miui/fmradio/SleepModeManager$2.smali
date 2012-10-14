.class Lcom/miui/fmradio/SleepModeManager$2;
.super Ljava/lang/Object;
.source "SleepModeManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/SleepModeManager;->showSelectTimeDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/SleepModeManager;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/SleepModeManager;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/miui/fmradio/SleepModeManager$2;->this$0:Lcom/miui/fmradio/SleepModeManager;

    iput-object p2, p0, Lcom/miui/fmradio/SleepModeManager$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/fmradio/SleepModeManager$2;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/fmradio/SleepModeManager;->setSelectTime(Landroid/content/Context;I)V

    .line 96
    iget-object v0, p0, Lcom/miui/fmradio/SleepModeManager$2;->val$activity:Landroid/app/Activity;

    const-string v1, "com.miui.fmradio.quit"

    invoke-static {v0, v1}, Lcom/miui/fmradio/SleepModeManager;->deleteTimer(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    return-void
.end method
