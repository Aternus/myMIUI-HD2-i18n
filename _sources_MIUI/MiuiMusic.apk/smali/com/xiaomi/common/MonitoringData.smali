.class public Lcom/xiaomi/common/MonitoringData;
.super Ljava/lang/Object;
.source "MonitoringData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/common/MonitoringData$1;,
        Lcom/xiaomi/common/MonitoringData$MonitoringRecord;
    }
.end annotation


# static fields
.field public static final ReportSchedule_Always:I = 0x0

.field public static final ReportSchedule_Daily:I = 0x1

.field public static final ReportSchedule_Once:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static final createDailyFeatureUsageRecord(Ljava/lang/String;)Lcom/xiaomi/common/MonitoringData$MonitoringRecord;
    .locals 6
    .parameter "featureName"

    .prologue
    const/4 v3, 0x1

    .line 33
    invoke-static {p0}, Lcom/xiaomi/common/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "featureName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    new-instance v0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;

    const-string v1, "feature/usage"

    const/4 v5, 0x0

    move-object v2, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;-><init>(Ljava/lang/String;Ljava/lang/String;IZLcom/xiaomi/common/MonitoringData$1;)V

    return-object v0
.end method

.method public static final createDailyNetworkFlowRecord(Ljava/lang/String;)Lcom/xiaomi/common/MonitoringData$MonitoringRecord;
    .locals 6
    .parameter "networkFlow"

    .prologue
    const/4 v3, 0x1

    .line 43
    new-instance v0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;

    const-string v1, "info/network_flow"

    const/4 v5, 0x0

    move-object v2, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;-><init>(Ljava/lang/String;Ljava/lang/String;IZLcom/xiaomi/common/MonitoringData$1;)V

    return-object v0
.end method

.method public static final createDailyNetworkInterfaceRecord(Ljava/lang/String;)Lcom/xiaomi/common/MonitoringData$MonitoringRecord;
    .locals 6
    .parameter "interfaces"

    .prologue
    const/4 v3, 0x1

    .line 50
    new-instance v0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;

    const-string v1, "info/network_interface"

    const/4 v5, 0x0

    move-object v2, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;-><init>(Ljava/lang/String;Ljava/lang/String;IZLcom/xiaomi/common/MonitoringData$1;)V

    return-object v0
.end method

.method public static final createPhoneInfoRecord(Ljava/lang/String;)Lcom/xiaomi/common/MonitoringData$MonitoringRecord;
    .locals 6
    .parameter "XML"

    .prologue
    .line 23
    invoke-static {p0}, Lcom/xiaomi/common/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ROM XML"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    new-instance v0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;

    const-string v1, "Info/PhoneInfo"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;-><init>(Ljava/lang/String;Ljava/lang/String;IZLcom/xiaomi/common/MonitoringData$1;)V

    return-object v0
.end method
