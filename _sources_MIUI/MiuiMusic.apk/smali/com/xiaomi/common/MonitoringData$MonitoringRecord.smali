.class public Lcom/xiaomi/common/MonitoringData$MonitoringRecord;
.super Ljava/lang/Object;
.source "MonitoringData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/common/MonitoringData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonitoringRecord"
.end annotation


# instance fields
.field private mKey:Ljava/lang/String;

.field private mReportSchedule:I

.field private mRowId:J

.field private mTimestamp:J

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .parameter "dbIterator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dbIterator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    const-string v0, "key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mKey:Ljava/lang/String;

    .line 83
    const-string v0, "value"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mValue:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/common/Base64Coder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mKey:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/common/Base64Coder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mValue:Ljava/lang/String;

    .line 86
    const-string v0, "schedule"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mReportSchedule:I

    .line 87
    const-string v0, "timestamp"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mTimestamp:J

    .line 88
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mRowId:J

    .line 89
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .parameter "key"
    .parameter "value"
    .parameter "schedule"
    .parameter "storeInSqlDb"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lcom/xiaomi/common/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    invoke-static {p2}, Lcom/xiaomi/common/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    iput-object p1, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mKey:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mValue:Ljava/lang/String;

    .line 66
    if-eqz p4, :cond_2

    .line 67
    iget-object v0, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/common/Base64Coder;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mKey:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/common/Base64Coder;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mValue:Ljava/lang/String;

    .line 70
    :cond_2
    iput p3, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mReportSchedule:I

    .line 71
    sget-object v0, Lcom/xiaomi/common/DateTimeHelper;->sBeijingTimeZone:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mTimestamp:J

    .line 72
    if-eqz p4, :cond_3

    .line 73
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mRowId:J

    .line 76
    :goto_0
    return-void

    .line 75
    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mRowId:J

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IZLcom/xiaomi/common/MonitoringData$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getReportSchedule()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mReportSchedule:I

    return v0
.end method

.method public getRowId()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mRowId:J

    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mTimestamp:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 113
    const-string v0, "[key:%s], [value:%s], [schedule:%d], [timestampe:%s], [rowid:%s]"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mKey:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mReportSchedule:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/xiaomi/common/MonitoringData$MonitoringRecord;->mRowId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
