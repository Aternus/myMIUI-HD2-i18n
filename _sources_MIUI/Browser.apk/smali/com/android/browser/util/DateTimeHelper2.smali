.class public Lcom/android/browser/util/DateTimeHelper2;
.super Ljava/lang/Object;
.source "DateTimeHelper2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getElapsedTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "timestamp"

    .prologue
    const-wide/32 v9, 0x5265c00

    const-wide/32 v7, 0x36ee80

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 14
    invoke-static {}, Lcom/android/browser/common/DateTimeHelper;->getCurrentTiemstamp()J

    move-result-wide v2

    sub-long v0, v2, p1

    .line 15
    .local v0, timeDeta:J
    cmp-long v2, v0, v7

    if-gez v2, :cond_0

    .line 16
    const/high16 v2, 0x7f09

    new-array v3, v4, [Ljava/lang/Object;

    const-wide/32 v4, 0xea60

    div-long v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 19
    :goto_0
    return-object v2

    .line 17
    :cond_0
    cmp-long v2, v0, v9

    if-gez v2, :cond_1

    .line 18
    const v2, 0x7f090001

    new-array v3, v4, [Ljava/lang/Object;

    div-long v4, v0, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 19
    :cond_1
    const v2, 0x7f090002

    new-array v3, v4, [Ljava/lang/Object;

    div-long v4, v0, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
