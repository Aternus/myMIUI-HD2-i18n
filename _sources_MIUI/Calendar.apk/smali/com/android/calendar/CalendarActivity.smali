.class public Lcom/android/calendar/CalendarActivity;
.super Landroid/app/Activity;
.source "CalendarActivity.java"

# interfaces
.implements Lcom/android/calendar/Navigator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CalendarActivity$CalendarGestureListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x190L

.field protected static final BUNDLE_KEY_RESTORE_TIME:Ljava/lang/String; = "key_restore_time"

.field private static final INITIAL_HEAP_SIZE:J = 0x400000L


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field mEventLoader:Lcom/android/calendar/EventLoader;

.field mGestureDetector:Landroid/view/GestureDetector;

.field protected mInAnimationBackward:Landroid/view/animation/Animation;

.field protected mInAnimationForward:Landroid/view/animation/Animation;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mObserver:Landroid/database/ContentObserver;

.field protected mOutAnimationBackward:Landroid/view/animation/Animation;

.field protected mOutAnimationForward:Landroid/view/animation/Animation;

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field mSelectedDay:Landroid/text/format/Time;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field protected mViewSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    new-instance v0, Lcom/android/calendar/CalendarActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarActivity$1;-><init>(Lcom/android/calendar/CalendarActivity;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    .line 80
    new-instance v0, Lcom/android/calendar/CalendarActivity$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/CalendarActivity$2;-><init>(Lcom/android/calendar/CalendarActivity;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    new-instance v0, Lcom/android/calendar/CalendarActivity$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/CalendarActivity$3;-><init>(Lcom/android/calendar/CalendarActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mObserver:Landroid/database/ContentObserver;

    .line 358
    return-void
.end method


# virtual methods
.method eventsChanged()V
    .locals 2

    .prologue
    .line 254
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 255
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->clearCachedEvents()V

    .line 256
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->reloadEvents()V

    .line 257
    return-void
.end method

.method public getAllDay()Z
    .locals 2

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 250
    .local v0, view:Lcom/android/calendar/CalendarView;
    iget-boolean v1, v0, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    return v1
.end method

.method getNewEvent()Lcom/android/calendar/Event;
    .locals 2

    .prologue
    .line 270
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 271
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getNewEvent()Lcom/android/calendar/Event;

    move-result-object v1

    return-object v1
.end method

.method public getNextView()Lcom/android/calendar/CalendarView;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/calendar/CalendarView;

    return-object p0
.end method

.method getSelectedEvent()Lcom/android/calendar/Event;
    .locals 2

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 261
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getSelectedEvent()Lcom/android/calendar/Event;

    move-result-object v1

    return-object v1
.end method

.method public getSelectedTime()J
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getSelectedTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedTimeInMillis()J
    .locals 3

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 233
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public goTo(Landroid/text/format/Time;Z)V
    .locals 4
    .parameter "time"
    .parameter "animate"

    .prologue
    .line 206
    if-eqz p2, :cond_0

    .line 207
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 208
    .local v0, current:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 210
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 217
    .end local v0           #current:Lcom/android/calendar/CalendarView;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/CalendarView;

    .line 218
    .local v1, next:Lcom/android/calendar/CalendarView;
    invoke-virtual {v1, p1}, Lcom/android/calendar/CalendarView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 219
    invoke-virtual {v1}, Lcom/android/calendar/CalendarView;->reloadEvents()V

    .line 220
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 221
    invoke-virtual {v1}, Lcom/android/calendar/CalendarView;->requestFocus()Z

    .line 222
    return-void

    .line 212
    .end local v1           #next:Lcom/android/calendar/CalendarView;
    .restart local v0       #current:Lcom/android/calendar/CalendarView;
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 213
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public goToToday()V
    .locals 4

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 242
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 243
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 244
    .local v0, view:Lcom/android/calendar/CalendarView;
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 245
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->reloadEvents()V

    .line 246
    return-void
.end method

.method isEventSelected()Z
    .locals 2

    .prologue
    .line 265
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 266
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->isEventSelected()Z

    move-result v1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 115
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-wide/32 v1, 0x400000

    invoke-virtual {v0, v1, v2}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    .line 117
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarActivity;->setDefaultKeyMode(I)V

    .line 118
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 120
    const v0, 0x7f040002

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    .line 121
    const v0, 0x7f040003

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    .line 122
    const v0, 0x7f040004

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    .line 123
    const v0, 0x7f040005

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    .line 125
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/calendar/CalendarActivity$CalendarGestureListener;

    invoke-direct {v1, p0}, Lcom/android/calendar/CalendarActivity$CalendarGestureListener;-><init>(Lcom/android/calendar/CalendarActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 126
    new-instance v0, Lcom/android/calendar/EventLoader;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 127
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 336
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/calendar/MenuHelper;->onCreateOptionsMenu(Landroid/view/Menu;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    const/4 v0, 0x0

    .line 339
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 141
    invoke-static {p1}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v1

    .line 142
    .local v1, timeMillis:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 143
    new-instance v0, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 145
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/calendar/CalendarActivity;->goTo(Landroid/text/format/Time;Z)V

    .line 147
    .end local v0           #time:Landroid/text/format/Time;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 344
    invoke-static {p0, p1, p0}, Lcom/android/calendar/MenuHelper;->onOptionsItemSelected(Landroid/app/Activity;Landroid/view/MenuItem;Lcom/android/calendar/Navigator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    const/4 v0, 0x1

    .line 347
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 184
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 185
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/calendar/CalendarActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 187
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 188
    .local v0, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->cleanup()V

    .line 189
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .end local v0           #view:Lcom/android/calendar/CalendarView;
    check-cast v0, Lcom/android/calendar/CalendarView;

    .line 190
    .restart local v0       #view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->cleanup()V

    .line 191
    iget-object v1, p0, Lcom/android/calendar/CalendarActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/android/calendar/EventLoader;->stopBackgroundThread()V

    .line 192
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 330
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/calendar/MenuHelper;->onPrepareOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;Z)V

    .line 331
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 133
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/CalendarView;

    .line 134
    .local v1, view:Lcom/android/calendar/CalendarView;
    new-instance v0, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v2}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, time:Landroid/text/format/Time;
    const-string v2, "key_restore_time"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 136
    invoke-virtual {v1, v0}, Lcom/android/calendar/CalendarView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 137
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 152
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v2}, Lcom/android/calendar/EventLoader;->startBackgroundThread()V

    .line 153
    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->eventsChanged()V

    .line 154
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/CalendarView;

    .line 155
    .local v1, view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v1}, Lcom/android/calendar/CalendarView;->updateIs24HourFormat()V

    .line 156
    invoke-virtual {v1}, Lcom/android/calendar/CalendarView;->updateView()V

    .line 158
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    .end local v1           #view:Lcom/android/calendar/CalendarView;
    check-cast v1, Lcom/android/calendar/CalendarView;

    .line 159
    .restart local v1       #view:Lcom/android/calendar/CalendarView;
    invoke-virtual {v1}, Lcom/android/calendar/CalendarView;->updateIs24HourFormat()V

    .line 160
    invoke-virtual {v1}, Lcom/android/calendar/CalendarView;->updateView()V

    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/calendar/CalendarActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    iget-object v2, p0, Lcom/android/calendar/CalendarActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/calendar/CalendarActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 172
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 178
    const-string v0, "key_restore_time"

    invoke-virtual {p0}, Lcom/android/calendar/CalendarActivity;->getSelectedTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 179
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/calendar/CalendarActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    const/4 v0, 0x1

    .line 355
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method startProgressSpinner()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/calendar/CalendarActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 197
    return-void
.end method

.method stopProgressSpinner()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/calendar/CalendarActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 202
    return-void
.end method

.method public switchViews(ZFF)Landroid/view/View;
    .locals 22
    .parameter "forward"
    .parameter "xOffSet"
    .parameter "width"

    .prologue
    .line 279
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float v20, v4, p3

    .line 280
    .local v20, progress:F
    const/high16 v4, 0x3f80

    cmpl-float v4, v20, v4

    if-lez v4, :cond_0

    .line 281
    const/high16 v20, 0x3f80

    .line 286
    :cond_0
    if-eqz p1, :cond_1

    .line 287
    const/high16 v4, 0x3f80

    sub-float v5, v4, v20

    .line 288
    .local v5, inFromXValue:F
    const/4 v7, 0x0

    .line 289
    .local v7, inToXValue:F
    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v19, v0

    .line 290
    .local v19, outFromXValue:F
    const/high16 v12, -0x4080

    .line 300
    .local v12, outToXValue:F
    :goto_0
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 306
    .local v3, inAnimation:Landroid/view/animation/TranslateAnimation;
    new-instance v8, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x1

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v10, v19

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 313
    .local v8, outAnimation:Landroid/view/animation/TranslateAnimation;
    const/high16 v4, 0x43c8

    const/high16 v5, 0x3f80

    sub-float v5, v5, v20

    mul-float/2addr v4, v5

    move v0, v4

    float-to-long v0, v0

    move-wide/from16 v17, v0

    .line 314
    .local v17, duration:J
    move-object v0, v3

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 315
    .end local v5           #inFromXValue:F
    move-object v0, v8

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object v4, v0

    invoke-virtual {v4, v8}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/calendar/CalendarView;

    .line 320
    .local v21, view:Lcom/android/calendar/CalendarView;
    invoke-virtual/range {v21 .. v21}, Lcom/android/calendar/CalendarView;->cleanup()V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v21

    .end local v21           #view:Lcom/android/calendar/CalendarView;
    check-cast v21, Lcom/android/calendar/CalendarView;

    .line 323
    .restart local v21       #view:Lcom/android/calendar/CalendarView;
    invoke-virtual/range {v21 .. v21}, Lcom/android/calendar/CalendarView;->requestFocus()Z

    .line 324
    invoke-virtual/range {v21 .. v21}, Lcom/android/calendar/CalendarView;->reloadEvents()V

    .line 325
    return-object v21

    .line 292
    .end local v3           #inAnimation:Landroid/view/animation/TranslateAnimation;
    .end local v7           #inToXValue:F
    .end local v8           #outAnimation:Landroid/view/animation/TranslateAnimation;
    .end local v12           #outToXValue:F
    .end local v17           #duration:J
    .end local v19           #outFromXValue:F
    .end local v21           #view:Lcom/android/calendar/CalendarView;
    :cond_1
    const/high16 v4, 0x3f80

    sub-float v5, v20, v4

    .line 293
    .restart local v5       #inFromXValue:F
    const/4 v7, 0x0

    .line 294
    .restart local v7       #inToXValue:F
    move/from16 v19, v20

    .line 295
    .restart local v19       #outFromXValue:F
    const/high16 v12, 0x3f80

    .restart local v12       #outToXValue:F
    goto :goto_0
.end method
