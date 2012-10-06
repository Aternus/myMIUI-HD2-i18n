.class Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;
.super Lcom/android/settings/battery_history/BatteryHistory$Graphable;
.source "BatteryHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/battery_history/BatteryHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiscUsage"
.end annotation


# instance fields
.field mInfoLabel:Ljava/lang/String;

.field mInfoLabelRes:I

.field mTotalRealtime:D

.field mUsage:[D

.field final synthetic this$0:Lcom/android/settings/battery_history/BatteryHistory;


# direct methods
.method public constructor <init>(Lcom/android/settings/battery_history/BatteryHistory;Ljava/lang/String;IJJ)V
    .locals 4
    .parameter
    .parameter "name"
    .parameter "infoLabelRes"
    .parameter "value"
    .parameter "totalRealtime"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    invoke-direct {p0, p1}, Lcom/android/settings/battery_history/BatteryHistory$Graphable;-><init>(Lcom/android/settings/battery_history/BatteryHistory;)V

    .line 412
    iput-object p2, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mName:Ljava/lang/String;

    .line 414
    iput p3, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mInfoLabelRes:I

    .line 416
    const/4 v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mUsage:[D

    .line 417
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mUsage:[D

    const/4 v1, 0x0

    long-to-double v2, p4

    aput-wide v2, v0, v1

    .line 418
    long-to-double v0, p6

    iput-wide v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mTotalRealtime:D

    .line 419
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/battery_history/BatteryHistory;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 4
    .parameter
    .parameter "name"
    .parameter "infoLabel"
    .parameter "value"
    .parameter "totalRealtime"

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    invoke-direct {p0, p1}, Lcom/android/settings/battery_history/BatteryHistory$Graphable;-><init>(Lcom/android/settings/battery_history/BatteryHistory;)V

    .line 423
    iput-object p2, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mName:Ljava/lang/String;

    .line 425
    iput-object p3, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mInfoLabel:Ljava/lang/String;

    .line 427
    const/4 v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mUsage:[D

    .line 428
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mUsage:[D

    const/4 v1, 0x0

    long-to-double v2, p4

    aput-wide v2, v0, v1

    .line 429
    long-to-double v0, p6

    iput-wide v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mTotalRealtime:D

    .line 430
    return-void
.end method


# virtual methods
.method public getInfo(Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter "info"

    .prologue
    const/4 v3, 0x0

    .line 449
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mInfoLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mInfoLabel:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    iget-object v1, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mUsage:[D

    aget-wide v1, v1, v3

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settings/battery_history/BatteryHistory;->formatTime(DLjava/lang/StringBuilder;)V

    .line 452
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mUsage:[D

    aget-wide v0, v0, v3

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mTotalRealtime:D

    div-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 454
    const-string v0, "%)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->this$0:Lcom/android/settings/battery_history/BatteryHistory;

    iget v1, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mInfoLabelRes:I

    invoke-virtual {v0, v1}, Lcom/android/settings/battery_history/BatteryHistory;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$Graphable;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()D
    .locals 2

    .prologue
    .line 445
    iget-wide v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mTotalRealtime:D

    return-wide v0
.end method

.method public getSortValue()D
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mUsage:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getValues()[D
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/settings/battery_history/BatteryHistory$MiscUsage;->mUsage:[D

    return-object v0
.end method
