.class public abstract Lcom/android/browser/common/BasicRefreshScheduler;
.super Ljava/lang/Object;
.source "BasicRefreshScheduler.java"


# static fields
.field public static final AUTO:I = 0x0

.field public static final CHECK_NEW_VERSION:I = 0x8

.field public static final FORCE:I = 0x10

.field protected static final Preference_Name:Ljava/lang/String; = "RefreshScheduler"

.field public static final SCHEDULE_ALWAYS:I = 0x0

.field public static final SCHEDULE_DAILY:I = 0x1


# instance fields
.field protected mContext:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/browser/common/BasicRefreshScheduler;->mContext:Landroid/app/Activity;

    .line 26
    return-void
.end method


# virtual methods
.method protected canRefresh(IILjava/lang/String;)Z
    .locals 5
    .parameter "mode"
    .parameter "schedule"
    .parameter "lastRefreshTimePrefKey"

    .prologue
    const/4 v4, 0x1

    .line 72
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_0

    move v2, v4

    .line 83
    :goto_0
    return v2

    .line 75
    :cond_0
    if-nez p2, :cond_1

    move v2, v4

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    if-ne p2, v4, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 79
    invoke-virtual {p0, p3}, Lcom/android/browser/common/BasicRefreshScheduler;->getLastRefreshTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 80
    .local v0, lastRefreshTime:J
    invoke-static {}, Lcom/android/browser/common/DateTimeHelper;->getTodayStartTimestamp()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_2

    move v2, v4

    .line 81
    goto :goto_0

    .line 83
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 86
    .end local v0           #lastRefreshTime:J
    :cond_3
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method protected getDefaultRefreshMode()I
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x8

    return v0
.end method

.method protected abstract getDefaultRefreshTask(I)Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method protected getLastRefreshTime(Ljava/lang/String;)J
    .locals 4
    .parameter "lastRefreshTimePrefKey"

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/browser/common/BasicRefreshScheduler;->mContext:Landroid/app/Activity;

    const-string v2, "RefreshScheduler"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method protected onRefreshIgnored()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public refresh(II)V
    .locals 1
    .parameter "mode"
    .parameter "schedule"

    .prologue
    .line 32
    if-eqz p2, :cond_0

    .line 33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 35
    :cond_0
    if-nez p1, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/android/browser/common/BasicRefreshScheduler;->getDefaultRefreshMode()I

    move-result p1

    .line 38
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/browser/common/BasicRefreshScheduler;->canRefresh(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/android/browser/common/BasicRefreshScheduler;->onRefreshIgnored()V

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/browser/common/BasicRefreshScheduler;->refreshInternal(I)V

    goto :goto_0
.end method

.method public refreshDaily(ILjava/lang/String;)V
    .locals 1
    .parameter "mode"
    .parameter "lastRefreshTimePrefKey"

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/android/browser/common/BasicRefreshScheduler;->getDefaultRefreshMode()I

    move-result p1

    .line 52
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/browser/common/BasicRefreshScheduler;->canRefresh(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/android/browser/common/BasicRefreshScheduler;->onRefreshIgnored()V

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/browser/common/BasicRefreshScheduler;->refreshInternal(I)V

    goto :goto_0
.end method

.method protected refreshInternal(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/android/browser/common/BasicRefreshScheduler;->getDefaultRefreshTask(I)Landroid/os/AsyncTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    return-void
.end method

.method public updateLastRefreshTime(Ljava/lang/String;)V
    .locals 5
    .parameter "lastRefreshTimePrefKey"

    .prologue
    .line 95
    iget-object v2, p0, Lcom/android/browser/common/BasicRefreshScheduler;->mContext:Landroid/app/Activity;

    const-string v3, "RefreshScheduler"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 96
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/browser/common/DateTimeHelper;->getCurrentTiemstamp()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    return-void
.end method
