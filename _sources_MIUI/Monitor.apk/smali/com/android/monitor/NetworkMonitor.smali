.class public Lcom/android/monitor/NetworkMonitor;
.super Landroid/app/Activity;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/monitor/NetworkMonitor$TrafficComparator;,
        Lcom/android/monitor/NetworkMonitor$NameComparator;,
        Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;,
        Lcom/android/monitor/NetworkMonitor$ListEntry;,
        Lcom/android/monitor/NetworkMonitor$SizeObserver;,
        Lcom/android/monitor/NetworkMonitor$UidInfo;
    }
.end annotation


# static fields
.field static mSupportUidNetwork:Z


# instance fields
.field private mCurrentComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/monitor/NetworkMonitor$UidInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFirewall:Landroid/widget/SlidingButton;

.field private mFirewallListener:Landroid/widget/SlidingButton$OnCheckedChangedListener;

.field private mListView:Landroid/widget/ListView;

.field private mLoadingAppsListDialog:Landroid/app/ProgressDialog;

.field private mMobileAccess:Landroid/widget/ImageView;

.field private mMobileAccessListener:Landroid/view/View$OnClickListener;

.field private final mMobileImages:[I

.field private mNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/monitor/NetworkMonitor$UidInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkMonitorEnable:Z

.field private mPM:Landroid/content/pm/PackageManager;

.field private mSizeObserver:Lcom/android/monitor/NetworkMonitor$SizeObserver;

.field private mTrafficComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/monitor/NetworkMonitor$UidInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficData:Lcom/android/internal/os/TrafficData;

.field private mTrafficService:Lcom/android/internal/app/ITraffic;

.field private mTrafficTitle:Landroid/view/View;

.field private mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

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

.field private mWifiAccess:Landroid/widget/ImageView;

.field private mWifiAccessListener:Landroid/view/View$OnClickListener;

.field private final mWifiImages:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mUidInfos:Landroid/util/SparseArray;

    .line 68
    new-instance v0, Lcom/android/monitor/NetworkMonitor$SizeObserver;

    invoke-direct {v0, p0}, Lcom/android/monitor/NetworkMonitor$SizeObserver;-><init>(Lcom/android/monitor/NetworkMonitor;)V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mSizeObserver:Lcom/android/monitor/NetworkMonitor$SizeObserver;

    .line 76
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mMobileImages:[I

    .line 77
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mWifiImages:[I

    .line 79
    new-instance v0, Lcom/android/monitor/NetworkMonitor$NameComparator;

    invoke-direct {v0, p0}, Lcom/android/monitor/NetworkMonitor$NameComparator;-><init>(Lcom/android/monitor/NetworkMonitor;)V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mNameComparator:Ljava/util/Comparator;

    .line 80
    new-instance v0, Lcom/android/monitor/NetworkMonitor$TrafficComparator;

    invoke-direct {v0, p0}, Lcom/android/monitor/NetworkMonitor$TrafficComparator;-><init>(Lcom/android/monitor/NetworkMonitor;)V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficComparator:Ljava/util/Comparator;

    .line 81
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficComparator:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mCurrentComparator:Ljava/util/Comparator;

    .line 709
    new-instance v0, Lcom/android/monitor/NetworkMonitor$4;

    invoke-direct {v0, p0}, Lcom/android/monitor/NetworkMonitor$4;-><init>(Lcom/android/monitor/NetworkMonitor;)V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mFirewallListener:Landroid/widget/SlidingButton$OnCheckedChangedListener;

    .line 728
    new-instance v0, Lcom/android/monitor/NetworkMonitor$5;

    invoke-direct {v0, p0}, Lcom/android/monitor/NetworkMonitor$5;-><init>(Lcom/android/monitor/NetworkMonitor;)V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mMobileAccessListener:Landroid/view/View$OnClickListener;

    .line 743
    new-instance v0, Lcom/android/monitor/NetworkMonitor$6;

    invoke-direct {v0, p0}, Lcom/android/monitor/NetworkMonitor$6;-><init>(Lcom/android/monitor/NetworkMonitor;)V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mWifiAccessListener:Landroid/view/View$OnClickListener;

    return-void

    .line 76
    :array_0
    .array-data 0x4
        0x6t 0x0t 0x2t 0x7ft
        0x5t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
    .end array-data

    .line 77
    :array_1
    .array-data 0x4
        0x25t 0x0t 0x2t 0x7ft
        0x24t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/monitor/NetworkMonitor;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/monitor/NetworkMonitor;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mMobileImages:[I

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/monitor/NetworkMonitor;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mWifiAccess:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/monitor/NetworkMonitor;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mWifiImages:[I

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/monitor/NetworkMonitor;)Ljava/util/Comparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mCurrentComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/monitor/NetworkMonitor;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor;->mCurrentComparator:Ljava/util/Comparator;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/monitor/NetworkMonitor;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mLoadingAppsListDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/monitor/NetworkMonitor;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mUidInfos:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/monitor/NetworkMonitor;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficTitle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/monitor/NetworkMonitor;)Lcom/android/internal/os/TrafficData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficData:Lcom/android/internal/os/TrafficData;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/monitor/NetworkMonitor;Lcom/android/internal/os/TrafficData;)Lcom/android/internal/os/TrafficData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficData:Lcom/android/internal/os/TrafficData;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/monitor/NetworkMonitor;)Lcom/android/internal/app/ITraffic;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficService:Lcom/android/internal/app/ITraffic;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/monitor/NetworkMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/monitor/NetworkMonitor;->mNetworkMonitorEnable:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/monitor/NetworkMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/monitor/NetworkMonitor;->mNetworkMonitorEnable:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/monitor/NetworkMonitor;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mMobileAccess:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/monitor/NetworkMonitor;)Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    return-object v0
.end method

.method private applyOrSaveRules()V
    .locals 2

    .prologue
    .line 679
    invoke-static {p0}, Lcom/android/monitor/Firewall;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 680
    .local v0, enabled:Z
    new-instance v1, Lcom/android/monitor/NetworkMonitor$3;

    invoke-direct {v1, p0, v0}, Lcom/android/monitor/NetworkMonitor$3;-><init>(Lcom/android/monitor/NetworkMonitor;Z)V

    invoke-virtual {v1}, Lcom/android/monitor/NetworkMonitor$3;->start()V

    .line 691
    return-void
.end method

.method public static buildUidInfoList(Landroid/content/Context;Landroid/util/SparseArray;Landroid/content/pm/PackageManager;)V
    .locals 7
    .parameter "context"
    .parameter
    .parameter "pm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/monitor/NetworkMonitor$UidInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 559
    .local p1, uidInfos:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/monitor/NetworkMonitor$UidInfo;>;"
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 560
    .local v1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-static {p0, v1}, Lcom/android/monitor/NetworkMonitor;->getRunningApplications(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 562
    .local v3, runningAppList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 563
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/monitor/NetworkMonitor$UidInfo;

    .line 564
    .local v4, uidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;
    if-nez v4, :cond_1

    const-string v5, "android.permission.INTERNET"

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 568
    :cond_1
    if-nez v4, :cond_2

    .line 569
    new-instance v4, Lcom/android/monitor/NetworkMonitor$UidInfo;

    .end local v4           #uidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v4, v5}, Lcom/android/monitor/NetworkMonitor$UidInfo;-><init>(I)V

    .line 570
    .restart local v4       #uidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 572
    :cond_2
    invoke-virtual {v4, v0}, Lcom/android/monitor/NetworkMonitor$UidInfo;->addApplication(Landroid/content/pm/ApplicationInfo;)V

    .line 573
    invoke-static {p0, v4, p2}, Lcom/android/monitor/NetworkMonitor;->resolveLabelIcon(Landroid/content/Context;Lcom/android/monitor/NetworkMonitor$UidInfo;Landroid/content/pm/PackageManager;)V

    goto :goto_0

    .line 576
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    .end local v4           #uidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 577
    .restart local v0       #app:Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/monitor/NetworkMonitor$UidInfo;

    .line 578
    .restart local v4       #uidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;
    if-eqz v4, :cond_4

    .line 580
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/monitor/NetworkMonitor$UidInfo;->mIsRunning:Z

    goto :goto_1

    .line 583
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    .end local v4           #uidInfo:Lcom/android/monitor/NetworkMonitor$UidInfo;
    :cond_5
    invoke-static {p0, p1}, Lcom/android/monitor/Firewall;->loadRules(Landroid/content/Context;Landroid/util/SparseArray;)V

    .line 584
    return-void
.end method

.method public static getRunningApplications(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    .local p1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 650
    .local v6, retList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const-string v9, "activity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 651
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 652
    .local v5, procList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v5, :cond_1

    .line 675
    :cond_0
    return-object v6

    .line 656
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 659
    .local v7, runningMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 660
    .local v2, appProcInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v2, :cond_2

    iget-object v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 661
    iget-object v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v8, v9

    .line 662
    .local v8, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v8, :cond_2

    .line 663
    iget-object v9, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v7, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 669
    .end local v2           #appProcInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3           #i:I
    .end local v8           #size:I
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 670
    .local v1, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v9, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 671
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private refreshTraffic()V
    .locals 2

    .prologue
    .line 587
    new-instance v0, Lcom/android/monitor/NetworkMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/monitor/NetworkMonitor$2;-><init>(Lcom/android/monitor/NetworkMonitor;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/monitor/NetworkMonitor$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 645
    return-void
.end method

.method public static resolveLabelIcon(Landroid/content/Context;Lcom/android/monitor/NetworkMonitor$UidInfo;Landroid/content/pm/PackageManager;)V
    .locals 4
    .parameter "context"
    .parameter "uidInfo"
    .parameter "pm"

    .prologue
    .line 137
    iget v2, p1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mUid:I

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_1

    .line 138
    const v2, 0x7f070023

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mLabel:Ljava/lang/String;

    .line 139
    invoke-virtual {p2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v2, p1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mApplications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 144
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mLabel:Ljava/lang/String;

    .line 145
    invoke-virtual {v0, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 149
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    :cond_2
    iget-object v2, p1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mLabel:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 150
    iget v2, p1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mUid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mLabel:Ljava/lang/String;

    .line 152
    :cond_3
    iget-object v2, p1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 153
    invoke-virtual {p2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 426
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 427
    invoke-virtual {p0}, Lcom/android/monitor/NetworkMonitor;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 428
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/android/monitor/NetworkMonitor;->setContentView(I)V

    .line 429
    invoke-virtual {p0}, Lcom/android/monitor/NetworkMonitor;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mPM:Landroid/content/pm/PackageManager;

    .line 430
    const-string v0, "traffic"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ITraffic$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/ITraffic;

    move-result-object v0

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficService:Lcom/android/internal/app/ITraffic;

    .line 431
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/android/monitor/NetworkMonitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SlidingButton;

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mFirewall:Landroid/widget/SlidingButton;

    .line 432
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/android/monitor/NetworkMonitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mMobileAccess:Landroid/widget/ImageView;

    .line 433
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/android/monitor/NetworkMonitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mWifiAccess:Landroid/widget/ImageView;

    .line 435
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mLoadingAppsListDialog:Landroid/app/ProgressDialog;

    .line 436
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mLoadingAppsListDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f070044

    invoke-virtual {p0, v1}, Lcom/android/monitor/NetworkMonitor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mLoadingAppsListDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 439
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mFirewall:Landroid/widget/SlidingButton;

    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor;->mFirewallListener:Landroid/widget/SlidingButton$OnCheckedChangedListener;

    invoke-virtual {v0, v1}, Landroid/widget/SlidingButton;->setOnCheckedChangedListener(Landroid/widget/SlidingButton$OnCheckedChangedListener;)V

    .line 440
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mMobileAccess:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor;->mMobileAccessListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mWifiAccess:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor;->mWifiAccessListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/android/monitor/NetworkMonitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficTitle:Landroid/view/View;

    .line 445
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficComparator:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mCurrentComparator:Ljava/util/Comparator;

    .line 446
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/monitor/NetworkMonitor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mListView:Landroid/widget/ListView;

    .line 447
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/monitor/NetworkMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/monitor/NetworkMonitor$1;-><init>(Lcom/android/monitor/NetworkMonitor;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 464
    new-instance v0, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;-><init>(Lcom/android/monitor/NetworkMonitor;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    .line 465
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor;->mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 466
    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/android/monitor/NetworkMonitor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/monitor/NetworkMonitor;->setTitle(Ljava/lang/CharSequence;)V

    .line 467
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 477
    const v0, 0x7f070007

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 478
    const/4 v0, 0x2

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 479
    const/4 v0, 0x3

    const v1, 0x7f07000a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 480
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "display_system_app"

    .line 510
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    move v2, v5

    .line 531
    :goto_1
    return v2

    .line 512
    :pswitch_0
    invoke-direct {p0}, Lcom/android/monitor/NetworkMonitor;->refreshTraffic()V

    move v2, v4

    .line 513
    goto :goto_1

    .line 515
    :pswitch_1
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mCurrentComparator:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficComparator:Ljava/util/Comparator;

    if-ne v2, v3, :cond_0

    .line 516
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor;->mNameComparator:Ljava/util/Comparator;

    invoke-virtual {v2, v3}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->sort(Ljava/util/Comparator;)V

    .line 517
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mNameComparator:Ljava/util/Comparator;

    iput-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mCurrentComparator:Ljava/util/Comparator;

    :goto_2
    move v2, v4

    .line 522
    goto :goto_1

    .line 519
    :cond_0
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficComparator:Ljava/util/Comparator;

    invoke-virtual {v2, v3}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->sort(Ljava/util/Comparator;)V

    .line 520
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficComparator:Ljava/util/Comparator;

    iput-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mCurrentComparator:Ljava/util/Comparator;

    goto :goto_2

    .line 524
    :pswitch_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "display_system_app"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 525
    .local v0, display:Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 526
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "display_system_app"

    if-nez v0, :cond_1

    move v2, v4

    :goto_3
    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 527
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 528
    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mUidInfoAdapter:Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;

    if-nez v0, :cond_2

    move v3, v4

    :goto_4
    invoke-virtual {v2, v3}, Lcom/android/monitor/NetworkMonitor$UidInfoAdapter;->setDisplaySystemApp(Z)V

    goto :goto_0

    :cond_1
    move v2, v5

    .line 526
    goto :goto_3

    :cond_2
    move v3, v5

    .line 528
    goto :goto_4

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 554
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 555
    invoke-direct {p0}, Lcom/android/monitor/NetworkMonitor;->applyOrSaveRules()V

    .line 556
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 485
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "display_system_app"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 486
    .local v0, display:Z
    invoke-virtual {p0}, Lcom/android/monitor/NetworkMonitor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_monitor_traffic"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_0

    move v1, v5

    .line 488
    .local v1, enabled:Z
    :goto_0
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 489
    .local v2, item:Landroid/view/MenuItem;
    const v3, 0x1080414

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 490
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 491
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 492
    const v3, 0x7f020003

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 493
    if-eqz v0, :cond_1

    .line 494
    const v3, 0x7f07000b

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 498
    :goto_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 499
    const v3, 0x7f020004

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 500
    iget-object v3, p0, Lcom/android/monitor/NetworkMonitor;->mCurrentComparator:Ljava/util/Comparator;

    iget-object v4, p0, Lcom/android/monitor/NetworkMonitor;->mTrafficComparator:Ljava/util/Comparator;

    if-ne v3, v4, :cond_2

    .line 501
    const v3, 0x7f070008

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 505
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3

    .end local v1           #enabled:Z
    .end local v2           #item:Landroid/view/MenuItem;
    :cond_0
    move v1, v6

    .line 486
    goto :goto_0

    .line 496
    .restart local v1       #enabled:Z
    .restart local v2       #item:Landroid/view/MenuItem;
    :cond_1
    const v3, 0x7f07000a

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 503
    :cond_2
    const v3, 0x7f070009

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 537
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 538
    invoke-static {p0}, Lcom/android/monitor/Firewall;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 539
    .local v0, enabled:Z
    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor;->mFirewall:Landroid/widget/SlidingButton;

    invoke-virtual {v1, v0}, Landroid/widget/SlidingButton;->setChecked(Z)V

    .line 540
    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor;->mFirewallListener:Landroid/widget/SlidingButton$OnCheckedChangedListener;

    invoke-interface {v1, v0}, Landroid/widget/SlidingButton$OnCheckedChangedListener;->onCheckedChanged(Z)V

    .line 541
    if-nez v0, :cond_0

    .line 542
    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor;->mMobileAccess:Landroid/widget/ImageView;

    const v2, 0x7f020005

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 543
    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor;->mWifiAccess:Landroid/widget/ImageView;

    const v2, 0x7f020024

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 549
    :goto_0
    invoke-direct {p0}, Lcom/android/monitor/NetworkMonitor;->refreshTraffic()V

    .line 550
    return-void

    .line 545
    :cond_0
    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor;->mMobileAccess:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mMobileImages:[I

    invoke-static {p0}, Lcom/android/monitor/Firewall;->getMobileAccessMode(Landroid/content/Context;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 546
    iget-object v1, p0, Lcom/android/monitor/NetworkMonitor;->mWifiAccess:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/monitor/NetworkMonitor;->mWifiImages:[I

    invoke-static {p0}, Lcom/android/monitor/Firewall;->getWifiAccessMode(Landroid/content/Context;)I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 471
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 472
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/android/monitor/NetworkMonitor;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    return-void
.end method
