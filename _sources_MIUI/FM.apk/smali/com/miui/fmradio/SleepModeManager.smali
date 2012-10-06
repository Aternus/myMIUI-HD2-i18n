.class public Lcom/miui/fmradio/SleepModeManager;
.super Ljava/lang/Object;
.source "SleepModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/SleepModeManager$OnSeekBarSleepModeListener;,
        Lcom/miui/fmradio/SleepModeManager$SleepModeChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_INTERVAL:I = 0xea60

.field private static final DEFAULT_TIME:I = 0x1e

.field private static final SLEEP_MODE_TIME:Ljava/lang/String; = "sleep_mode_time"


# instance fields
.field private mProgress:I

.field private mSleepModeChangedListener:Lcom/miui/fmradio/SleepModeManager$SleepModeChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/miui/fmradio/SleepModeManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/miui/fmradio/SleepModeManager;->mProgress:I

    return v0
.end method

.method static synthetic access$002(Lcom/miui/fmradio/SleepModeManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/miui/fmradio/SleepModeManager;->mProgress:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/fmradio/SleepModeManager;)Lcom/miui/fmradio/SleepModeManager$SleepModeChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/miui/fmradio/SleepModeManager;->mSleepModeChangedListener:Lcom/miui/fmradio/SleepModeManager$SleepModeChangedListener;

    return-object v0
.end method

.method public static deleteTimer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "action"

    .prologue
    .line 118
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 121
    .local v2, sender:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 122
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 123
    return-void
.end method

.method public static isSleepModeSet(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sleep_mode_time"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public static setSelectTime(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "progress"

    .prologue
    .line 111
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 112
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "sleep_mode_time"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 113
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    return-void
.end method


# virtual methods
.method public setSleepModeChangedListener(Lcom/miui/fmradio/SleepModeManager$SleepModeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/miui/fmradio/SleepModeManager;->mSleepModeChangedListener:Lcom/miui/fmradio/SleepModeManager$SleepModeChangedListener;

    .line 42
    return-void
.end method

.method public showSelectTimeDialog(Landroid/app/Activity;)V
    .locals 9
    .parameter "activity"

    .prologue
    const/4 v8, 0x0

    .line 51
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "sleep_mode_time"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/miui/fmradio/SleepModeManager;->mProgress:I

    .line 53
    iget v6, p0, Lcom/miui/fmradio/SleepModeManager;->mProgress:I

    if-lez v6, :cond_1

    .line 54
    invoke-static {p1, v8}, Lcom/miui/fmradio/SleepModeManager;->setSelectTime(Landroid/content/Context;I)V

    .line 55
    const-string v6, "com.miui.fmradio.quit"

    invoke-static {p1, v6}, Lcom/miui/fmradio/SleepModeManager;->deleteTimer(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    const v6, 0x7f050043

    invoke-static {p1, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 57
    iget-object v6, p0, Lcom/miui/fmradio/SleepModeManager;->mSleepModeChangedListener:Lcom/miui/fmradio/SleepModeManager$SleepModeChangedListener;

    if-eqz v6, :cond_0

    .line 58
    iget-object v6, p0, Lcom/miui/fmradio/SleepModeManager;->mSleepModeChangedListener:Lcom/miui/fmradio/SleepModeManager$SleepModeChangedListener;

    invoke-interface {v6}, Lcom/miui/fmradio/SleepModeManager$SleepModeChangedListener;->onSleepModeChanged()V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const/16 v6, 0x1e

    iput v6, p0, Lcom/miui/fmradio/SleepModeManager;->mProgress:I

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 64
    .local v1, mInflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030004

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 65
    .local v5, view:Landroid/view/View;
    const v6, 0x7f060019

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 66
    .local v4, seekbar:Landroid/widget/SeekBar;
    const v6, 0x7f060017

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 67
    .local v3, popupText:Landroid/widget/TextView;
    new-instance v2, Lcom/miui/fmradio/SleepModeManager$OnSeekBarSleepModeListener;

    invoke-direct {v2, p0, v4, v3}, Lcom/miui/fmradio/SleepModeManager$OnSeekBarSleepModeListener;-><init>(Lcom/miui/fmradio/SleepModeManager;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    .line 69
    .local v2, onSeekBarSleepModeListener:Lcom/miui/fmradio/SleepModeManager$OnSeekBarSleepModeListener;
    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 71
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f050042

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/miui/fmradio/SleepModeManager$3;

    invoke-direct {v8, p0, p1}, Lcom/miui/fmradio/SleepModeManager$3;-><init>(Lcom/miui/fmradio/SleepModeManager;Landroid/app/Activity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x104

    new-instance v8, Lcom/miui/fmradio/SleepModeManager$2;

    invoke-direct {v8, p0, p1}, Lcom/miui/fmradio/SleepModeManager$2;-><init>(Lcom/miui/fmradio/SleepModeManager;Landroid/app/Activity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/miui/fmradio/SleepModeManager$1;

    invoke-direct {v7, p0, p1}, Lcom/miui/fmradio/SleepModeManager$1;-><init>(Lcom/miui/fmradio/SleepModeManager;Landroid/app/Activity;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 107
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
