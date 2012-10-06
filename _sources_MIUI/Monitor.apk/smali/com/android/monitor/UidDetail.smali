.class public Lcom/android/monitor/UidDetail;
.super Landroid/app/Activity;
.source "UidDetail.java"


# instance fields
.field private mAppDetailButton:Landroid/widget/Button;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private final mCols:I

.field private mForceStopButton:Landroid/widget/Button;

.field private mPackages:[Ljava/lang/String;

.field private final mRows:I

.field private mTableCells:[Landroid/widget/TextView;

.field private mUid:I

.field private mUidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;

.field private mUidInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/monitor/NetworkMonitor$UidInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    iput v0, p0, Lcom/android/monitor/UidDetail;->mRows:I

    .line 32
    iput v0, p0, Lcom/android/monitor/UidDetail;->mCols:I

    .line 240
    new-instance v0, Lcom/android/monitor/UidDetail$5;

    invoke-direct {v0, p0}, Lcom/android/monitor/UidDetail$5;-><init>(Lcom/android/monitor/UidDetail;)V

    iput-object v0, p0, Lcom/android/monitor/UidDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/monitor/UidDetail;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/monitor/UidDetail;->killProcesses()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/monitor/UidDetail;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/monitor/UidDetail;->mPackages:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/monitor/UidDetail;)Lcom/android/monitor/NetworkMonitor$UidInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/monitor/UidDetail;->mUidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/monitor/UidDetail;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/monitor/UidDetail;->mUidInfos:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/monitor/UidDetail;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/monitor/UidDetail;->mForceStopButton:Landroid/widget/Button;

    return-object v0
.end method

.method private checkForceStop()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 219
    iget-object v0, p0, Lcom/android/monitor/UidDetail;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/monitor/UidDetail;->mUid:I

    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/monitor/UidDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 229
    :goto_0
    return-void

    .line 223
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/monitor/UidDetail;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 225
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    iget-object v3, p0, Lcom/android/monitor/UidDetail;->mPackages:[Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v0, "android.intent.extra.UID"

    iget v3, p0, Lcom/android/monitor/UidDetail;->mUid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    iget-object v3, p0, Lcom/android/monitor/UidDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v0, p0

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/monitor/UidDetail;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private createTrafficTable()V
    .locals 8

    .prologue
    const v7, 0x7f020014

    .line 182
    const v4, 0x7f090004

    invoke-virtual {p0, v4}, Lcom/android/monitor/UidDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 183
    .local v2, table:Landroid/widget/LinearLayout;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/monitor/UidDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 184
    .local v1, inflater:Landroid/view/LayoutInflater;
    const/16 v4, 0x9

    new-array v4, v4, [Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/monitor/UidDetail;->mTableCells:[Landroid/widget/TextView;

    .line 185
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    .line 186
    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    const v4, 0x7f03000d

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 187
    .local v3, view:Landroid/view/View;
    iget-object v5, p0, Lcom/android/monitor/UidDetail;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v6, v4, 0x0

    const v4, 0x7f090029

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 188
    iget-object v4, p0, Lcom/android/monitor/UidDetail;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 189
    iget-object v5, p0, Lcom/android/monitor/UidDetail;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v6, v4, 0x1

    const v4, 0x7f09002a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 190
    iget-object v4, p0, Lcom/android/monitor/UidDetail;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 191
    iget-object v5, p0, Lcom/android/monitor/UidDetail;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v6, v4, 0x2

    const v4, 0x7f09002b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    .line 192
    iget-object v4, p0, Lcom/android/monitor/UidDetail;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x2

    aget-object v4, v4, v5

    const v5, 0x7f020013

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 193
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v3           #view:Landroid/view/View;
    :cond_0
    const v4, 0x7f03000e

    goto :goto_1

    .line 195
    :cond_1
    return-void
.end method

.method private killProcesses()V
    .locals 3

    .prologue
    .line 232
    iget-object v2, p0, Lcom/android/monitor/UidDetail;->mPackages:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 238
    :goto_0
    return-void

    .line 233
    :cond_0
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/monitor/UidDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 234
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/monitor/UidDetail;->mPackages:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 235
    iget-object v2, p0, Lcom/android/monitor/UidDetail;->mPackages:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 237
    :cond_1
    invoke-direct {p0}, Lcom/android/monitor/UidDetail;->checkForceStop()V

    goto :goto_0
.end method

.method private refreshTrafficInfo()V
    .locals 7

    .prologue
    .line 167
    :try_start_0
    const-string v2, "traffic"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/ITraffic$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/ITraffic;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/app/ITraffic;->getTrafficData()Lcom/android/internal/os/TrafficData;

    move-result-object v2

    iget v3, p0, Lcom/android/monitor/UidDetail;->mUid:I

    invoke-virtual {v2, v3}, Lcom/android/internal/os/TrafficData;->getUidStat(I)Lcom/android/internal/os/TrafficData$Uid;

    move-result-object v1

    .line 170
    .local v1, uidStat:Lcom/android/internal/os/TrafficData$Uid;
    invoke-virtual {v1}, Lcom/android/internal/os/TrafficData$Uid;->getTxBytes()[J

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/monitor/UidDetail;->mUidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;

    iget-object v4, v4, Lcom/android/monitor/NetworkMonitor$UidInfo;->mTxBytes:[J

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    invoke-virtual {v1}, Lcom/android/internal/os/TrafficData$Uid;->getRxBytes()[J

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/monitor/UidDetail;->mUidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;

    iget-object v4, v4, Lcom/android/monitor/NetworkMonitor$UidInfo;->mRxBytes:[J

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    invoke-virtual {v1}, Lcom/android/internal/os/TrafficData$Uid;->getMobileTxBytes()[J

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/monitor/UidDetail;->mUidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;

    iget-object v4, v4, Lcom/android/monitor/NetworkMonitor$UidInfo;->mMobileTxBytes:[J

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    invoke-virtual {v1}, Lcom/android/internal/os/TrafficData$Uid;->getMobileRxBytes()[J

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/monitor/UidDetail;->mUidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;

    iget-object v4, v4, Lcom/android/monitor/NetworkMonitor$UidInfo;->mMobileRxBytes:[J

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iget-object v2, p0, Lcom/android/monitor/UidDetail;->mUidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;

    invoke-direct {p0, v2}, Lcom/android/monitor/UidDetail;->updateTrafficTable(Lcom/android/monitor/NetworkMonitor$UidInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v1           #uidStat:Lcom/android/internal/os/TrafficData$Uid;
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 176
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateTrafficTable(Lcom/android/monitor/NetworkMonitor$UidInfo;)V
    .locals 12
    .parameter "u"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x3

    .line 198
    invoke-virtual {p0}, Lcom/android/monitor/UidDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f05

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, names:[Ljava/lang/String;
    sget-boolean v6, Lcom/android/monitor/NetworkMonitor;->mSupportUidNetwork:Z

    if-eqz v6, :cond_0

    .line 201
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v10, :cond_1

    .line 202
    iget-object v6, p0, Lcom/android/monitor/UidDetail;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v7, v7, 0x0

    aget-object v6, v6, v7

    aget-object v7, v3, v0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v6, p1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mMobileTxBytes:[J

    sub-int v7, v10, v0

    sub-int/2addr v7, v11

    aget-wide v6, v6, v7

    iget-object v8, p1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mMobileRxBytes:[J

    sub-int v9, v10, v0

    sub-int/2addr v9, v11

    aget-wide v8, v8, v9

    add-long v1, v6, v8

    .line 204
    .local v1, mobile:J
    iget-object v6, p1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mTxBytes:[J

    sub-int v7, v10, v0

    sub-int/2addr v7, v11

    aget-wide v6, v6, v7

    iget-object v8, p1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mRxBytes:[J

    sub-int v9, v10, v0

    sub-int/2addr v9, v11

    aget-wide v8, v8, v9

    add-long/2addr v6, v8

    sub-long v4, v6, v1

    .line 205
    .local v4, wifi:J
    iget-object v6, p0, Lcom/android/monitor/UidDetail;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    invoke-static {p0, v1, v2}, Lcom/android/monitor/Traffic;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v6, p0, Lcom/android/monitor/UidDetail;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v7, v7, 0x2

    aget-object v6, v6, v7

    invoke-static {p0, v4, v5}, Lcom/android/monitor/Traffic;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    .end local v0           #i:I
    .end local v1           #mobile:J
    .end local v4           #wifi:J
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v10, :cond_1

    .line 210
    iget-object v6, p0, Lcom/android/monitor/UidDetail;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v7, v7, 0x0

    aget-object v6, v6, v7

    aget-object v7, v3, v0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v6, p0, Lcom/android/monitor/UidDetail;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    iget-object v7, p1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mTxBytes:[J

    sub-int v8, v10, v0

    sub-int/2addr v8, v11

    aget-wide v7, v7, v8

    invoke-static {p0, v7, v8}, Lcom/android/monitor/Traffic;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v6, p0, Lcom/android/monitor/UidDetail;->mTableCells:[Landroid/widget/TextView;

    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v7, v7, 0x2

    aget-object v6, v6, v7

    iget-object v7, p1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mRxBytes:[J

    sub-int v8, v10, v0

    sub-int/2addr v8, v11

    aget-wide v7, v7, v8

    invoke-static {p0, v7, v8}, Lcom/android/monitor/Traffic;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 215
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v10, 0x7f030001

    invoke-virtual {p0, v10}, Lcom/android/monitor/UidDetail;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/monitor/UidDetail;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "android.intent.extra.UID"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/android/monitor/UidDetail;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "android.intent.extra.UID"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/monitor/UidDetail;->mUid:I

    .line 54
    const v10, 0x7f090002

    invoke-virtual {p0, v10}, Lcom/android/monitor/UidDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 55
    .local v2, header1:Landroid/widget/TextView;
    const v10, 0x7f090003

    invoke-virtual {p0, v10}, Lcom/android/monitor/UidDetail;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 57
    .local v3, header2:Landroid/widget/TextView;
    sget-boolean v10, Lcom/android/monitor/NetworkMonitor;->mSupportUidNetwork:Z

    if-eqz v10, :cond_0

    .line 58
    const v10, 0x7f07001f

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(I)V

    .line 59
    const v10, 0x7f070020

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    .line 62
    :cond_0
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    iput-object v10, p0, Lcom/android/monitor/UidDetail;->mUidInfos:Landroid/util/SparseArray;

    .line 63
    iget-object v10, p0, Lcom/android/monitor/UidDetail;->mUidInfos:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/android/monitor/UidDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-static {p0, v10, v11}, Lcom/android/monitor/NetworkMonitor;->buildUidInfoList(Landroid/content/Context;Landroid/util/SparseArray;Landroid/content/pm/PackageManager;)V

    .line 64
    iget-object v10, p0, Lcom/android/monitor/UidDetail;->mUidInfos:Landroid/util/SparseArray;

    iget v11, p0, Lcom/android/monitor/UidDetail;->mUid:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/monitor/NetworkMonitor$UidInfo;

    iput-object p1, p0, Lcom/android/monitor/UidDetail;->mUidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;

    .line 66
    iget-object v10, p0, Lcom/android/monitor/UidDetail;->mUidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;

    if-nez v10, :cond_2

    .line 67
    const-string v10, "UidDetail"

    const-string v11, "Invalid uid from from NetworkMonitor"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Lcom/android/monitor/UidDetail;->finish()V

    .line 148
    .end local v2           #header1:Landroid/widget/TextView;
    .end local v3           #header2:Landroid/widget/TextView;
    :goto_0
    return-void

    .line 49
    .restart local p1
    :cond_1
    const-string v10, "UidDetail"

    const-string v11, "Without uid from NetworkMonitor application list"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lcom/android/monitor/UidDetail;->finish()V

    goto :goto_0

    .line 71
    .end local p1
    .restart local v2       #header1:Landroid/widget/TextView;
    .restart local v3       #header2:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p0}, Lcom/android/monitor/UidDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget v11, p0, Lcom/android/monitor/UidDetail;->mUid:I

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/monitor/UidDetail;->mPackages:[Ljava/lang/String;

    .line 73
    const v10, 0x1020006

    invoke-virtual {p0, v10}, Lcom/android/monitor/UidDetail;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 74
    .local v4, icon:Landroid/widget/ImageView;
    const v10, 0x1020014

    invoke-virtual {p0, v10}, Lcom/android/monitor/UidDetail;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 75
    .local v6, text1:Landroid/widget/TextView;
    const v10, 0x1020015

    invoke-virtual {p0, v10}, Lcom/android/monitor/UidDetail;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 77
    .local v7, text2:Landroid/widget/TextView;
    const v10, 0x7f090007

    invoke-virtual {p0, v10}, Lcom/android/monitor/UidDetail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/monitor/UidDetail;->mForceStopButton:Landroid/widget/Button;

    .line 78
    const v10, 0x7f090008

    invoke-virtual {p0, v10}, Lcom/android/monitor/UidDetail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/monitor/UidDetail;->mAppDetailButton:Landroid/widget/Button;

    .line 80
    iget-object v10, p0, Lcom/android/monitor/UidDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 81
    iget-object v10, p0, Lcom/android/monitor/UidDetail;->mAppDetailButton:Landroid/widget/Button;

    iget-object v11, p0, Lcom/android/monitor/UidDetail;->mUidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;

    iget-boolean v11, v11, Lcom/android/monitor/NetworkMonitor$UidInfo;->mIsSystemApp:Z

    if-nez v11, :cond_3

    iget-object v11, p0, Lcom/android/monitor/UidDetail;->mPackages:[Ljava/lang/String;

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 82
    iget-object v10, p0, Lcom/android/monitor/UidDetail;->mForceStopButton:Landroid/widget/Button;

    new-instance v11, Lcom/android/monitor/UidDetail$1;

    invoke-direct {v11, p0}, Lcom/android/monitor/UidDetail$1;-><init>(Lcom/android/monitor/UidDetail;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v10, p0, Lcom/android/monitor/UidDetail;->mAppDetailButton:Landroid/widget/Button;

    new-instance v11, Lcom/android/monitor/UidDetail$2;

    invoke-direct {v11, p0}, Lcom/android/monitor/UidDetail$2;-><init>(Lcom/android/monitor/UidDetail;)V

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v10, p0, Lcom/android/monitor/UidDetail;->mUidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;

    iget-object v10, v10, Lcom/android/monitor/NetworkMonitor$UidInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v10, p0, Lcom/android/monitor/UidDetail;->mUidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;

    iget-object v10, v10, Lcom/android/monitor/NetworkMonitor$UidInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/android/monitor/UidDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/monitor/UidDetail;->mUidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;

    iget-object v11, v11, Lcom/android/monitor/NetworkMonitor$UidInfo;->mApplications:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    iget-object v11, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v12, 0x2240

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget-object v8, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 107
    .local v8, version:Ljava/lang/String;
    const v10, 0x7f070013

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/monitor/UidDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v8           #version:Ljava/lang/String;
    :goto_2
    invoke-direct {p0}, Lcom/android/monitor/UidDetail;->createTrafficTable()V

    .line 115
    invoke-static {p0}, Lcom/android/monitor/Firewall;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 116
    .local v1, enabled:Z
    const v10, 0x7f090005

    invoke-virtual {p0, v10}, Lcom/android/monitor/UidDetail;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SlidingButton;

    .line 117
    .local v5, mobileBtn:Landroid/widget/SlidingButton;
    iget-object v10, p0, Lcom/android/monitor/UidDetail;->mUidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;

    iget-boolean v10, v10, Lcom/android/monitor/NetworkMonitor$UidInfo;->mEnableMobile:Z

    invoke-virtual {v5, v10}, Landroid/widget/SlidingButton;->setChecked(Z)V

    .line 118
    new-instance v10, Lcom/android/monitor/UidDetail$3;

    invoke-direct {v10, p0}, Lcom/android/monitor/UidDetail$3;-><init>(Lcom/android/monitor/UidDetail;)V

    invoke-virtual {v5, v10}, Landroid/widget/SlidingButton;->setOnCheckedChangedListener(Landroid/widget/SlidingButton$OnCheckedChangedListener;)V

    .line 130
    invoke-virtual {v5, v1}, Landroid/widget/SlidingButton;->setEnabled(Z)V

    .line 132
    const v10, 0x7f090006

    invoke-virtual {p0, v10}, Lcom/android/monitor/UidDetail;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/SlidingButton;

    .line 133
    .local v9, wifiBtn:Landroid/widget/SlidingButton;
    iget-object v10, p0, Lcom/android/monitor/UidDetail;->mUidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;

    iget-boolean v10, v10, Lcom/android/monitor/NetworkMonitor$UidInfo;->mEnableWifi:Z

    invoke-virtual {v9, v10}, Landroid/widget/SlidingButton;->setChecked(Z)V

    .line 134
    new-instance v10, Lcom/android/monitor/UidDetail$4;

    invoke-direct {v10, p0}, Lcom/android/monitor/UidDetail$4;-><init>(Lcom/android/monitor/UidDetail;)V

    invoke-virtual {v9, v10}, Landroid/widget/SlidingButton;->setOnCheckedChangedListener(Landroid/widget/SlidingButton$OnCheckedChangedListener;)V

    .line 146
    invoke-virtual {v9, v1}, Landroid/widget/SlidingButton;->setEnabled(Z)V

    .line 147
    const v10, 0x7f070041

    invoke-virtual {p0, v10}, Lcom/android/monitor/UidDetail;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/monitor/UidDetail;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 81
    .end local v1           #enabled:Z
    .end local v5           #mobileBtn:Landroid/widget/SlidingButton;
    .end local v9           #wifiBtn:Landroid/widget/SlidingButton;
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 108
    :catch_0
    move-exception v10

    move-object v0, v10

    .line 109
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 110
    const v10, 0x7f070013

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, ""

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/monitor/UidDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 154
    invoke-direct {p0}, Lcom/android/monitor/UidDetail;->refreshTrafficInfo()V

    .line 155
    invoke-direct {p0}, Lcom/android/monitor/UidDetail;->checkForceStop()V

    .line 156
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 162
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/android/monitor/UidDetail;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    return-void
.end method
