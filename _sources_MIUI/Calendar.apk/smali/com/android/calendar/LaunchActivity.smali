.class public Lcom/android/calendar/LaunchActivity;
.super Landroid/app/Activity;
.source "LaunchActivity.java"


# static fields
.field static final KEY_DETAIL_VIEW:Ljava/lang/String; = "DETAIL_VIEW"

.field static final KEY_VIEW_TYPE:Ljava/lang/String; = "VIEW"

.field private static final TAG:Ljava/lang/String; = "LaunchActivity"

.field static final VIEW_TYPE_DAY:Ljava/lang/String; = "DAY"


# instance fields
.field private mExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private launchCalendarView()V
    .locals 10

    .prologue
    const-string v9, "DAY"

    .line 69
    invoke-virtual {p0}, Lcom/android/calendar/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 70
    .local v3, myIntent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 73
    .local v2, myData:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v1, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 78
    :cond_0
    const-string v0, "startView"

    .line 79
    .local v0, defaultViewKey:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/calendar/LaunchActivity;->mExtras:Landroid/os/Bundle;

    if-eqz v6, :cond_1

    .line 80
    iget-object v6, p0, Lcom/android/calendar/LaunchActivity;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 81
    iget-object v6, p0, Lcom/android/calendar/LaunchActivity;->mExtras:Landroid/os/Bundle;

    const-string v7, "DETAIL_VIEW"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 82
    const-string v0, "preferredDetailedView"

    .line 87
    :cond_1
    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 89
    invoke-static {p0}, Lcom/android/calendar/CalendarPreferenceActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 91
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v6, "DAY"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 92
    sget-object v6, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v5, v6, v7

    .line 101
    .local v5, startActivity:Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const/high16 v6, 0x2002

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/calendar/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/calendar/LaunchActivity;->finish()V

    .line 105
    return-void

    .line 83
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    .end local v5           #startActivity:Ljava/lang/String;
    :cond_2
    const-string v6, "DAY"

    iget-object v6, p0, Lcom/android/calendar/LaunchActivity;->mExtras:Landroid/os/Bundle;

    const-string v7, "VIEW"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 84
    const-string v0, "DAY"

    goto :goto_0

    .line 93
    .restart local v4       #prefs:Landroid/content/SharedPreferences;
    :cond_3
    const-string v6, "preferredDetailedView"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 94
    sget-object v6, Lcom/android/calendar/CalendarPreferenceActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #startActivity:Ljava/lang/String;
    goto :goto_1

    .line 97
    .end local v5           #startActivity:Ljava/lang/String;
    :cond_4
    sget-object v6, Lcom/android/calendar/CalendarPreferenceActivity;->DEFAULT_START_VIEW:Ljava/lang/String;

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #startActivity:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/calendar/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/LaunchActivity;->mExtras:Landroid/os/Bundle;

    .line 51
    if-nez p1, :cond_0

    .line 52
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasCalendarAccount(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-direct {p0}, Lcom/android/calendar/LaunchActivity;->launchCalendarView()V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/calendar/MonthActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0}, Lcom/android/calendar/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/calendar/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/calendar/LaunchActivity;->finish()V

    goto :goto_0
.end method
