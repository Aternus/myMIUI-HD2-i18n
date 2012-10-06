.class public Lcom/xiaomi/common/DateTimeHelper;
.super Ljava/lang/Object;
.source "DateTimeHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "common/DateTimeHelper"

.field public static final sBeijingTimeZone:Ljava/util/TimeZone; = null

.field public static final sDayInMilliseconds:J = 0x5265c00L

.field public static final sDayInMinutes:J = 0x5a0L

.field public static final sHourInMilliseconds:J = 0x36ee80L

.field public static final sHourInMinutes:J = 0x3cL

.field public static final sMinuteInMilliseconds:J = 0xea60L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "Asia/Shanghai"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/common/DateTimeHelper;->sBeijingTimeZone:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getCurrentTiemstamp()J
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/xiaomi/common/DateTimeHelper;->sBeijingTimeZone:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final getElapsedMinutesFromHour()J
    .locals 4

    .prologue
    .line 66
    invoke-static {}, Lcom/xiaomi/common/DateTimeHelper;->getCurrentTiemstamp()J

    move-result-wide v0

    .line 67
    .local v0, timestamp:J
    invoke-static {v0, v1}, Lcom/xiaomi/common/DateTimeHelper;->getElapsedMinutesFromHour(J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static final getElapsedMinutesFromHour(J)J
    .locals 4
    .parameter "timestamp"

    .prologue
    .line 74
    invoke-static {p0, p1}, Lcom/xiaomi/common/DateTimeHelper;->getElapsedMinutesFromToday(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    rem-long/2addr v0, v2

    return-wide v0
.end method

.method public static final getElapsedMinutesFromToday()J
    .locals 4

    .prologue
    .line 51
    invoke-static {}, Lcom/xiaomi/common/DateTimeHelper;->getCurrentTiemstamp()J

    move-result-wide v0

    .line 52
    .local v0, timestamp:J
    invoke-static {v0, v1}, Lcom/xiaomi/common/DateTimeHelper;->getElapsedMinutesFromToday(J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static final getElapsedMinutesFromToday(J)J
    .locals 4
    .parameter "timestamp"

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/xiaomi/common/DateTimeHelper;->getTodayStartTimestamp(J)J

    move-result-wide v0

    sub-long v0, p0, v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static final getTodayStartTimestamp()J
    .locals 4

    .prologue
    .line 29
    invoke-static {}, Lcom/xiaomi/common/DateTimeHelper;->getCurrentTiemstamp()J

    move-result-wide v0

    .line 30
    .local v0, timestamp:J
    invoke-static {v0, v1}, Lcom/xiaomi/common/DateTimeHelper;->getTodayStartTimestamp(J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static final getTodayStartTimestamp(J)J
    .locals 2
    .parameter "timestamp"

    .prologue
    .line 37
    const-wide/32 v0, 0x5265c00

    rem-long v0, p0, v0

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static final getTomorrowStartTimestamp(J)J
    .locals 4
    .parameter "timestamp"

    .prologue
    const-wide/32 v2, 0x5265c00

    .line 44
    rem-long v0, p0, v2

    sub-long v0, p0, v0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static getWeekday(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "date"

    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/util/Date;->getDay()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 116
    const-string v0, "\u5468\u516d"

    :goto_0
    return-object v0

    .line 104
    :pswitch_0
    const-string v0, "\u5468\u65e5"

    goto :goto_0

    .line 106
    :pswitch_1
    const-string v0, "\u5468\u4e00"

    goto :goto_0

    .line 108
    :pswitch_2
    const-string v0, "\u5468\u4e8c"

    goto :goto_0

    .line 110
    :pswitch_3
    const-string v0, "\u5468\u4e09"

    goto :goto_0

    .line 112
    :pswitch_4
    const-string v0, "\u5468\u56db"

    goto :goto_0

    .line 114
    :pswitch_5
    const-string v0, "\u5468\u4e94"

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static parseDate(Ljava/lang/String;)J
    .locals 7
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, -0x1

    .line 85
    invoke-static {p0}, Lcom/xiaomi/common/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-wide v3, v5

    .line 97
    :goto_0
    return-wide v3

    .line 88
    :cond_0
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 89
    .local v2, gc:Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 91
    .local v1, format:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 92
    sget-object v3, Lcom/xiaomi/common/DateTimeHelper;->sBeijingTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 93
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    goto :goto_0

    .line 94
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 95
    .local v0, e:Ljava/text/ParseException;
    const-string v3, "common/DateTimeHelper"

    const-string v4, "Failed to parse date"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v3, v5

    .line 97
    goto :goto_0
.end method
