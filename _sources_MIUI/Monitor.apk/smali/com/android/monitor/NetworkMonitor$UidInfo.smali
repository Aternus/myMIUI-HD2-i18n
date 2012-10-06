.class Lcom/android/monitor/NetworkMonitor$UidInfo;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UidInfo"
.end annotation


# instance fields
.field mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field mEnableMobile:Z

.field mEnableWifi:Z

.field mIcon:Landroid/graphics/drawable/Drawable;

.field mIsRunning:Z

.field mIsSystemApp:Z

.field mLabel:Ljava/lang/String;

.field mMobileRxBytes:[J

.field mMobileTxBytes:[J

.field mPreferUidLabels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRxBytes:[J

.field mTxBytes:[J

.field mUid:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .parameter "uid"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x3

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfo;->mApplications:Ljava/util/List;

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfo;->mPreferUidLabels:Landroid/util/SparseArray;

    .line 104
    iput p1, p0, Lcom/android/monitor/NetworkMonitor$UidInfo;->mUid:I

    .line 105
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfo;->mTxBytes:[J

    .line 106
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfo;->mRxBytes:[J

    .line 107
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfo;->mMobileTxBytes:[J

    .line 108
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfo;->mMobileRxBytes:[J

    .line 109
    iput-boolean v2, p0, Lcom/android/monitor/NetworkMonitor$UidInfo;->mEnableMobile:Z

    .line 110
    iput-boolean v2, p0, Lcom/android/monitor/NetworkMonitor$UidInfo;->mEnableWifi:Z

    .line 111
    return-void
.end method


# virtual methods
.method public addApplication(Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfo;->mApplications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfo;->mIsSystemApp:Z

    .line 117
    :cond_0
    return-void
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$UidInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method
