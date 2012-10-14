.class public Lcom/android/providers/calendar/AppWidgetShared;
.super Ljava/lang/Object;
.source "AppWidgetShared.java"


# static fields
.field private static sAppWidgetIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sChangedEventIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static sLastRequest:J

.field static sLock:Ljava/lang/Object;

.field static sUpdateRequested:Z

.field static sUpdateRunning:Z

.field static sWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sLock:Ljava/lang/Object;

    .line 38
    sput-boolean v1, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRequested:Z

    .line 39
    sput-boolean v1, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRunning:Z

    .line 44
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/providers/calendar/AppWidgetShared;->sLastRequest:J

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sAppWidgetIds:Ljava/util/HashSet;

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sChangedEventIds:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    sget-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 124
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 126
    sput-boolean v1, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRequested:Z

    .line 127
    sput-boolean v1, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRunning:Z

    .line 129
    sget-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sAppWidgetIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 130
    sget-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sChangedEventIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 131
    return-void
.end method

.method static collectAppWidgetIdsLocked()[I
    .locals 5

    .prologue
    .line 88
    sget-object v4, Lcom/android/providers/calendar/AppWidgetShared;->sAppWidgetIds:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v3

    .line 89
    .local v3, size:I
    new-array v0, v3, [I

    .line 90
    .local v0, array:[I
    sget-object v4, Lcom/android/providers/calendar/AppWidgetShared;->sAppWidgetIds:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 91
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 92
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v1

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_0
    sget-object v4, Lcom/android/providers/calendar/AppWidgetShared;->sAppWidgetIds:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 95
    return-object v0
.end method

.method static collectChangedEventIdsLocked()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 106
    .local v1, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    sget-object v3, Lcom/android/providers/calendar/AppWidgetShared;->sChangedEventIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 107
    .local v2, value:Ljava/lang/Long;
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    .end local v2           #value:Ljava/lang/Long;
    :cond_0
    sget-object v3, Lcom/android/providers/calendar/AppWidgetShared;->sChangedEventIds:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 110
    return-object v1
.end method

.method static mergeAppWidgetIdsLocked([I)V
    .locals 6
    .parameter "appWidgetIds"

    .prologue
    .line 56
    if-eqz p0, :cond_0

    .line 57
    move-object v1, p0

    .local v1, arr$:[I
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, v1, v2

    .line 58
    .local v0, appWidgetId:I
    sget-object v4, Lcom/android/providers/calendar/AppWidgetShared;->sAppWidgetIds:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    .end local v0           #appWidgetId:I
    .end local v1           #arr$:[I
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    sget-object v4, Lcom/android/providers/calendar/AppWidgetShared;->sAppWidgetIds:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 63
    :cond_1
    return-void
.end method

.method static mergeChangedEventIdsLocked([J)V
    .locals 7
    .parameter "changedEventIds"

    .prologue
    .line 72
    if-eqz p0, :cond_0

    .line 73
    move-object v0, p0

    .local v0, arr$:[J
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-wide v1, v0, v3

    .line 74
    .local v1, changedEventId:J
    sget-object v5, Lcom/android/providers/calendar/AppWidgetShared;->sChangedEventIds:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 77
    .end local v0           #arr$:[J
    .end local v1           #changedEventId:J
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    sget-object v5, Lcom/android/providers/calendar/AppWidgetShared;->sChangedEventIds:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 79
    :cond_1
    return-void
.end method
