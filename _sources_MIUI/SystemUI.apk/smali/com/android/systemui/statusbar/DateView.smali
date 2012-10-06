.class public final Lcom/android/systemui/statusbar/DateView;
.super Landroid/widget/TextView;
.source "DateView.java"


# static fields
.field protected static mEnableAlternative:Z


# instance fields
.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/DateView;->mEnableAlternative:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DateView;->mUpdating:Z

    .line 34
    new-instance v0, Lcom/android/systemui/statusbar/DateView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/DateView$1;-><init>(Lcom/android/systemui/statusbar/DateView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/DateView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DateView;->updateClock()V

    return-void
.end method

.method private final updateClock()V
    .locals 4

    .prologue
    .line 61
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 62
    .local v1, now:Ljava/util/Date;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/statusbar/DateView;->mEnableAlternative:Z

    if-eqz v3, :cond_0

    const v3, 0x7f090014

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, dateFormat:Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/DateView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void

    .line 62
    .end local v0           #dateFormat:Ljava/lang/String;
    :cond_0
    const v3, 0x7f090015

    goto :goto_0
.end method


# virtual methods
.method public enableAlternative(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 86
    sput-boolean p1, Lcom/android/systemui/statusbar/DateView;->mEnableAlternative:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DateView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x7f060003

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/DateView;->setTextColor(I)V

    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DateView;->updateClock()V

    .line 91
    return-void

    .line 87
    :cond_0
    const v1, 0x106006c

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 52
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/DateView;->setUpdates(Z)V

    .line 58
    return-void
.end method

.method setUpdates(Z)V
    .locals 4
    .parameter "update"

    .prologue
    const/4 v3, 0x0

    .line 69
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/DateView;->mUpdating:Z

    if-eq p1, v1, :cond_0

    .line 70
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/DateView;->mUpdating:Z

    .line 71
    if-eqz p1, :cond_1

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/android/systemui/statusbar/DateView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DateView;->updateClock()V

    .line 82
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/DateView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/DateView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
