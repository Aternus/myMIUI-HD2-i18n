.class public Lcom/android/calendar/DayActivity;
.super Lcom/android/calendar/CalendarActivity;
.source "DayActivity.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# static fields
.field private static final VIEW_ID:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/calendar/CalendarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 46
    new-instance v0, Lcom/android/calendar/DayView;

    invoke-direct {v0, p0}, Lcom/android/calendar/DayView;-><init>(Lcom/android/calendar/CalendarActivity;)V

    .line 47
    .local v0, view:Lcom/android/calendar/DayView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayView;->setId(I)V

    .line 48
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 51
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/android/calendar/CalendarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/android/calendar/DayActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/android/calendar/DayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/calendar/Utils;->timeFromIntent(Landroid/content/Intent;)Landroid/text/format/Time;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 39
    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Lcom/android/calendar/DayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 40
    iget-object v0, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 41
    iget-object v0, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 42
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/android/calendar/DayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 43
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/calendar/CalendarActivity;->onPause()V

    .line 57
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 58
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getSelectedDay()Landroid/text/format/Time;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 59
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/calendar/CalendarActivity;->onResume()V

    .line 65
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->setDefaultView(Landroid/content/Context;I)V

    .line 66
    return-void
.end method
