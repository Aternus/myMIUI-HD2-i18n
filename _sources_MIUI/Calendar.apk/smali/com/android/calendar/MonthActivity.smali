.class public Lcom/android/calendar/MonthActivity;
.super Landroid/app/Activity;
.source "MonthActivity.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/android/calendar/Navigator;
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static final ACCOUNT_WARNING_DIALOG_SHOWN_PREF:Ljava/lang/String; = "account_warning_dialog_shown"

.field private static final DAY_OF_WEEK_KINDS:[I = null

.field private static final DAY_OF_WEEK_LABEL_IDS:[I = null

.field private static final INITIAL_HEAP_SIZE:I = 0x400000


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field mEventLoader:Lcom/android/calendar/EventLoader;

.field private mHasAccount:Z

.field private mInAnimationFuture:Landroid/view/animation/Animation;

.field private mInAnimationPast:Landroid/view/animation/Animation;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOutAnimationFuture:Landroid/view/animation/Animation;

.field private mOutAnimationPast:Landroid/view/animation/Animation;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStartDay:I

.field private mSwitcher:Landroid/widget/ViewSwitcher;

.field private mTime:Landroid/text/format/Time;

.field private mUpdateTZ:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 81
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/calendar/MonthActivity;->DAY_OF_WEEK_LABEL_IDS:[I

    .line 84
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/calendar/MonthActivity;->DAY_OF_WEEK_KINDS:[I

    return-void

    .line 81
    :array_0
    .array-data 0x4
        0x61t 0x0t 0xct 0x7ft
        0x62t 0x0t 0xct 0x7ft
        0x63t 0x0t 0xct 0x7ft
        0x64t 0x0t 0xct 0x7ft
        0x65t 0x0t 0xct 0x7ft
        0x66t 0x0t 0xct 0x7ft
        0x67t 0x0t 0xct 0x7ft
    .end array-data

    .line 84
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    new-instance v0, Lcom/android/calendar/MonthActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/MonthActivity$1;-><init>(Lcom/android/calendar/MonthActivity;)V

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    .line 200
    new-instance v0, Lcom/android/calendar/MonthActivity$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/MonthActivity$2;-><init>(Lcom/android/calendar/MonthActivity;)V

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 214
    new-instance v0, Lcom/android/calendar/MonthActivity$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/MonthActivity$3;-><init>(Lcom/android/calendar/MonthActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/MonthActivity;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    return-object v0
.end method


# virtual methods
.method eventsChanged()V
    .locals 2

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    .line 194
    .local v0, view:Lcom/android/calendar/MonthView;
    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->reloadEvents()V

    .line 195
    return-void
.end method

.method public getAllDay()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedTime()J
    .locals 3

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    .line 181
    .local v0, mv:Lcom/android/calendar/MonthView;
    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->getSelectedTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method getStartDay()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    return v0
.end method

.method public goTo(Landroid/text/format/Time;Z)V
    .locals 7
    .parameter "time"
    .parameter "animate"

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/android/calendar/MonthActivity;->updateTitle(Landroid/text/format/Time;)V

    .line 132
    iget-object v5, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    .line 133
    .local v0, current:Lcom/android/calendar/MonthView;
    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->dismissPopup()V

    .line 135
    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->getTime()Landroid/text/format/Time;

    move-result-object v2

    .line 141
    .local v2, currentTime:Landroid/text/format/Time;
    if-eqz p2, :cond_0

    .line 142
    iget v5, v2, Landroid/text/format/Time;->month:I

    iget v6, v2, Landroid/text/format/Time;->year:I

    mul-int/lit8 v6, v6, 0xc

    add-int v1, v5, v6

    .line 143
    .local v1, currentMonth:I
    iget v5, p1, Landroid/text/format/Time;->month:I

    iget v6, p1, Landroid/text/format/Time;->year:I

    mul-int/lit8 v6, v6, 0xc

    add-int v4, v5, v6

    .line 144
    .local v4, nextMonth:I
    if-ge v4, v1, :cond_1

    .line 145
    iget-object v5, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mInAnimationPast:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 146
    iget-object v5, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationPast:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 153
    .end local v1           #currentMonth:I
    .end local v4           #nextMonth:I
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/MonthView;

    .line 154
    .local v3, next:Lcom/android/calendar/MonthView;
    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->getSelectionMode()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/calendar/MonthView;->setSelectionMode(I)V

    .line 155
    invoke-virtual {v3, p1}, Lcom/android/calendar/MonthView;->setSelectedTime(Landroid/text/format/Time;)V

    .line 156
    invoke-virtual {v3}, Lcom/android/calendar/MonthView;->reloadEvents()V

    .line 157
    invoke-virtual {v3}, Lcom/android/calendar/MonthView;->animationStarted()V

    .line 158
    iget-object v5, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 159
    invoke-virtual {v3}, Lcom/android/calendar/MonthView;->requestFocus()Z

    .line 160
    iput-object p1, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    .line 161
    return-void

    .line 148
    .end local v3           #next:Lcom/android/calendar/MonthView;
    .restart local v1       #currentMonth:I
    .restart local v4       #nextMonth:I
    :cond_1
    iget-object v5, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mInAnimationFuture:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 149
    iget-object v5, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationFuture:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public goToToday()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 164
    new-instance v0, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 165
    .local v0, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 166
    iput v5, v0, Landroid/text/format/Time;->minute:I

    .line 167
    iput v5, v0, Landroid/text/format/Time;->second:I

    .line 168
    invoke-virtual {v0, v5}, Landroid/text/format/Time;->normalize(Z)J

    .line 170
    const v3, 0x7f0c0003

    invoke-virtual {p0, v3}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 171
    .local v1, title:Landroid/widget/TextView;
    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->formatMonthYear(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iput-object v0, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    .line 174
    iget-object v3, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/MonthView;

    .line 175
    .local v2, view:Lcom/android/calendar/MonthView;
    invoke-virtual {v2, v0}, Lcom/android/calendar/MonthView;->setSelectedTime(Landroid/text/format/Time;)V

    .line 176
    invoke-virtual {v2}, Lcom/android/calendar/MonthView;->reloadEvents()V

    .line 177
    return-void
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 101
    new-instance v0, Lcom/android/calendar/MonthView;

    invoke-direct {v0, p0, p0}, Lcom/android/calendar/MonthView;-><init>(Lcom/android/calendar/MonthActivity;Lcom/android/calendar/Navigator;)V

    .line 102
    .local v0, mv:Lcom/android/calendar/MonthView;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/calendar/MonthView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/android/calendar/MonthView;->setSelectedTime(Landroid/text/format/Time;)V

    .line 105
    iget-boolean v1, p0, Lcom/android/calendar/MonthActivity;->mHasAccount:Z

    invoke-virtual {v0, v1}, Lcom/android/calendar/MonthView;->setHasAccount(Z)V

    .line 106
    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    .line 233
    .local v0, monthView:Lcom/android/calendar/MonthView;
    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->animationFinished()V

    .line 234
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 237
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 228
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v13, 0x1

    .line 241
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 245
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v10

    const-wide/32 v11, 0x400000

    invoke-virtual {v10, v11, v12}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    .line 247
    const v10, 0x7f030013

    invoke-virtual {p0, v10}, Lcom/android/calendar/MonthActivity;->setContentView(I)V

    .line 248
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iput-object v10, p0, Lcom/android/calendar/MonthActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 251
    if-eqz p1, :cond_1

    .line 252
    const-string v10, "beginTime"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 257
    .local v7, time:J
    :goto_0
    new-instance v10, Landroid/text/format/Time;

    iget-object v11, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v11}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    .line 258
    iget-object v10, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v10, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 259
    iget-object v10, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v10, v13}, Landroid/text/format/Time;->normalize(Z)J

    .line 262
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v10

    iput v10, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    .line 263
    iget v10, p0, Lcom/android/calendar/MonthActivity;->mStartDay:I

    sub-int/2addr v10, v13

    sub-int v2, v10, v13

    .line 264
    .local v2, diff:I
    invoke-static {}, Lcom/android/calendar/Utils;->getFirstDayOfWeek()I

    move-result v5

    .line 265
    .local v5, startDay:I
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070003

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 266
    .local v6, sundayColor:I
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070004

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 268
    .local v4, saturdayColor:I
    const/4 v0, 0x0

    .local v0, day:I
    :goto_1
    const/4 v10, 0x7

    if-ge v0, v10, :cond_3

    .line 269
    sget-object v10, Lcom/android/calendar/MonthActivity;->DAY_OF_WEEK_KINDS:[I

    aget v10, v10, v0

    add-int/2addr v10, v2

    rem-int/lit8 v10, v10, 0x7

    add-int/lit8 v10, v10, 0x1

    const/16 v11, 0x14

    invoke-static {v10, v11}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, dayString:Ljava/lang/String;
    sget-object v10, Lcom/android/calendar/MonthActivity;->DAY_OF_WEEK_LABEL_IDS:[I

    aget v10, v10, v0

    invoke-virtual {p0, v10}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 272
    .local v3, label:Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->isSunday(II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 274
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 254
    .end local v0           #day:I
    .end local v1           #dayString:Ljava/lang/String;
    .end local v2           #diff:I
    .end local v3           #label:Landroid/widget/TextView;
    .end local v4           #saturdayColor:I
    .end local v5           #startDay:I
    .end local v6           #sundayColor:I
    .end local v7           #time:J
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-static {v10}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v7

    .restart local v7       #time:J
    goto :goto_0

    .line 275
    .restart local v0       #day:I
    .restart local v1       #dayString:Ljava/lang/String;
    .restart local v2       #diff:I
    .restart local v3       #label:Landroid/widget/TextView;
    .restart local v4       #saturdayColor:I
    .restart local v5       #startDay:I
    .restart local v6       #sundayColor:I
    :cond_2
    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->isSaturday(II)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 276
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 281
    .end local v1           #dayString:Ljava/lang/String;
    .end local v3           #label:Landroid/widget/TextView;
    :cond_3
    const v10, 0x7f0c0003

    invoke-virtual {p0, v10}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 282
    .local v9, title:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-static {p0, v10}, Lcom/android/calendar/Utils;->formatMonthYear(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    new-instance v10, Lcom/android/calendar/EventLoader;

    invoke-direct {v10, p0}, Lcom/android/calendar/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/calendar/MonthActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 285
    const v10, 0x7f0c001f

    invoke-virtual {p0, v10}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    iput-object v10, p0, Lcom/android/calendar/MonthActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 287
    const v10, 0x7f0c0020

    invoke-virtual {p0, v10}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ViewSwitcher;

    iput-object v10, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    .line 288
    iget-object v10, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v10, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 289
    iget-object v10, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v10}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    .line 291
    const/high16 v10, 0x7f04

    invoke-static {p0, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    iput-object v10, p0, Lcom/android/calendar/MonthActivity;->mInAnimationPast:Landroid/view/animation/Animation;

    .line 292
    const v10, 0x7f040001

    invoke-static {p0, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    iput-object v10, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationPast:Landroid/view/animation/Animation;

    .line 293
    const v10, 0x7f040006

    invoke-static {p0, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    iput-object v10, p0, Lcom/android/calendar/MonthActivity;->mInAnimationFuture:Landroid/view/animation/Animation;

    .line 294
    const v10, 0x7f040007

    invoke-static {p0, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v10

    iput-object v10, p0, Lcom/android/calendar/MonthActivity;->mOutAnimationFuture:Landroid/view/animation/Animation;

    .line 296
    iget-object v10, p0, Lcom/android/calendar/MonthActivity;->mInAnimationPast:Landroid/view/animation/Animation;

    invoke-virtual {v10, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 297
    iget-object v10, p0, Lcom/android/calendar/MonthActivity;->mInAnimationFuture:Landroid/view/animation/Animation;

    invoke-virtual {v10, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 298
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/android/calendar/MonthActivity;->mHasAccount:Z

    invoke-static {p1, v0}, Lcom/android/calendar/MenuHelper;->onCreateOptionsMenu(Landroid/view/Menu;Z)Z

    .line 388
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 302
    invoke-static {p1}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v1

    .line 303
    .local v1, timeMillis:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 304
    new-instance v0, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 306
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;Z)V

    .line 308
    .end local v0           #time:Landroid/text/format/Time;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 393
    invoke-static {p0, p1, p0}, Lcom/android/calendar/MenuHelper;->onOptionsItemSelected(Landroid/app/Activity;Landroid/view/MenuItem;Lcom/android/calendar/Navigator;)Z

    .line 394
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 313
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/android/calendar/EventLoader;->stopBackgroundThread()V

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/calendar/MonthActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 317
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/calendar/MonthActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 319
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/MonthView;

    .line 320
    .local v0, view:Lcom/android/calendar/MonthView;
    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->dismissPopup()V

    .line 321
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .end local v0           #view:Lcom/android/calendar/MonthView;
    check-cast v0, Lcom/android/calendar/MonthView;

    .line 322
    .restart local v0       #view:Lcom/android/calendar/MonthView;
    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->dismissPopup()V

    .line 323
    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/android/calendar/EventLoader;->stopBackgroundThread()V

    .line 324
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 379
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 380
    invoke-virtual {p0, p1}, Lcom/android/calendar/MonthActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 381
    iget-boolean v0, p0, Lcom/android/calendar/MonthActivity;->mHasAccount:Z

    invoke-static {p0, p1, v0}, Lcom/android/calendar/MenuHelper;->onPrepareOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;Z)V

    .line 382
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v8, "account_warning_dialog_shown"

    .line 328
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 330
    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 331
    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v6}, Lcom/android/calendar/EventLoader;->startBackgroundThread()V

    .line 332
    invoke-virtual {p0}, Lcom/android/calendar/MonthActivity;->eventsChanged()V

    .line 334
    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v6}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/MonthView;

    .line 335
    .local v4, view1:Lcom/android/calendar/MonthView;
    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v6}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/MonthView;

    .line 336
    .local v5, view2:Lcom/android/calendar/MonthView;
    invoke-static {p0}, Lcom/android/calendar/CalendarPreferenceActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 337
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v6, "preferredDetailedView"

    sget-object v7, Lcom/android/calendar/CalendarPreferenceActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, str:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->updateView()V

    .line 340
    invoke-virtual {v5}, Lcom/android/calendar/MonthView;->updateView()V

    .line 341
    invoke-virtual {v4, v3}, Lcom/android/calendar/MonthView;->setDetailedView(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v5, v3}, Lcom/android/calendar/MonthView;->setDetailedView(Ljava/lang/String;)V

    .line 344
    invoke-static {p0}, Lcom/android/calendar/Utils;->hasCalendarAccount(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/calendar/MonthActivity;->mHasAccount:Z

    .line 345
    iget-boolean v6, p0, Lcom/android/calendar/MonthActivity;->mHasAccount:Z

    invoke-virtual {v4, v6}, Lcom/android/calendar/MonthView;->setHasAccount(Z)V

    .line 346
    iget-boolean v6, p0, Lcom/android/calendar/MonthActivity;->mHasAccount:Z

    invoke-virtual {v5, v6}, Lcom/android/calendar/MonthView;->setHasAccount(Z)V

    .line 347
    iget-boolean v6, p0, Lcom/android/calendar/MonthActivity;->mHasAccount:Z

    if-nez v6, :cond_0

    const-string v6, "account_warning_dialog_shown"

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 348
    invoke-static {p0}, Lcom/android/calendar/Utils;->suggestLogin(Landroid/content/Context;)V

    .line 349
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 350
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "account_warning_dialog_shown"

    invoke-interface {v0, v8, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 351
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 355
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 357
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    const-string v6, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v1}, Lcom/android/calendar/MonthActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 362
    iget-object v6, p0, Lcom/android/calendar/MonthActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/android/calendar/MonthActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v10, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 366
    invoke-static {p0, v9}, Lcom/android/calendar/Utils;->setDefaultView(Landroid/content/Context;I)V

    .line 367
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 371
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 372
    const-string v0, "beginTime"

    iget-object v1, p0, Lcom/android/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 373
    return-void
.end method

.method protected startProgressSpinner()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 92
    return-void
.end method

.method protected stopProgressSpinner()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 97
    return-void
.end method

.method public updateTitle(Landroid/text/format/Time;)V
    .locals 13
    .parameter "time"

    .prologue
    const/4 v12, 0x0

    .line 110
    const v0, 0x7f0c0003

    invoke-virtual {p0, v0}, Lcom/android/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 111
    .local v9, title:Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-static {p0, p1}, Lcom/android/calendar/Utils;->formatMonthYear(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 112
    .local v6, date:Ljava/lang/StringBuffer;
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    const/4 v5, 0x1

    .line 114
    .local v5, flags:I
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    or-int/lit16 v5, v5, 0x80

    .line 117
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 118
    .local v1, start:J
    iget-object v0, p0, Lcom/android/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v10

    .line 119
    .local v10, tz:Ljava/lang/String;
    iget v0, p1, Landroid/text/format/Time;->isDst:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v7, v0

    .line 120
    .local v7, isDST:Z
    :goto_0
    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    .line 121
    .local v8, timeZone:Ljava/util/TimeZone;
    const-string v0, " ("

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v0, p0

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v8, v7, v12, v3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    .end local v1           #start:J
    .end local v5           #flags:I
    .end local v7           #isDST:Z
    .end local v8           #timeZone:Ljava/util/TimeZone;
    .end local v10           #tz:Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    return-void

    .restart local v1       #start:J
    .restart local v5       #flags:I
    .restart local v10       #tz:Ljava/lang/String;
    :cond_2
    move v7, v12

    .line 119
    goto :goto_0
.end method
