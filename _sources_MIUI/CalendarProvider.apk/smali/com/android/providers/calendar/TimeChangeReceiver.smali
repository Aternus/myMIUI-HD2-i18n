.class public Lcom/android/providers/calendar/TimeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimeChangeReceiver.java"


# instance fields
.field mAppWidgetProvider:Lcom/android/providers/calendar/CalendarAppWidgetProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    invoke-static {}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->getInstance()Lcom/android/providers/calendar/CalendarAppWidgetProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/TimeChangeReceiver;->mAppWidgetProvider:Lcom/android/providers/calendar/CalendarAppWidgetProvider;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 36
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 37
    .local v0, considerIgnore:Z
    iget-object v1, p0, Lcom/android/providers/calendar/TimeChangeReceiver;->mAppWidgetProvider:Lcom/android/providers/calendar/CalendarAppWidgetProvider;

    invoke-virtual {v1, p1, v0}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->timeUpdated(Landroid/content/Context;Z)V

    .line 38
    return-void
.end method
