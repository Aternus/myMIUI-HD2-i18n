.class public Lcom/android/calendar/AgendaActivity;
.super Landroid/app/Activity;
.source "AgendaActivity.java"

# interfaces
.implements Lcom/android/calendar/Navigator;


# static fields
.field protected static final BUNDLE_KEY_RESTORE_TIME:Ljava/lang/String; = "key_restore_time"

.field private static DEBUG:Z = false

.field private static final INITIAL_HEAP_SIZE:J = 0x400000L

.field private static final TAG:Ljava/lang/String; = "AgendaActivity"


# instance fields
.field private mAgendaListView:Lcom/android/calendar/AgendaListView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mObserver:Landroid/database/ContentObserver;

.field private mTime:Landroid/text/format/Time;

.field private mTitle:Ljava/lang/String;

.field private mUpdateTZ:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/calendar/AgendaActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    new-instance v0, Lcom/android/calendar/AgendaActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/AgendaActivity$1;-><init>(Lcom/android/calendar/AgendaActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mUpdateTZ:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Lcom/android/calendar/AgendaActivity$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/AgendaActivity$2;-><init>(Lcom/android/calendar/AgendaActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    new-instance v0, Lcom/android/calendar/AgendaActivity$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/AgendaActivity$3;-><init>(Lcom/android/calendar/AgendaActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/AgendaActivity;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/AgendaActivity;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/AgendaActivity;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/AgendaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->updateTitle()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/AgendaActivity;)Lcom/android/calendar/AgendaListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    return-object v0
.end method

.method private updateTitle()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 144
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mTitle:Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .local v8, title:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v9

    .line 146
    .local v9, tz:Ljava/lang/String;
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    const/4 v5, 0x1

    .line 148
    .local v5, flags:I
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    or-int/lit16 v5, v5, 0x80

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->isDst:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v6, v0

    .line 152
    .local v6, isDST:Z
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 153
    .local v1, start:J
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 154
    .local v7, timeZone:Ljava/util/TimeZone;
    const-string v0, " ("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v0, p0

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v7, v6, v11, v3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .end local v1           #start:J
    .end local v5           #flags:I
    .end local v6           #isDST:Z
    .end local v7           #timeZone:Ljava/util/TimeZone;
    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    return-void

    .restart local v5       #flags:I
    :cond_2
    move v6, v11

    .line 151
    goto :goto_0
.end method


# virtual methods
.method public getAllDay()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedTime()J
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaListView;->getSelectedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public goTo(Landroid/text/format/Time;Z)V
    .locals 2
    .parameter "time"
    .parameter "animate"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/calendar/AgendaListView;->goTo(Landroid/text/format/Time;Z)V

    .line 261
    return-void
.end method

.method public goToToday()V
    .locals 3

    .prologue
    .line 254
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, now:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 256
    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/calendar/AgendaListView;->goTo(Landroid/text/format/Time;Z)V

    .line 257
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const-wide/16 v6, 0x0

    const-string v8, "AgendaActivity"

    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    const-wide/32 v4, 0x400000

    invoke-virtual {v3, v4, v5}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    .line 106
    new-instance v3, Lcom/android/calendar/AgendaListView;

    invoke-direct {v3, p0}, Lcom/android/calendar/AgendaListView;-><init>(Lcom/android/calendar/AgendaActivity;)V

    iput-object v3, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    .line 107
    iget-object v3, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {p0, v3}, Lcom/android/calendar/AgendaActivity;->setContentView(Landroid/view/View;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/AgendaActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 111
    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/calendar/AgendaActivity;->mTitle:Ljava/lang/String;

    .line 113
    const-wide/16 v0, 0x0

    .line 114
    .local v0, millis:J
    new-instance v3, Landroid/text/format/Time;

    iget-object v4, p0, Lcom/android/calendar/AgendaActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    .line 115
    if-eqz p1, :cond_0

    .line 117
    const-string v3, "key_restore_time"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 118
    sget-boolean v3, Lcom/android/calendar/AgendaActivity;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 119
    const-string v3, "AgendaActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restore value from icicle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    cmp-long v3, v0, v6

    if-nez v3, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "beginTime"

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 126
    sget-boolean v3, Lcom/android/calendar/AgendaActivity;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 127
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 128
    .local v2, time:Landroid/text/format/Time;
    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 129
    const-string v3, "AgendaActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restore value from intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v2           #time:Landroid/text/format/Time;
    :cond_1
    cmp-long v3, v0, v6

    if-nez v3, :cond_3

    .line 134
    sget-boolean v3, Lcom/android/calendar/AgendaActivity;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 135
    const-string v3, "AgendaActivity"

    const-string v3, "Restored from current time"

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 139
    :cond_3
    iget-object v3, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 140
    invoke-direct {p0}, Lcom/android/calendar/AgendaActivity;->updateTitle()V

    .line 141
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 231
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/calendar/MenuHelper;->onCreateOptionsMenu(Landroid/view/Menu;Z)Z

    .line 232
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 243
    packed-switch p1, :pswitch_data_0

    .line 249
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 246
    :pswitch_0
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaListView;->deleteSelectedEvent()V

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 163
    invoke-static {p1}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v0

    .line 164
    .local v0, time:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 165
    iget-object v2, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 166
    iget-object v2, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/calendar/AgendaActivity;->goTo(Landroid/text/format/Time;Z)V

    .line 168
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 237
    invoke-static {p0, p1, p0}, Lcom/android/calendar/MenuHelper;->onOptionsItemSelected(Landroid/app/Activity;Landroid/view/MenuItem;Lcom/android/calendar/Navigator;)Z

    .line 238
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 218
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v0}, Lcom/android/calendar/AgendaListView;->onPause()V

    .line 219
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/calendar/AgendaActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 220
    iget-object v0, p0, Lcom/android/calendar/AgendaActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/calendar/AgendaActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 225
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/calendar/MenuHelper;->onPrepareOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;Z)V

    .line 226
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 173
    sget-boolean v3, Lcom/android/calendar/AgendaActivity;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 174
    const-string v3, "AgendaActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnResume to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v5}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/AgendaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/calendar/CalendarPreferenceActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 179
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_hide_declined"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 182
    .local v1, hideDeclined:Z
    iget-object v3, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v3, v1}, Lcom/android/calendar/AgendaListView;->setHideDeclinedEvents(Z)V

    .line 183
    iget-object v3, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    iget-object v4, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v3, v4, v6}, Lcom/android/calendar/AgendaListView;->goTo(Landroid/text/format/Time;Z)V

    .line 184
    iget-object v3, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v3}, Lcom/android/calendar/AgendaListView;->onResume()V

    .line 187
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 188
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v3, p0, Lcom/android/calendar/AgendaActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/calendar/AgendaActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    iget-object v3, p0, Lcom/android/calendar/AgendaActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/calendar/AgendaActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 194
    iget-object v3, p0, Lcom/android/calendar/AgendaActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 197
    const/4 v3, 0x3

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->setDefaultView(Landroid/content/Context;I)V

    .line 198
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 204
    iget-object v2, p0, Lcom/android/calendar/AgendaActivity;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v2}, Lcom/android/calendar/AgendaListView;->getFirstVisibleTime()J

    move-result-wide v0

    .line 205
    .local v0, firstVisibleTime:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 207
    const-string v2, "key_restore_time"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 208
    sget-boolean v2, Lcom/android/calendar/AgendaActivity;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 209
    const-string v2, "AgendaActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSaveInstanceState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v4}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    return-void
.end method
