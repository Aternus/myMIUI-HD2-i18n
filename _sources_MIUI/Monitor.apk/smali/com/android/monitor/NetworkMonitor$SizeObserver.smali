.class Lcom/android/monitor/NetworkMonitor$SizeObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SizeObserver"
.end annotation


# instance fields
.field private mCount:Ljava/util/concurrent/CountDownLatch;

.field stats:Landroid/content/pm/PackageStats;

.field succeeded:Z

.field final synthetic this$0:Lcom/android/monitor/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/monitor/NetworkMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$SizeObserver;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 1
    .parameter "pStats"
    .parameter "pSucceeded"

    .prologue
    .line 169
    iput-boolean p2, p0, Lcom/android/monitor/NetworkMonitor$SizeObserver;->succeeded:Z

    .line 170
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$SizeObserver;->stats:Landroid/content/pm/PackageStats;

    .line 171
    iget-object v0, p0, Lcom/android/monitor/NetworkMonitor$SizeObserver;->mCount:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 172
    return-void
.end method
