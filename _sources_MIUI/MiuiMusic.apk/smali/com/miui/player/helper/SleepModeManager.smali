.class public Lcom/miui/player/helper/SleepModeManager;
.super Ljava/lang/Object;
.source "SleepModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/SleepModeManager$OnSeekBarSleepModeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_INTERVAL:I = 0xea60

.field private static final DEFAULT_TIME:I = 0x1e

.field private static sSleepModeTime:I


# instance fields
.field private mProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/miui/player/helper/SleepModeManager;->sSleepModeTime:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/helper/SleepModeManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/miui/player/helper/SleepModeManager;->mProgress:I

    return v0
.end method

.method static synthetic access$002(Lcom/miui/player/helper/SleepModeManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/miui/player/helper/SleepModeManager;->mProgress:I

    return p1
.end method

.method public static deleteTimer(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 95
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.miui.music.quit"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x800

    invoke-static {p0, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 98
    .local v2, sender:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 99
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 100
    sput v4, Lcom/miui/player/helper/SleepModeManager;->sSleepModeTime:I

    .line 101
    return-void
.end method

.method public static isSleepModeEnabled()Z
    .locals 1

    .prologue
    .line 104
    sget v0, Lcom/miui/player/helper/SleepModeManager;->sSleepModeTime:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSelectTime(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "progress"

    .prologue
    .line 90
    sput p1, Lcom/miui/player/helper/SleepModeManager;->sSleepModeTime:I

    .line 91
    return-void
.end method


# virtual methods
.method public showSelectTimeDialog(Landroid/app/Activity;)V
    .locals 9
    .parameter "activity"

    .prologue
    const/4 v8, 0x0

    .line 37
    sget v6, Lcom/miui/player/helper/SleepModeManager;->sSleepModeTime:I

    iput v6, p0, Lcom/miui/player/helper/SleepModeManager;->mProgress:I

    .line 38
    iget v6, p0, Lcom/miui/player/helper/SleepModeManager;->mProgress:I

    if-lez v6, :cond_0

    .line 39
    invoke-static {p1, v8}, Lcom/miui/player/helper/SleepModeManager;->setSelectTime(Landroid/content/Context;I)V

    .line 40
    invoke-static {p1}, Lcom/miui/player/helper/SleepModeManager;->deleteTimer(Landroid/content/Context;)V

    .line 41
    const v6, 0x7f0800b5

    invoke-static {p1, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 87
    :goto_0
    return-void

    .line 44
    :cond_0
    const/16 v6, 0x1e

    iput v6, p0, Lcom/miui/player/helper/SleepModeManager;->mProgress:I

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 46
    .local v1, mInflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030035

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 47
    .local v5, view:Landroid/view/View;
    const v6, 0x7f0c00ac

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 48
    .local v4, seekbar:Landroid/widget/SeekBar;
    const v6, 0x7f0c00b2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 49
    .local v3, popupText:Landroid/widget/TextView;
    new-instance v2, Lcom/miui/player/helper/SleepModeManager$OnSeekBarSleepModeListener;

    invoke-direct {v2, p0, v4, v3}, Lcom/miui/player/helper/SleepModeManager$OnSeekBarSleepModeListener;-><init>(Lcom/miui/player/helper/SleepModeManager;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    .line 51
    .local v2, onSeekBarSleepModeListener:Lcom/miui/player/helper/SleepModeManager$OnSeekBarSleepModeListener;
    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 53
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0800b4

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080042

    new-instance v8, Lcom/miui/player/helper/SleepModeManager$3;

    invoke-direct {v8, p0, p1}, Lcom/miui/player/helper/SleepModeManager$3;-><init>(Lcom/miui/player/helper/SleepModeManager;Landroid/app/Activity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f080043

    new-instance v8, Lcom/miui/player/helper/SleepModeManager$2;

    invoke-direct {v8, p0, p1}, Lcom/miui/player/helper/SleepModeManager$2;-><init>(Lcom/miui/player/helper/SleepModeManager;Landroid/app/Activity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/miui/player/helper/SleepModeManager$1;

    invoke-direct {v7, p0, p1}, Lcom/miui/player/helper/SleepModeManager$1;-><init>(Lcom/miui/player/helper/SleepModeManager;Landroid/app/Activity;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 86
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
