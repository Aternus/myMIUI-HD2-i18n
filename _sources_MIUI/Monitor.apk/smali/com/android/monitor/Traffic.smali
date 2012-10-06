.class public Lcom/android/monitor/Traffic;
.super Landroid/app/Activity;
.source "Traffic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/monitor/DialogTrafficSettingItem$DialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/monitor/Traffic$AdjustTrafficSettingClickListener;,
        Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;,
        Lcom/android/monitor/Traffic$TrafficSettingClickListener;,
        Lcom/android/monitor/Traffic$AutoTurnOffMobileChangedListener;,
        Lcom/android/monitor/Traffic$MonitorEnabledChangedListener;
    }
.end annotation


# static fields
.field public static TRAFFIC_STATUS_NOTIFICATION_ID:I


# instance fields
.field private mAdjustUsedTraffic:Lcom/android/monitor/DialogTrafficSettingItem;

.field private mAutoTurnOffMobile:Landroid/widget/SlidingButton;

.field private mCallSmsDetailPanel:Landroid/view/View;

.field private final mCols:I

.field private mDateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mEnableMonitor:Landroid/widget/SlidingButton;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMobileBytes:[J

.field private mMonitorStartingDate:Lcom/android/monitor/DialogTrafficSettingItem;

.field private mRemainText:Landroid/widget/TextView;

.field private final mRows:I

.field private mSetTraffic:Lcom/android/monitor/DialogTrafficSettingItem;

.field private mStatisticScreen:Landroid/widget/ScreenView;

.field private mTableCells:[Landroid/widget/TextView;

.field private mThresholdText:Landroid/widget/TextView;

.field private mTrafficData:Lcom/android/internal/os/TrafficData;

.field private mTrafficDetailPanel:Landroid/widget/LinearLayout;

.field private mTrafficService:Lcom/android/internal/app/ITraffic;

.field private mTrafficSettingPanel:Landroid/view/View;

.field private mTrafficStatusBar:Lcom/android/monitor/TrafficStatusBar;

.field private mTrafficStatusPanel:Landroid/view/View;

.field private mUsedText:Landroid/widget/TextView;

.field private mWifiBytes:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const v0, 0x132dcb8

    sput v0, Lcom/android/monitor/Traffic;->TRAFFIC_STATUS_NOTIFICATION_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    iput v1, p0, Lcom/android/monitor/Traffic;->mRows:I

    .line 83
    iput v1, p0, Lcom/android/monitor/Traffic;->mCols:I

    .line 85
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/monitor/Traffic;->mMobileBytes:[J

    .line 86
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/monitor/Traffic;->mWifiBytes:[J

    .line 88
    new-instance v0, Lcom/android/monitor/Traffic$1;

    invoke-direct {v0, p0}, Lcom/android/monitor/Traffic$1;-><init>(Lcom/android/monitor/Traffic;)V

    iput-object v0, p0, Lcom/android/monitor/Traffic;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 322
    return-void
.end method

.method static synthetic access$000(Lcom/android/monitor/Traffic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/monitor/Traffic;->updateDuration()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/monitor/Traffic;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/monitor/Traffic;JJ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/monitor/Traffic;->convertValueToSeekBarProgress(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/monitor/Traffic;)Lcom/android/monitor/DialogTrafficSettingItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mSetTraffic:Lcom/android/monitor/DialogTrafficSettingItem;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/monitor/Traffic;)Lcom/android/monitor/DialogTrafficSettingItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mMonitorStartingDate:Lcom/android/monitor/DialogTrafficSettingItem;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/monitor/Traffic;)Lcom/android/monitor/DialogTrafficSettingItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mAdjustUsedTraffic:Lcom/android/monitor/DialogTrafficSettingItem;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/monitor/Traffic;)Lcom/android/internal/app/ITraffic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/internal/app/ITraffic;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/monitor/Traffic;Lcom/android/internal/os/TrafficData;)Lcom/android/internal/os/TrafficData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/monitor/Traffic;->mTrafficData:Lcom/android/internal/os/TrafficData;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/monitor/Traffic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/monitor/Traffic;->updateTrafficTable()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/monitor/Traffic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/monitor/Traffic;->updateMobilePackagePanel()V

    return-void
.end method

.method public static byteToMib(J)F
    .locals 2
    .parameter "value"

    .prologue
    .line 607
    long-to-float v0, p0

    const/high16 v1, 0x3f80

    mul-float/2addr v0, v1

    const/high16 v1, 0x4980

    div-float/2addr v0, v1

    return v0
.end method

.method private convertSeekBarProgressToValue(FI)F
    .locals 2
    .parameter "limit"
    .parameter "progress"

    .prologue
    .line 215
    mul-int/lit8 v0, p2, 0x32

    div-int/lit8 v0, v0, 0x64

    add-int/lit8 v0, v0, 0x32

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    return v0
.end method

.method private convertValueToSeekBarProgress(JJ)I
    .locals 6
    .parameter "limit"
    .parameter "threshold"

    .prologue
    const-wide/16 v4, 0x64

    const-wide/16 v2, 0x32

    .line 210
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    mul-long v0, v4, p3

    div-long/2addr v0, p1

    sub-long/2addr v0, v2

    mul-long/2addr v0, v4

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method private createTrafficTable()V
    .locals 7

    .prologue
    const v6, 0x7f020014

    .line 423
    iget-object v3, p0, Lcom/android/monitor/Traffic;->mTrafficDetailPanel:Landroid/widget/LinearLayout;

    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 424
    .local v1, table:Landroid/widget/LinearLayout;
    const/16 v3, 0x9

    new-array v3, v3, [Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/monitor/Traffic;->mTableCells:[Landroid/widget/TextView;

    .line 425
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    .line 426
    iget-object v3, p0, Lcom/android/monitor/Traffic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    const v4, 0x7f03000d

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 428
    .local v2, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/monitor/Traffic;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v5, v3, 0x0

    const v3, 0x7f090029

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v5

    .line 429
    iget-object v3, p0, Lcom/android/monitor/Traffic;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 430
    iget-object v4, p0, Lcom/android/monitor/Traffic;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v5, v3, 0x1

    const v3, 0x7f09002a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v5

    .line 431
    iget-object v3, p0, Lcom/android/monitor/Traffic;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 432
    iget-object v4, p0, Lcom/android/monitor/Traffic;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v5, v3, 0x2

    const v3, 0x7f09002b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    aput-object v3, v4, v5

    .line 433
    iget-object v3, p0, Lcom/android/monitor/Traffic;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x2

    aget-object v3, v3, v4

    const v4, 0x7f020013

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 434
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    .end local v2           #view:Landroid/view/View;
    :cond_0
    const v4, 0x7f03000e

    goto :goto_1

    .line 436
    :cond_1
    return-void
.end method

.method public static formatBytes(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "bytes"

    .prologue
    .line 581
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_0

    .line 582
    const v4, 0x7f070012

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 599
    :goto_0
    return-object v4

    .line 585
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 586
    .local v3, value:Ljava/lang/String;
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 587
    .local v1, dot:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    move-object v4, v3

    .line 588
    goto :goto_0

    .line 591
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .local v2, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 592
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 593
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_3

    .line 599
    .end local v0           #c:C
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 595
    .restart local v0       #c:C
    :cond_3
    const/16 v4, 0x30

    if-eq v0, v4, :cond_4

    move-object v4, v3

    .line 596
    goto :goto_0

    .line 591
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static formatElapsedTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "l"

    .prologue
    .line 611
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 612
    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 642
    .end local p0
    :goto_0
    return-object p0

    .line 614
    .restart local p0
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    .local v6, sb:Ljava/lang/StringBuilder;
    const-wide/16 v0, 0x0

    .local v0, days:J
    const-wide/16 v2, 0x0

    .local v2, hours:J
    const-wide/16 v4, 0x0

    .line 617
    .local v4, minutes:J
    const-wide/32 v7, 0x15180

    cmp-long v7, p1, v7

    if-lez v7, :cond_1

    .line 618
    const-wide/32 v0, 0x15180

    div-long v0, p1, v0

    .line 619
    const-wide/32 v7, 0x15180

    mul-long/2addr v7, v0

    sub-long/2addr p1, v7

    .line 621
    :cond_1
    const-wide/16 v7, 0xe10

    cmp-long v7, p1, v7

    if-lez v7, :cond_2

    .line 622
    const-wide/16 v2, 0xe10

    div-long v2, p1, v2

    .line 623
    const-wide/16 v7, 0xe10

    mul-long/2addr v7, v2

    sub-long/2addr p1, v7

    .line 625
    :cond_2
    const-wide/16 v7, 0x3c

    cmp-long v7, p1, v7

    if-lez v7, :cond_3

    .line 626
    const-wide/16 v4, 0x3c

    div-long v4, p1, v4

    .line 627
    const-wide/16 v7, 0x3c

    mul-long/2addr v7, v4

    sub-long/2addr p1, v7

    .line 630
    :cond_3
    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-eqz v7, :cond_4

    .line 631
    const-wide/16 v7, 0x1

    add-long/2addr v4, v7

    .line 634
    :cond_4
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-lez v7, :cond_6

    .line 635
    const v7, 0x7f070014

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .end local v0           #days:J
    aput-object v0, v8, v9

    const/4 v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v8, v0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    .end local v2           #hours:J
    :cond_5
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 636
    .restart local v0       #days:J
    .restart local v2       #hours:J
    .restart local p0
    :cond_6
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_7

    .line 637
    .end local v0           #days:J
    const v0, 0x7f070015

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .end local v2           #hours:J
    aput-object v2, v1, v7

    const/4 v2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 638
    .restart local v2       #hours:J
    .restart local p0
    :cond_7
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-lez v0, :cond_5

    .line 639
    const v0, 0x7f070016

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .end local v2           #hours:J
    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getCallTime(I)J
    .locals 14
    .parameter "callType"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 507
    invoke-virtual {p0}, Lcom/android/monitor/Traffic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "first_traffic_day"

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 509
    .local v11, trafficDay:I
    invoke-direct {p0, v11}, Lcom/android/monitor/Traffic;->getMonthTrafficStartDayInTimeMills(I)J

    move-result-wide v9

    .line 510
    .local v9, monthTrafficStartTimeMills:J
    invoke-direct {p0, v11}, Lcom/android/monitor/Traffic;->getMonthTrafficEndDayInTimeMills(I)J

    move-result-wide v7

    .line 511
    .local v7, monthTrafficEndTimeMills:J
    invoke-virtual {p0}, Lcom/android/monitor/Traffic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Traffic$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "SUM(duration)"

    aput-object v3, v2, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date > ? AND date <= ? AND type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 518
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 519
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 524
    :goto_0
    return-wide v0

    .line 522
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 524
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private getMonthTrafficEndDayInTimeMills(I)J
    .locals 5
    .parameter "trafficDay"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 565
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 566
    .local v0, now:Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 568
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 569
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 575
    :goto_0
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 576
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 577
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1

    .line 572
    :cond_0
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method private getMonthTrafficStartDayInTimeMills(I)J
    .locals 5
    .parameter "trafficDay"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 549
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 550
    .local v0, now:Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 552
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 559
    :goto_0
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 560
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 561
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1

    .line 555
    :cond_0
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 556
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method private getOutSmsCount()I
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 528
    invoke-virtual {p0}, Lcom/android/monitor/Traffic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "first_traffic_day"

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 530
    .local v11, trafficDay:I
    invoke-direct {p0, v11}, Lcom/android/monitor/Traffic;->getMonthTrafficStartDayInTimeMills(I)J

    move-result-wide v9

    .line 531
    .local v9, monthTrafficStartTimeMills:J
    invoke-direct {p0, v11}, Lcom/android/monitor/Traffic;->getMonthTrafficEndDayInTimeMills(I)J

    move-result-wide v7

    .line 532
    .local v7, monthTrafficEndTimeMills:J
    invoke-virtual {p0}, Lcom/android/monitor/Traffic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Traffic$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "SUM(amount)"

    aput-object v3, v2, v12

    const-string v3, "date > ? AND date <= ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 539
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 540
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 545
    :goto_0
    return v0

    .line 543
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v12

    .line 545
    goto :goto_0
.end method

.method public static mibToByte(F)J
    .locals 2
    .parameter "value"

    .prologue
    .line 603
    const/high16 v0, 0x4980

    mul-float/2addr v0, p0

    float-to-long v0, v0

    return-wide v0
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 5
    .parameter "v"
    .parameter "enabled"

    .prologue
    .line 345
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 347
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 348
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 349
    .local v2, vg:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 350
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/android/monitor/Traffic;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 349
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 353
    .end local v1           #i:I
    .end local v2           #vg:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setMobileStatusEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 332
    if-eqz p1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mTrafficSettingPanel:Landroid/view/View;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/monitor/Traffic;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 334
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mTrafficStatusPanel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 339
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mTrafficSettingPanel:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/android/monitor/Traffic;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 337
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mTrafficStatusPanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCallSmsPanel()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 489
    iget-object v4, p0, Lcom/android/monitor/Traffic;->mCallSmsDetailPanel:Landroid/view/View;

    const v5, 0x7f09000c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 490
    .local v1, outCall:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/monitor/Traffic;->mCallSmsDetailPanel:Landroid/view/View;

    const v5, 0x7f09000e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 491
    .local v0, inCall:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/monitor/Traffic;->mCallSmsDetailPanel:Landroid/view/View;

    const v5, 0x7f090010

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 493
    .local v2, outSms:Landroid/widget/TextView;
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/monitor/Traffic;->getCallTime(I)J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/android/monitor/Traffic;->formatElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    invoke-direct {p0, v6}, Lcom/android/monitor/Traffic;->getCallTime(I)J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/android/monitor/Traffic;->formatElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    invoke-direct {p0}, Lcom/android/monitor/Traffic;->getOutSmsCount()I

    move-result v3

    .line 497
    .local v3, sentNumber:I
    if-lez v3, :cond_0

    .line 498
    const v4, 0x7f070029

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/monitor/Traffic;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    :goto_0
    return-void

    .line 499
    :cond_0
    if-nez v3, :cond_1

    .line 500
    const v4, 0x7f070012

    invoke-virtual {p0, v4}, Lcom/android/monitor/Traffic;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 502
    :cond_1
    const-string v4, "Traffic"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOutboxSMS error, return negative value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateDuration()V
    .locals 12

    .prologue
    .line 439
    const v8, 0x7f09001a

    invoke-virtual {p0, v8}, Lcom/android/monitor/Traffic;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 440
    .local v4, message:Landroid/widget/TextView;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 442
    .local v6, now:Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/android/monitor/Traffic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "first_traffic_day"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 444
    .local v1, firstDay:I
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 445
    .local v7, year:I
    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 446
    .local v5, month:I
    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 447
    .local v0, day:I
    if-ne v0, v1, :cond_0

    .line 448
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    :goto_0
    return-void

    .line 449
    :cond_0
    if-le v0, v1, :cond_1

    .line 450
    const v8, 0x7f070001

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    add-int/lit8 v11, v5, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    add-int/lit8 v11, v5, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/monitor/Traffic;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 453
    :cond_1
    const/4 v8, 0x1

    sub-int v2, v5, v8

    .line 454
    .local v2, last_month:I
    move v3, v7

    .line 455
    .local v3, last_year:I
    if-nez v5, :cond_2

    .line 456
    const/16 v2, 0xb

    .line 457
    const/4 v8, 0x1

    sub-int v3, v7, v8

    .line 459
    :cond_2
    const v8, 0x7f070001

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    add-int/lit8 v11, v2, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    add-int/lit8 v11, v5, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Lcom/android/monitor/Traffic;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateMobilePackagePanel()V
    .locals 20

    .prologue
    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/android/monitor/Traffic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 357
    .local v11, cr:Landroid/content/ContentResolver;
    const-string v4, "enable_monitor_traffic"

    const/4 v5, 0x1

    invoke-static {v11, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v12, v4

    .line 358
    .local v12, enabled:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/monitor/Traffic;->mEnableMonitor:Landroid/widget/SlidingButton;

    move-object v4, v0

    invoke-virtual {v4, v12}, Landroid/widget/SlidingButton;->setChecked(Z)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/monitor/Traffic;->mAutoTurnOffMobile:Landroid/widget/SlidingButton;

    move-object v4, v0

    const-string v5, "auto_turn_off_mobile"

    const/4 v6, 0x0

    invoke-static {v11, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/SlidingButton;->setChecked(Z)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/monitor/Traffic;->mMonitorStartingDate:Lcom/android/monitor/DialogTrafficSettingItem;

    move-object v4, v0

    const v5, 0x7f070011

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "first_traffic_day"

    const/4 v9, 0x1

    invoke-static {v11, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/monitor/Traffic;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/monitor/DialogTrafficSettingItem;->setValue(Ljava/lang/String;)V

    .line 365
    if-eqz v12, :cond_5

    .line 366
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/monitor/Traffic;->setMobileStatusEnable(Z)V

    .line 367
    const-string v4, "mobile_traffic_limit"

    const-wide/32 v16, 0x3200000

    move-object v0, v11

    move-object v1, v4

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    .line 369
    .local v5, limit:J
    const-string v4, "mobile_traffic_threshold"

    const-wide/32 v16, 0x2800000

    move-object v0, v11

    move-object v1, v4

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    .line 372
    .local v9, threshold:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/monitor/Traffic;->mTrafficData:Lcom/android/internal/os/TrafficData;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/os/TrafficData;->getMobileTxBytes()[J

    move-result-object v4

    const/4 v7, 0x1

    aget-wide v16, v4, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/monitor/Traffic;->mTrafficData:Lcom/android/internal/os/TrafficData;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/os/TrafficData;->getMobileRxBytes()[J

    move-result-object v4

    const/4 v7, 0x1

    aget-wide v18, v4, v7

    add-long v7, v16, v18

    .line 374
    .local v7, used:J
    sub-long v13, v5, v7

    .line 377
    .local v13, remain:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/monitor/Traffic;->mTrafficStatusBar:Lcom/android/monitor/TrafficStatusBar;

    move-object v4, v0

    invoke-virtual/range {v4 .. v10}, Lcom/android/monitor/TrafficStatusBar;->setStatusValue(JJJ)V

    .line 378
    cmp-long v4, v7, v9

    if-gez v4, :cond_2

    const v4, 0x7f02001b

    move v15, v4

    .line 381
    .local v15, usedColor:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/monitor/Traffic;->mTrafficStatusBar:Lcom/android/monitor/TrafficStatusBar;

    move-object v4, v0

    invoke-virtual {v4, v15}, Lcom/android/monitor/TrafficStatusBar;->setStatusColor(I)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/monitor/Traffic;->mUsedText:Landroid/widget/TextView;

    move-object v4, v0

    new-instance v11, Ljava/lang/StringBuilder;

    .end local v11           #cr:Landroid/content/ContentResolver;
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f07001c

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/android/monitor/Traffic;->getString(I)Ljava/lang/String;

    .end local v15           #usedColor:I
    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-static {v0, v1, v2}, Lcom/android/monitor/Traffic;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .end local v7           #used:J
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/monitor/Traffic;->mSetTraffic:Lcom/android/monitor/DialogTrafficSettingItem;

    move-object v4, v0

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Lcom/android/monitor/Traffic;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .end local v5           #limit:J
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/monitor/DialogTrafficSettingItem;->setValue(Ljava/lang/String;)V

    .line 387
    const-wide/16 v16, 0x0

    cmp-long v4, v13, v16

    if-lez v4, :cond_4

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/monitor/Traffic;->mRemainText:Landroid/widget/TextView;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f07001a

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/monitor/Traffic;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    move-wide v1, v13

    invoke-static {v0, v1, v2}, Lcom/android/monitor/Traffic;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/monitor/Traffic;->mThresholdText:Landroid/widget/TextView;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f07001b

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/monitor/Traffic;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    move-wide v1, v9

    invoke-static {v0, v1, v2}, Lcom/android/monitor/Traffic;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    .end local v9           #threshold:J
    .end local v13           #remain:J
    :goto_4
    move-object/from16 v0, p0

    move v1, v12

    invoke-direct {v0, v1}, Lcom/android/monitor/Traffic;->updateTrafficScreenView(Z)V

    .line 399
    return-void

    .line 357
    .end local v12           #enabled:Z
    .restart local v11       #cr:Landroid/content/ContentResolver;
    :cond_0
    const/4 v4, 0x0

    move v12, v4

    goto/16 :goto_0

    .line 359
    .restart local v12       #enabled:Z
    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 378
    .restart local v5       #limit:J
    .restart local v7       #used:J
    .restart local v9       #threshold:J
    .restart local v13       #remain:J
    :cond_2
    cmp-long v4, v7, v5

    if-gez v4, :cond_3

    const v4, 0x7f02001a

    move v15, v4

    goto/16 :goto_2

    :cond_3
    const v4, 0x7f020019

    move v15, v4

    goto/16 :goto_2

    .line 390
    .end local v5           #limit:J
    .end local v7           #used:J
    .end local v11           #cr:Landroid/content/ContentResolver;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/monitor/Traffic;->mRemainText:Landroid/widget/TextView;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f07001d

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/monitor/Traffic;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide v0, v13

    neg-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/android/monitor/Traffic;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 395
    .end local v9           #threshold:J
    .end local v13           #remain:J
    .restart local v11       #cr:Landroid/content/ContentResolver;
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/monitor/Traffic;->setMobileStatusEnable(Z)V

    goto :goto_4
.end method

.method private updateTrafficScreenView(Z)V
    .locals 3
    .parameter "netWorkMonitorEnable"

    .prologue
    const/4 v2, 0x0

    .line 408
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mStatisticScreen:Landroid/widget/ScreenView;

    invoke-virtual {v0}, Landroid/widget/ScreenView;->removeAllScreens()V

    .line 409
    if-eqz p1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mStatisticScreen:Landroid/widget/ScreenView;

    iget-object v1, p0, Lcom/android/monitor/Traffic;->mTrafficDetailPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->addView(Landroid/view/View;)V

    .line 411
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mStatisticScreen:Landroid/widget/ScreenView;

    iget-object v1, p0, Lcom/android/monitor/Traffic;->mCallSmsDetailPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->addView(Landroid/view/View;)V

    .line 412
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mStatisticScreen:Landroid/widget/ScreenView;

    invoke-virtual {v0, v2}, Landroid/widget/ScreenView;->setCurrentScreen(I)V

    .line 413
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mStatisticScreen:Landroid/widget/ScreenView;

    invoke-virtual {v0, v2}, Landroid/widget/ScreenView;->setSeekBarVisibility(I)V

    .line 420
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mStatisticScreen:Landroid/widget/ScreenView;

    iget-object v1, p0, Lcom/android/monitor/Traffic;->mCallSmsDetailPanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->addView(Landroid/view/View;)V

    .line 416
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mStatisticScreen:Landroid/widget/ScreenView;

    invoke-virtual {v0, v2}, Landroid/widget/ScreenView;->setCurrentScreen(I)V

    .line 417
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mStatisticScreen:Landroid/widget/ScreenView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->setOverScrollRatio(F)V

    .line 418
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mStatisticScreen:Landroid/widget/ScreenView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScreenView;->setSeekBarVisibility(I)V

    goto :goto_0
.end method

.method private updateTrafficTable()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x3

    .line 468
    iget-object v4, p0, Lcom/android/monitor/Traffic;->mTrafficData:Lcom/android/internal/os/TrafficData;

    invoke-virtual {v4}, Lcom/android/internal/os/TrafficData;->getMobileTxBytes()[J

    move-result-object v3

    .line 469
    .local v3, txBytes:[J
    iget-object v4, p0, Lcom/android/monitor/Traffic;->mTrafficData:Lcom/android/internal/os/TrafficData;

    invoke-virtual {v4}, Lcom/android/internal/os/TrafficData;->getMobileRxBytes()[J

    move-result-object v2

    .line 470
    .local v2, rxBytes:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v9, :cond_0

    .line 471
    iget-object v4, p0, Lcom/android/monitor/Traffic;->mMobileBytes:[J

    aget-wide v5, v3, v0

    aget-wide v7, v2, v0

    add-long/2addr v5, v7

    aput-wide v5, v4, v0

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 473
    :cond_0
    iget-object v4, p0, Lcom/android/monitor/Traffic;->mTrafficData:Lcom/android/internal/os/TrafficData;

    invoke-virtual {v4}, Lcom/android/internal/os/TrafficData;->getWifiTxBytes()[J

    move-result-object v3

    .line 474
    iget-object v4, p0, Lcom/android/monitor/Traffic;->mTrafficData:Lcom/android/internal/os/TrafficData;

    invoke-virtual {v4}, Lcom/android/internal/os/TrafficData;->getWifiRxBytes()[J

    move-result-object v2

    .line 475
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_1

    .line 476
    iget-object v4, p0, Lcom/android/monitor/Traffic;->mWifiBytes:[J

    aget-wide v5, v3, v0

    aget-wide v7, v2, v0

    add-long/2addr v5, v7

    aput-wide v5, v4, v0

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 479
    :cond_1
    invoke-virtual {p0}, Lcom/android/monitor/Traffic;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f05

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, names:[Ljava/lang/String;
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v9, :cond_2

    .line 482
    iget-object v4, p0, Lcom/android/monitor/Traffic;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x0

    aget-object v4, v4, v5

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v4, p0, Lcom/android/monitor/Traffic;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/android/monitor/Traffic;->mMobileBytes:[J

    sub-int v6, v9, v0

    sub-int/2addr v6, v10

    aget-wide v5, v5, v6

    invoke-static {p0, v5, v6}, Lcom/android/monitor/Traffic;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v4, p0, Lcom/android/monitor/Traffic;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x2

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/android/monitor/Traffic;->mWifiBytes:[J

    sub-int v6, v9, v0

    sub-int/2addr v6, v10

    aget-wide v5, v5, v6

    invoke-static {p0, v5, v6}, Lcom/android/monitor/Traffic;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 486
    :cond_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 647
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 648
    invoke-virtual {p0}, Lcom/android/monitor/Traffic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_monitor_traffic"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 649
    invoke-direct {p0}, Lcom/android/monitor/Traffic;->updateMobilePackagePanel()V

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 650
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mEnableMonitor:Landroid/widget/SlidingButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SlidingButton;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x1080531

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v2, 0x7f03000b

    invoke-virtual {p0, v2}, Lcom/android/monitor/Traffic;->setContentView(I)V

    .line 102
    const-string v2, "traffic"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/ITraffic$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/ITraffic;

    move-result-object v2

    iput-object v2, p0, Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/internal/app/ITraffic;

    .line 103
    const v2, 0x7f09001d

    invoke-virtual {p0, v2}, Lcom/android/monitor/Traffic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SlidingButton;

    iput-object v2, p0, Lcom/android/monitor/Traffic;->mEnableMonitor:Landroid/widget/SlidingButton;

    .line 104
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mEnableMonitor:Landroid/widget/SlidingButton;

    new-instance v3, Lcom/android/monitor/Traffic$MonitorEnabledChangedListener;

    invoke-direct {v3, p0, v4}, Lcom/android/monitor/Traffic$MonitorEnabledChangedListener;-><init>(Lcom/android/monitor/Traffic;Lcom/android/monitor/Traffic$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/SlidingButton;->setOnCheckedChangedListener(Landroid/widget/SlidingButton$OnCheckedChangedListener;)V

    .line 106
    const v2, 0x7f09001f

    invoke-virtual {p0, v2}, Lcom/android/monitor/Traffic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/monitor/DialogTrafficSettingItem;

    iput-object v2, p0, Lcom/android/monitor/Traffic;->mSetTraffic:Lcom/android/monitor/DialogTrafficSettingItem;

    .line 107
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mSetTraffic:Lcom/android/monitor/DialogTrafficSettingItem;

    invoke-virtual {v2, v6}, Lcom/android/monitor/DialogTrafficSettingItem;->setBackgroundResource(I)V

    .line 108
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mSetTraffic:Lcom/android/monitor/DialogTrafficSettingItem;

    const v3, 0x7f070024

    invoke-virtual {p0, v3}, Lcom/android/monitor/Traffic;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/monitor/DialogTrafficSettingItem;->setKey(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mSetTraffic:Lcom/android/monitor/DialogTrafficSettingItem;

    new-instance v3, Lcom/android/monitor/Traffic$TrafficSettingClickListener;

    invoke-direct {v3, p0, v4}, Lcom/android/monitor/Traffic$TrafficSettingClickListener;-><init>(Lcom/android/monitor/Traffic;Lcom/android/monitor/Traffic$1;)V

    invoke-virtual {v2, v3}, Lcom/android/monitor/DialogTrafficSettingItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mSetTraffic:Lcom/android/monitor/DialogTrafficSettingItem;

    invoke-virtual {v2, p0}, Lcom/android/monitor/DialogTrafficSettingItem;->setOnDialogClosedListener(Lcom/android/monitor/DialogTrafficSettingItem$DialogClosedListener;)V

    .line 112
    const v2, 0x7f090021

    invoke-virtual {p0, v2}, Lcom/android/monitor/Traffic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/monitor/TrafficStatusBar;

    iput-object v2, p0, Lcom/android/monitor/Traffic;->mTrafficStatusBar:Lcom/android/monitor/TrafficStatusBar;

    .line 113
    const v2, 0x7f090022

    invoke-virtual {p0, v2}, Lcom/android/monitor/Traffic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/monitor/Traffic;->mUsedText:Landroid/widget/TextView;

    .line 114
    const v2, 0x7f090023

    invoke-virtual {p0, v2}, Lcom/android/monitor/Traffic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/monitor/Traffic;->mRemainText:Landroid/widget/TextView;

    .line 115
    const v2, 0x7f090024

    invoke-virtual {p0, v2}, Lcom/android/monitor/Traffic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/monitor/Traffic;->mThresholdText:Landroid/widget/TextView;

    .line 117
    const v2, 0x7f090026

    invoke-virtual {p0, v2}, Lcom/android/monitor/Traffic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SlidingButton;

    iput-object v2, p0, Lcom/android/monitor/Traffic;->mAutoTurnOffMobile:Landroid/widget/SlidingButton;

    .line 118
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mAutoTurnOffMobile:Landroid/widget/SlidingButton;

    new-instance v3, Lcom/android/monitor/Traffic$AutoTurnOffMobileChangedListener;

    invoke-direct {v3, p0, v4}, Lcom/android/monitor/Traffic$AutoTurnOffMobileChangedListener;-><init>(Lcom/android/monitor/Traffic;Lcom/android/monitor/Traffic$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/SlidingButton;->setOnCheckedChangedListener(Landroid/widget/SlidingButton$OnCheckedChangedListener;)V

    .line 120
    const v2, 0x7f090027

    invoke-virtual {p0, v2}, Lcom/android/monitor/Traffic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/monitor/DialogTrafficSettingItem;

    iput-object v2, p0, Lcom/android/monitor/Traffic;->mMonitorStartingDate:Lcom/android/monitor/DialogTrafficSettingItem;

    .line 121
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mMonitorStartingDate:Lcom/android/monitor/DialogTrafficSettingItem;

    invoke-virtual {v2, v6}, Lcom/android/monitor/DialogTrafficSettingItem;->setBackgroundResource(I)V

    .line 122
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mMonitorStartingDate:Lcom/android/monitor/DialogTrafficSettingItem;

    const v3, 0x7f07000e

    invoke-virtual {p0, v3}, Lcom/android/monitor/Traffic;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/monitor/DialogTrafficSettingItem;->setKey(Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mMonitorStartingDate:Lcom/android/monitor/DialogTrafficSettingItem;

    new-instance v3, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;

    invoke-direct {v3, p0, v4}, Lcom/android/monitor/Traffic$MonitorStartDateSettingClickListener;-><init>(Lcom/android/monitor/Traffic;Lcom/android/monitor/Traffic$1;)V

    invoke-virtual {v2, v3}, Lcom/android/monitor/DialogTrafficSettingItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mMonitorStartingDate:Lcom/android/monitor/DialogTrafficSettingItem;

    invoke-virtual {v2, p0}, Lcom/android/monitor/DialogTrafficSettingItem;->setOnDialogClosedListener(Lcom/android/monitor/DialogTrafficSettingItem$DialogClosedListener;)V

    .line 126
    const v2, 0x7f090028

    invoke-virtual {p0, v2}, Lcom/android/monitor/Traffic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/monitor/DialogTrafficSettingItem;

    iput-object v2, p0, Lcom/android/monitor/Traffic;->mAdjustUsedTraffic:Lcom/android/monitor/DialogTrafficSettingItem;

    .line 127
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mAdjustUsedTraffic:Lcom/android/monitor/DialogTrafficSettingItem;

    const v3, 0x1080532

    invoke-virtual {v2, v3}, Lcom/android/monitor/DialogTrafficSettingItem;->setBackgroundResource(I)V

    .line 128
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mAdjustUsedTraffic:Lcom/android/monitor/DialogTrafficSettingItem;

    const v3, 0x7f07003b

    invoke-virtual {p0, v3}, Lcom/android/monitor/Traffic;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/monitor/DialogTrafficSettingItem;->setKey(Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mAdjustUsedTraffic:Lcom/android/monitor/DialogTrafficSettingItem;

    new-instance v3, Lcom/android/monitor/Traffic$AdjustTrafficSettingClickListener;

    invoke-direct {v3, p0, v4}, Lcom/android/monitor/Traffic$AdjustTrafficSettingClickListener;-><init>(Lcom/android/monitor/Traffic;Lcom/android/monitor/Traffic$1;)V

    invoke-virtual {v2, v3}, Lcom/android/monitor/DialogTrafficSettingItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mAdjustUsedTraffic:Lcom/android/monitor/DialogTrafficSettingItem;

    invoke-virtual {v2, p0}, Lcom/android/monitor/DialogTrafficSettingItem;->setOnDialogClosedListener(Lcom/android/monitor/DialogTrafficSettingItem$DialogClosedListener;)V

    .line 132
    const v2, 0x7f09001e

    invoke-virtual {p0, v2}, Lcom/android/monitor/Traffic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/monitor/Traffic;->mTrafficSettingPanel:Landroid/view/View;

    .line 133
    const v2, 0x7f090020

    invoke-virtual {p0, v2}, Lcom/android/monitor/Traffic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/monitor/Traffic;->mTrafficStatusPanel:Landroid/view/View;

    .line 135
    const v2, 0x7f09001b

    invoke-virtual {p0, v2}, Lcom/android/monitor/Traffic;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScreenView;

    iput-object v2, p0, Lcom/android/monitor/Traffic;->mStatisticScreen:Landroid/widget/ScreenView;

    .line 136
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/monitor/Traffic;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/monitor/Traffic;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 137
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030004

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/monitor/Traffic;->mCallSmsDetailPanel:Landroid/view/View;

    .line 138
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000c

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/monitor/Traffic;->mTrafficDetailPanel:Landroid/widget/LinearLayout;

    .line 140
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 141
    .local v0, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mCallSmsDetailPanel:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mTrafficDetailPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x51

    invoke-direct {v1, v5, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 146
    .local v1, seekbarParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mStatisticScreen:Landroid/widget/ScreenView;

    invoke-virtual {v2, v1}, Landroid/widget/ScreenView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 148
    invoke-direct {p0}, Lcom/android/monitor/Traffic;->createTrafficTable()V

    .line 149
    const v2, 0x7f070017

    invoke-virtual {p0, v2}, Lcom/android/monitor/Traffic;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/monitor/Traffic;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method public onDialogClosed(Landroid/view/View;Z)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/32 v7, 0x3200000

    const v6, 0x7f070011

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v9, "first_traffic_day"

    .line 657
    invoke-virtual {p0}, Lcom/android/monitor/Traffic;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 658
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 660
    :sswitch_0
    if-eqz p2, :cond_0

    .line 661
    const v0, 0x7f09002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 664
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 665
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 666
    const v0, 0x7f09002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 667
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/android/monitor/Traffic;->convertSeekBarProgressToValue(FI)F

    move-result v0

    .line 668
    const-string v4, "mobile_traffic_limit"

    invoke-static {v3}, Lcom/android/monitor/Traffic;->mibToByte(F)J

    move-result-wide v5

    invoke-static {v1, v4, v5, v6}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 670
    const-string v3, "mobile_traffic_threshold"

    invoke-static {v0}, Lcom/android/monitor/Traffic;->mibToByte(F)J

    move-result-wide v4

    invoke-static {v1, v3, v4, v5}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 672
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mSetTraffic:Lcom/android/monitor/DialogTrafficSettingItem;

    invoke-virtual {v0, v2}, Lcom/android/monitor/DialogTrafficSettingItem;->setValue(Ljava/lang/String;)V

    .line 673
    invoke-direct {p0}, Lcom/android/monitor/Traffic;->updateMobilePackagePanel()V

    goto :goto_0

    .line 675
    :cond_1
    const-string v0, "mobile_traffic_limit"

    invoke-static {v1, v0, v7, v8}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 677
    const-string v0, "mobile_traffic_threshold"

    const-wide/32 v2, 0x2800000

    invoke-static {v1, v0, v2, v3}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 679
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mSetTraffic:Lcom/android/monitor/DialogTrafficSettingItem;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/monitor/DialogTrafficSettingItem;->setValue(Ljava/lang/String;)V

    .line 681
    invoke-direct {p0}, Lcom/android/monitor/Traffic;->updateMobilePackagePanel()V

    goto :goto_0

    .line 686
    :sswitch_1
    if-eqz p2, :cond_0

    .line 687
    const v0, 0x7f090001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 690
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 692
    :try_start_0
    iget-object v1, p0, Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/internal/app/ITraffic;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Lcom/android/monitor/Traffic;->mibToByte(F)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/app/ITraffic;->fixMobileTraffic(J)V

    .line 693
    iget-object v1, p0, Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/internal/app/ITraffic;

    invoke-interface {v1}, Lcom/android/internal/app/ITraffic;->refresh()V

    .line 694
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/monitor/Traffic;->mTrafficData:Lcom/android/internal/os/TrafficData;

    .line 695
    iget-object v1, p0, Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/internal/app/ITraffic;

    invoke-interface {v1}, Lcom/android/internal/app/ITraffic;->getTrafficData()Lcom/android/internal/os/TrafficData;

    move-result-object v1

    iput-object v1, p0, Lcom/android/monitor/Traffic;->mTrafficData:Lcom/android/internal/os/TrafficData;

    .line 696
    invoke-direct {p0}, Lcom/android/monitor/Traffic;->updateTrafficTable()V

    .line 697
    invoke-direct {p0}, Lcom/android/monitor/Traffic;->updateMobilePackagePanel()V

    .line 698
    const v1, 0x7f07003c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/monitor/Traffic;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 700
    :catch_0
    move-exception v0

    .line 702
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_0

    .line 703
    :catch_1
    move-exception v0

    .line 705
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 711
    :sswitch_2
    if-eqz p2, :cond_2

    .line 712
    const v0, 0x7f090014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 714
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 715
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 716
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 717
    iget-object v2, p0, Lcom/android/monitor/Traffic;->mMonitorStartingDate:Lcom/android/monitor/DialogTrafficSettingItem;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v6, v3}, Lcom/android/monitor/Traffic;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/monitor/DialogTrafficSettingItem;->setValue(Ljava/lang/String;)V

    .line 718
    const-string v2, "first_traffic_day"

    invoke-static {v1, v9, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 727
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/monitor/Traffic;->updateDuration()V

    .line 728
    invoke-direct {p0}, Lcom/android/monitor/Traffic;->updateTrafficTable()V

    .line 729
    invoke-direct {p0}, Lcom/android/monitor/Traffic;->updateMobilePackagePanel()V

    .line 730
    invoke-direct {p0}, Lcom/android/monitor/Traffic;->updateCallSmsPanel()V

    goto/16 :goto_0

    .line 720
    :cond_3
    const-string v0, "Traffic"

    const-string v1, "Should not happen, wrong check for used date input"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 723
    :cond_4
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mMonitorStartingDate:Lcom/android/monitor/DialogTrafficSettingItem;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v6, v2}, Lcom/android/monitor/Traffic;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/monitor/DialogTrafficSettingItem;->setValue(Ljava/lang/String;)V

    .line 724
    const-string v0, "first_traffic_day"

    invoke-static {v1, v9, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 658
    :sswitch_data_0
    .sparse-switch
        0x7f090000 -> :sswitch_1
        0x7f090013 -> :sswitch_2
        0x7f09002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 403
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 404
    iget-object v0, p0, Lcom/android/monitor/Traffic;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/monitor/Traffic;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 405
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 162
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/monitor/Traffic;->mTrafficData:Lcom/android/internal/os/TrafficData;

    .line 163
    iget-object v1, p0, Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/internal/app/ITraffic;

    invoke-interface {v1}, Lcom/android/internal/app/ITraffic;->refresh()V

    .line 164
    iget-object v1, p0, Lcom/android/monitor/Traffic;->mTrafficService:Lcom/android/internal/app/ITraffic;

    invoke-interface {v1}, Lcom/android/internal/app/ITraffic;->getTrafficData()Lcom/android/internal/os/TrafficData;

    move-result-object v1

    iput-object v1, p0, Lcom/android/monitor/Traffic;->mTrafficData:Lcom/android/internal/os/TrafficData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    invoke-direct {p0}, Lcom/android/monitor/Traffic;->updateDuration()V

    .line 170
    invoke-direct {p0}, Lcom/android/monitor/Traffic;->updateMobilePackagePanel()V

    .line 171
    invoke-direct {p0}, Lcom/android/monitor/Traffic;->updateTrafficTable()V

    .line 172
    invoke-direct {p0}, Lcom/android/monitor/Traffic;->updateCallSmsPanel()V

    .line 173
    iget-object v1, p0, Lcom/android/monitor/Traffic;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/monitor/Traffic;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    return-void

    .line 165
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 166
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "Monitor"

    const-string v2, "RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/android/monitor/Traffic;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    return-void
.end method
