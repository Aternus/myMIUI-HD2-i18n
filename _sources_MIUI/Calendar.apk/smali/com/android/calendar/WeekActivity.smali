.class public Lcom/android/calendar/WeekActivity;
.super Lcom/android/calendar/CalendarActivity;
.source "WeekActivity.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# static fields
.field private static final VIEW_ID:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/calendar/CalendarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 51
    new-instance v0, Lcom/android/calendar/WeekView;

    invoke-direct {v0, p0}, Lcom/android/calendar/WeekView;-><init>(Lcom/android/calendar/CalendarActivity;)V

    .line 52
    .local v0, wv:Lcom/android/calendar/WeekView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/WeekView;->setId(I)V

    .line 53
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/WeekView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/WeekView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 56
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/calendar/CalendarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/android/calendar/WeekActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/android/calendar/WeekActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->timeFromIntent(Landroid/content/Intent;)Landroid/text/format/Time;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 44
    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 45
    iget-object v0, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 46
    iget-object v0, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 47
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/android/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 48
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 61
    invoke-static {p1}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v1

    .line 62
    .local v1, timeMillis:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 63
    new-instance v0, Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 65
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/calendar/WeekActivity;->goTo(Landroid/text/format/Time;Z)V

    .line 67
    .end local v0           #time:Landroid/text/format/Time;
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/calendar/CalendarActivity;->onPause()V

    .line 89
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 90
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getSelectedDay()Landroid/text/format/Time;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 91
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/calendar/CalendarActivity;->onResume()V

    .line 73
    iget-object v4, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/CalendarView;

    .line 74
    .local v2, view1:Lcom/android/calendar/CalendarView;
    iget-object v4, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/CalendarView;

    .line 75
    .local v3, view2:Lcom/android/calendar/CalendarView;
    invoke-static {p0}, Lcom/android/calendar/CalendarPreferenceActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v4, "preferredDetailedView"

    sget-object v5, Lcom/android/calendar/CalendarPreferenceActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, str:Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/android/calendar/CalendarView;->setDetailedView(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v3, v1}, Lcom/android/calendar/CalendarView;->setDetailedView(Ljava/lang/String;)V

    .line 83
    const/4 v4, 0x1

    invoke-static {p0, v4}, Lcom/android/calendar/Utils;->setDefaultView(Landroid/content/Context;I)V

    .line 84
    return-void
.end method
