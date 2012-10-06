.class Lcom/android/monitor/NetworkMonitor$TrafficComparator;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/monitor/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrafficComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/monitor/NetworkMonitor$UidInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/monitor/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/monitor/NetworkMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/monitor/NetworkMonitor$TrafficComparator;->this$0:Lcom/android/monitor/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/monitor/NetworkMonitor$UidInfo;Lcom/android/monitor/NetworkMonitor$UidInfo;)I
    .locals 9
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v8, 0x2

    .line 703
    iget-object v4, p1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mTxBytes:[J

    aget-wide v4, v4, v8

    iget-object v6, p1, Lcom/android/monitor/NetworkMonitor$UidInfo;->mRxBytes:[J

    aget-wide v6, v6, v8

    add-long v0, v4, v6

    .line 704
    .local v0, abytes:J
    iget-object v4, p2, Lcom/android/monitor/NetworkMonitor$UidInfo;->mTxBytes:[J

    aget-wide v4, v4, v8

    iget-object v6, p2, Lcom/android/monitor/NetworkMonitor$UidInfo;->mRxBytes:[J

    aget-wide v6, v6, v8

    add-long v2, v4, v6

    .line 705
    .local v2, bbytes:J
    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 701
    check-cast p1, Lcom/android/monitor/NetworkMonitor$UidInfo;

    .end local p1
    check-cast p2, Lcom/android/monitor/NetworkMonitor$UidInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/monitor/NetworkMonitor$TrafficComparator;->compare(Lcom/android/monitor/NetworkMonitor$UidInfo;Lcom/android/monitor/NetworkMonitor$UidInfo;)I

    move-result v0

    return v0
.end method
