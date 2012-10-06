.class Lcom/android/settings/battery_history/BatteryHistory$SensorUsage;
.super Lcom/android/settings/battery_history/BatteryHistory$Graphable;
.source "BatteryHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/battery_history/BatteryHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorUsage"
.end annotation


# instance fields
.field mCount:I

.field mTotalRealtime:D

.field mUsage:[D

.field final synthetic this$0:Lcom/android/settings/battery_history/BatteryHistory;


# direct methods
.method public constructor <init>(Lcom/android/settings/battery_history/BatteryHistory;IJIJ)V
    .locals 4
    .parameter
    .parameter "uid"
    .parameter "time"
    .parameter "count"
    .parameter "totalRealtime"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/settings/battery_history/BatteryHistory$SensorUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    invoke-direct {p0, p1}, Lcom/android/settings/battery_history/BatteryHistory$Graphable;-><init>(Lcom/android/settings/battery_history/BatteryHistory;)V

    .line 327
    invoke-virtual {p0, p2}, Lcom/android/settings/battery_history/BatteryHistory$SensorUsage;->getNameForUid(I)V

    .line 329
    const/4 v0, 0x1

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$SensorUsage;->mUsage:[D

    .line 330
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$SensorUsage;->mUsage:[D

    const/4 v1, 0x0

    long-to-double v2, p3

    aput-wide v2, v0, v1

    .line 331
    long-to-double v0, p6

    iput-wide v0, p0, Lcom/android/settings/battery_history/BatteryHistory$SensorUsage;->mTotalRealtime:D

    .line 333
    iput p5, p0, Lcom/android/settings/battery_history/BatteryHistory$SensorUsage;->mCount:I

    .line 334
    return-void
.end method


# virtual methods
.method public getInfo(Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter "info"

    .prologue
    const-string v3, "\n\n"

    .line 353
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$SensorUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    const v1, 0x7f090315

    invoke-virtual {v0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v0, "\n\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$SensorUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    const v1, 0x7f09030d

    invoke-virtual {v0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$SensorUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory$SensorUsage;->mUsage:[D

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settings/battery_history/BatteryHistory;->formatTime(DLjava/lang/StringBuilder;)V

    .line 358
    const-string v0, "\n\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    return-void
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()D
    .locals 2

    .prologue
    .line 349
    iget-wide v0, p0, Lcom/android/settings/battery_history/BatteryHistory$SensorUsage;->mTotalRealtime:D

    return-wide v0
.end method

.method public getSortValue()D
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$SensorUsage;->mUsage:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getValues()[D
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$SensorUsage;->mUsage:[D

    return-object v0
.end method
