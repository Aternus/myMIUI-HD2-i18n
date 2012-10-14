.class public Lcom/android/providers/calendar/CalendarProvider2;
.super Lcom/android/providers/calendar/SQLiteContentProvider;
.source "CalendarProvider2.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;,
        Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;,
        Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;,
        Lcom/android/providers/calendar/CalendarProvider2$InstancesList;
    }
.end annotation


# static fields
.field private static final ALLDAY_TIME_PROJECTION:[Ljava/lang/String;

.field private static final EVENTS_PROJECTION:[Ljava/lang/String;

.field private static final EXPAND_COLUMNS:[Ljava/lang/String;

.field private static final ID_ONLY_PROJECTION:[Ljava/lang/String;

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field static final SCHEDULE_ALARM_REMOVE_URI:Landroid/net/Uri;

.field static final SCHEDULE_ALARM_URI:Landroid/net/Uri;

.field private static final SYNCSTATE_CONTENT_URI:Landroid/net/Uri;

.field private static mAlarmScheduler:Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;

.field private static mRemoveAlarmsOnRerun:Z

.field private static mRerunAlarmScheduler:Z

.field private static final sAttendeesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAttendeesTable:Ljava/lang/String;

.field private static final sCalendarAlertsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCalendarAlertsTable:Ljava/lang/String;

.field private static final sCalendarCacheProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCalendarsIdProjection:[Ljava/lang/String;

.field private static final sEventEntitiesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sEventsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sEventsTable:Ljava/lang/String;

.field private static sExtendedPropertiesTable:Ljava/lang/String;

.field private static final sInstancesProjection:[Ljava/lang/String;

.field private static final sInstancesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRemindersProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRemindersTable:Ljava/lang/String;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mAlarmLock:Ljava/lang/Object;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAppWidgetProvider:Lcom/android/providers/calendar/CalendarAppWidgetProvider;

.field mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

.field private mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mMetaData:Lcom/android/providers/calendar/MetaData;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "event_id"

    const-string v4, "_id"

    const-string v3, "com.android.calendar"

    .line 90
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v5

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ID_ONLY_PROJECTION:[Ljava/lang/String;

    .line 93
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_sync_id"

    aput-object v1, v0, v5

    const-string v1, "rrule"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "originalEvent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->EVENTS_PROJECTION:[Ljava/lang/String;

    .line 104
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v5

    const-string v1, "event_id"

    aput-object v7, v0, v6

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ID_PROJECTION:[Ljava/lang/String;

    .line 114
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v5

    const-string v1, "dtstart"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->ALLDAY_TIME_PROJECTION:[Ljava/lang/String;

    .line 137
    const-string v0, "content://syncstate/state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->SYNCSTATE_CONTENT_URI:Landroid/net/Uri;

    .line 144
    sget-object v0, Landroid/provider/Calendar;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "schedule_alarms"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->SCHEDULE_ALARM_URI:Landroid/net/Uri;

    .line 146
    sget-object v0, Landroid/provider/Calendar;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "schedule_alarms_remove"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->SCHEDULE_ALARM_REMOVE_URI:Landroid/net/Uri;

    .line 274
    sput-boolean v5, Lcom/android/providers/calendar/CalendarProvider2;->mRerunAlarmScheduler:Z

    .line 275
    sput-boolean v5, Lcom/android/providers/calendar/CalendarProvider2;->mRemoveAlarmsOnRerun:Z

    .line 311
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v5

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsIdProjection:[Ljava/lang/String;

    .line 317
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "startDay"

    aput-object v1, v0, v5

    const-string v1, "endDay"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "startMinute"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "endMinute"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "allDay"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjection:[Ljava/lang/String;

    .line 1070
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v4, v0, v5

    const-string v1, "_sync_id"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "eventStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "exrule"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "exdate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "originalEvent"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "originalInstanceTime"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "deleted"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->EXPAND_COLUMNS:[Ljava/lang/String;

    .line 3588
    const-string v0, "Events"

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsTable:Ljava/lang/String;

    .line 3589
    const-string v0, "Attendees"

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesTable:Ljava/lang/String;

    .line 3590
    const-string v0, "Reminders"

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersTable:Ljava/lang/String;

    .line 3591
    const-string v0, "CalendarAlerts"

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsTable:Ljava/lang/String;

    .line 3592
    const-string v0, "ExtendedProperties"

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sExtendedPropertiesTable:Ljava/lang/String;

    .line 3620
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    .line 3630
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "instances/when/*/*"

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3631
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "instances/whenbyday/*/*"

    const/16 v2, 0x10

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3632
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "instances/groupbyday/*/*"

    const/16 v2, 0x15

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3633
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "events"

    invoke-virtual {v0, v3, v1, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3634
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "events/#"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3635
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "event_entities"

    const/16 v2, 0x13

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3636
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "event_entities/#"

    const/16 v2, 0x14

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3637
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "calendars"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3638
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "calendars/#"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3639
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "deleted_events"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3640
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "attendees"

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3641
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "attendees/#"

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3642
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "reminders"

    const/16 v2, 0x9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3643
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "reminders/#"

    const/16 v2, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3644
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "extendedproperties"

    const/16 v2, 0xb

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3645
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "extendedproperties/#"

    const/16 v2, 0xc

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3646
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "calendar_alerts"

    const/16 v2, 0xd

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3647
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "calendar_alerts/#"

    const/16 v2, 0xe

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3648
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "calendar_alerts/by_instance"

    const/16 v2, 0xf

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3650
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "syncstate"

    const/16 v2, 0x11

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3651
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "syncstate/#"

    const/16 v2, 0x12

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3652
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "schedule_alarms"

    const/16 v2, 0x16

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3653
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "schedule_alarms_remove"

    const/16 v2, 0x17

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3654
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "time/#"

    const/16 v2, 0x18

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3655
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "time"

    const/16 v2, 0x18

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3656
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v1, "properties"

    const/16 v2, 0x19

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3658
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    .line 3660
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "htmlUri"

    const-string v2, "htmlUri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3661
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3662
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventLocation"

    const-string v2, "eventLocation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3663
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3664
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventStatus"

    const-string v2, "eventStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3665
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "selfAttendeeStatus"

    const-string v2, "selfAttendeeStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3666
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "commentsUri"

    const-string v2, "commentsUri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3667
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtstart"

    const-string v2, "dtstart"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3668
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtend"

    const-string v2, "dtend"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3669
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventTimezone"

    const-string v2, "eventTimezone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3670
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3671
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "allDay"

    const-string v2, "allDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3672
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "visibility"

    const-string v2, "visibility"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3673
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "transparency"

    const-string v2, "transparency"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3674
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasAlarm"

    const-string v2, "hasAlarm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3675
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasExtendedProperties"

    const-string v2, "hasExtendedProperties"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3676
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "rrule"

    const-string v2, "rrule"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3677
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "rdate"

    const-string v2, "rdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3678
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "exrule"

    const-string v2, "exrule"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3679
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "exdate"

    const-string v2, "exdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3680
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalEvent"

    const-string v2, "originalEvent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3681
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalInstanceTime"

    const-string v2, "originalInstanceTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3682
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalAllDay"

    const-string v2, "originalAllDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3683
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "lastDate"

    const-string v2, "lastDate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3684
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasAttendeeData"

    const-string v2, "hasAttendeeData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3685
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_id"

    const-string v2, "calendar_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3686
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanInviteOthers"

    const-string v2, "guestsCanInviteOthers"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3687
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanModify"

    const-string v2, "guestsCanModify"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3688
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanSeeGuests"

    const-string v2, "guestsCanSeeGuests"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3689
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "organizer"

    const-string v2, "organizer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3690
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "deleted"

    const-string v2, "deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3693
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    .line 3694
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    .line 3697
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "color"

    const-string v2, "color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3698
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "access_level"

    const-string v2, "access_level"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3699
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "selected"

    const-string v2, "selected"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3700
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3701
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "timezone"

    const-string v2, "timezone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3702
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "ownerAccount"

    const-string v2, "ownerAccount"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3707
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    .line 3708
    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    .line 3710
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3711
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_id"

    const-string v2, "_sync_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3712
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_version"

    const-string v2, "_sync_version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3713
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_time"

    const-string v2, "_sync_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3714
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_local_id"

    const-string v2, "_sync_local_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3715
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_dirty"

    const-string v2, "_sync_dirty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3716
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_account"

    const-string v2, "_sync_account"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3717
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_account_type"

    const-string v2, "_sync_account_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3720
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    .line 3721
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "htmlUri"

    const-string v2, "htmlUri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3722
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3723
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3724
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventLocation"

    const-string v2, "eventLocation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3725
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventStatus"

    const-string v2, "eventStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3726
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "selfAttendeeStatus"

    const-string v2, "selfAttendeeStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3727
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "commentsUri"

    const-string v2, "commentsUri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3728
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtstart"

    const-string v2, "dtstart"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3729
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "dtend"

    const-string v2, "dtend"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3730
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3731
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "eventTimezone"

    const-string v2, "eventTimezone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3732
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "allDay"

    const-string v2, "allDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3733
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "visibility"

    const-string v2, "visibility"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3734
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "transparency"

    const-string v2, "transparency"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3735
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasAlarm"

    const-string v2, "hasAlarm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3736
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasExtendedProperties"

    const-string v2, "hasExtendedProperties"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3737
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "rrule"

    const-string v2, "rrule"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3738
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "rdate"

    const-string v2, "rdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3739
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "exrule"

    const-string v2, "exrule"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3740
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "exdate"

    const-string v2, "exdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3741
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalEvent"

    const-string v2, "originalEvent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3742
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalInstanceTime"

    const-string v2, "originalInstanceTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3743
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "originalAllDay"

    const-string v2, "originalAllDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3744
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "lastDate"

    const-string v2, "lastDate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3745
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "hasAttendeeData"

    const-string v2, "hasAttendeeData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3746
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "calendar_id"

    const-string v2, "calendar_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3747
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanInviteOthers"

    const-string v2, "guestsCanInviteOthers"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3748
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanModify"

    const-string v2, "guestsCanModify"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3749
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "guestsCanSeeGuests"

    const-string v2, "guestsCanSeeGuests"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3750
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "organizer"

    const-string v2, "organizer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3751
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "deleted"

    const-string v2, "deleted"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3752
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3753
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_id"

    const-string v2, "_sync_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3754
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_local_id"

    const-string v2, "_sync_local_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3755
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_version"

    const-string v2, "_sync_version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3756
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_sync_dirty"

    const-string v2, "_sync_dirty"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3757
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3760
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "begin"

    const-string v2, "begin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3761
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "end"

    const-string v2, "end"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3762
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v1, "Instances.event_id AS event_id"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3763
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "Instances._id AS _id"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3764
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "startDay"

    const-string v2, "startDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3765
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "endDay"

    const-string v2, "endDay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3766
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "startMinute"

    const-string v2, "startMinute"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3767
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    const-string v1, "endMinute"

    const-string v2, "endMinute"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3770
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v1, "event_id"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3771
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "Attendees._id AS _id"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3772
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeName"

    const-string v2, "attendeeName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3773
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeEmail"

    const-string v2, "attendeeEmail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3774
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeStatus"

    const-string v2, "attendeeStatus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3775
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeRelationship"

    const-string v2, "attendeeRelationship"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3776
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    const-string v1, "attendeeType"

    const-string v2, "attendeeType"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3779
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v1, "event_id"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3780
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "Reminders._id AS _id"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3781
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "minutes"

    const-string v2, "minutes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3782
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    const-string v1, "method"

    const-string v2, "method"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3785
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "event_id"

    const-string v1, "event_id"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3786
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "CalendarAlerts._id AS _id"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3787
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "begin"

    const-string v2, "begin"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3788
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "end"

    const-string v2, "end"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3789
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "alarmTime"

    const-string v2, "alarmTime"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3790
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "state"

    const-string v2, "state"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3791
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    const-string v1, "minutes"

    const-string v2, "minutes"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3794
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarCacheProjectionMap:Ljava/util/HashMap;

    .line 3795
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarCacheProjectionMap:Ljava/util/HashMap;

    const-string v1, "key"

    const-string v2, "key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3796
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarCacheProjectionMap:Ljava/util/HashMap;

    const-string v1, "value"

    const-string v2, "value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3797
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;-><init>()V

    .line 304
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmLock:Ljava/lang/Object;

    .line 329
    invoke-static {}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->getInstance()Lcom/android/providers/calendar/CalendarAppWidgetProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mAppWidgetProvider:Lcom/android/providers/calendar/CalendarAppWidgetProvider;

    .line 334
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider2$1;

    invoke-direct {v0, p0}, Lcom/android/providers/calendar/CalendarProvider2$1;-><init>(Lcom/android/providers/calendar/CalendarProvider2;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 441
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/calendar/CalendarProvider2;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/providers/calendar/CalendarProvider2;->mRemoveAlarmsOnRerun:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput-boolean p0, Lcom/android/providers/calendar/CalendarProvider2;->mRemoveAlarmsOnRerun:Z

    return p0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/providers/calendar/CalendarProvider2;->mRerunAlarmScheduler:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput-boolean p0, Lcom/android/providers/calendar/CalendarProvider2;->mRerunAlarmScheduler:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/providers/calendar/CalendarProvider2;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->runScheduleNextAlarm(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;)Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    sput-object p0, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmScheduler:Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/providers/calendar/CalendarProvider2;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/providers/calendar/CalendarProvider2;->triggerAppWidgetUpdate(J)V

    return-void
.end method

.method private acquireInstanceRange(JJZZLjava/lang/String;Z)V
    .locals 2
    .parameter "begin"
    .parameter "end"
    .parameter "useMinimumExpansionWindow"
    .parameter "forceExpansion"
    .parameter "instancesTimezone"
    .parameter "isHomeTimezone"

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 942
    :try_start_0
    invoke-direct/range {p0 .. p8}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRangeLocked(JJZZLjava/lang/String;Z)V

    .line 944
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 946
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 948
    return-void

    .line 946
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private acquireInstanceRangeLocked(JJZZLjava/lang/String;Z)V
    .locals 31
    .parameter "begin"
    .parameter "end"
    .parameter "useMinimumExpansionWindow"
    .parameter "forceExpansion"
    .parameter "instancesTimezone"
    .parameter "isHomeTimezone"

    .prologue
    .line 963
    move-wide/from16 v3, p1

    .line 964
    .local v3, expandBegin:J
    move-wide/from16 v5, p3

    .line 966
    .local v5, expandEnd:J
    if-nez p7, :cond_1

    .line 967
    const-string v2, "CalendarProvider2"

    const/4 v7, 0x6

    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 968
    const-string v2, "CalendarProvider2"

    const-string v7, "Cannot run acquireInstanceRangeLocked() because instancesTimezone is null"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    if-eqz p5, :cond_2

    .line 978
    sub-long v27, p3, p1

    .line 979
    .local v27, span:J
    const-wide v7, 0x13f4a4800L

    cmp-long v2, v27, v7

    if-gez v2, :cond_2

    .line 980
    const-wide v7, 0x13f4a4800L

    sub-long v7, v7, v27

    const-wide/16 v9, 0x2

    div-long v21, v7, v9

    .line 981
    .local v21, additionalRange:J
    sub-long v3, v3, v21

    .line 982
    add-long v5, v5, v21

    .line 989
    .end local v21           #additionalRange:J
    .end local v27           #span:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v23

    .line 990
    .local v23, fields:Lcom/android/providers/calendar/MetaData$Fields;
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move-wide v13, v0

    .line 991
    .local v13, maxInstance:J
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    move-wide v10, v0

    .line 993
    .local v10, minInstance:J
    if-eqz p8, :cond_7

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstancesPrevious()Ljava/lang/String;

    move-result-object v26

    .line 995
    .local v26, previousTimezone:Ljava/lang/String;
    move-object/from16 v0, p7

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    move/from16 v29, v2

    .line 1006
    .end local v26           #previousTimezone:Ljava/lang/String;
    .local v29, timezoneChanged:Z
    :cond_3
    :goto_1
    const-wide/16 v7, 0x0

    cmp-long v2, v13, v7

    if-eqz v2, :cond_4

    if-nez v29, :cond_4

    if-eqz p6, :cond_9

    .line 1008
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    const-string v7, "DELETE FROM Instances;"

    invoke-virtual {v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1009
    const-string v2, "CalendarProvider2"

    const/4 v7, 0x2

    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1010
    const-string v2, "CalendarProvider2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "acquireInstanceRangeLocked() deleted Instances, timezone changed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v2, p0

    move-object/from16 v7, p7

    .line 1013
    invoke-direct/range {v2 .. v7}, Lcom/android/providers/calendar/CalendarProvider2;->expandInstanceRangeLocked(JJLjava/lang/String;)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v7, v0

    move-object/from16 v8, p7

    move-wide v9, v3

    move-wide v11, v5

    invoke-virtual/range {v7 .. v12}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJ)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneType()Ljava/lang/String;

    move-result-object v30

    .line 1021
    .local v30, timezoneType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstances(Ljava/lang/String;)V

    .line 1024
    const-string v2, "auto"

    move-object/from16 v0, v30

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstancesPrevious()Ljava/lang/String;

    move-result-object v25

    .line 1026
    .local v25, prevTZ:Ljava/lang/String;
    const-string v2, "GMT"

    move-object v0, v2

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v2, v0

    move-object v0, v2

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstancesPrevious(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 995
    .end local v25           #prevTZ:Ljava/lang/String;
    .end local v29           #timezoneChanged:Z
    .end local v30           #timezoneType:Ljava/lang/String;
    .restart local v26       #previousTimezone:Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    move/from16 v29, v2

    goto/16 :goto_1

    .line 997
    .end local v26           #previousTimezone:Ljava/lang/String;
    :cond_7
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v24

    .line 998
    .local v24, localTimezone:Ljava/lang/String;
    move-object/from16 v0, p7

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x1

    move/from16 v29, v2

    .line 1000
    .restart local v29       #timezoneChanged:Z
    :goto_2
    if-eqz v29, :cond_3

    .line 1001
    move-object/from16 p7, v24

    goto/16 :goto_1

    .line 998
    .end local v29           #timezoneChanged:Z
    :cond_8
    const/4 v2, 0x0

    move/from16 v29, v2

    goto :goto_2

    .line 1044
    .end local v24           #localTimezone:Ljava/lang/String;
    .restart local v29       #timezoneChanged:Z
    :cond_9
    cmp-long v2, p1, v10

    if-ltz v2, :cond_a

    cmp-long v2, p3, v13

    if-gtz v2, :cond_a

    .line 1045
    const-string v2, "CalendarProvider2"

    const/4 v7, 0x2

    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1046
    const-string v2, "CalendarProvider2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Canceled instance query ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") falls within previously expanded range."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1054
    :cond_a
    cmp-long v2, p1, v10

    if-gez v2, :cond_b

    move-object/from16 v7, p0

    move-wide v8, v3

    move-object/from16 v12, p7

    .line 1055
    invoke-direct/range {v7 .. v12}, Lcom/android/providers/calendar/CalendarProvider2;->expandInstanceRangeLocked(JJLjava/lang/String;)V

    .line 1056
    move-wide v10, v3

    .line 1061
    :cond_b
    cmp-long v2, p3, v13

    if-lez v2, :cond_c

    move-object/from16 v12, p0

    move-wide v15, v5

    move-object/from16 v17, p7

    .line 1062
    invoke-direct/range {v12 .. v17}, Lcom/android/providers/calendar/CalendarProvider2;->expandInstanceRangeLocked(JJLjava/lang/String;)V

    .line 1063
    move-wide v13, v5

    .line 1067
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    move-object v15, v0

    move-object/from16 v16, p7

    move-wide/from16 v17, v10

    move-wide/from16 v19, v13

    invoke-virtual/range {v15 .. v20}, Lcom/android/providers/calendar/MetaData;->writeLocked(Ljava/lang/String;JJ)V

    goto/16 :goto_0
.end method

.method private appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 3159
    const-string v0, "account_name"

    invoke-static {p2, v0}, Lcom/android/providers/calendar/CalendarProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3160
    const-string v1, "account_type"

    invoke-static {p2, v1}, Lcom/android/providers/calendar/CalendarProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_sync_account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_sync_account_type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3169
    :goto_0
    return-void

    .line 3167
    :cond_0
    const-string v0, "1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 3172
    const-string v0, "account_name"

    invoke-static {p1, v0}, Lcom/android/providers/calendar/CalendarProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3173
    const-string v1, "account_type"

    invoke-static {p1, v1}, Lcom/android/providers/calendar/CalendarProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3175
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_sync_account="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_sync_account_type"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3179
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3180
    const-string v0, " AND ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3181
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3182
    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3184
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3186
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method private computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1544
    invoke-virtual {p5, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 1545
    iget-wide v0, p5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p1, p2, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 1546
    iget v1, p5, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v1, v1, 0x3c

    iget v2, p5, Landroid/text/format/Time;->minute:I

    add-int/2addr v1, v2

    .line 1548
    invoke-virtual {p5, p3, p4}, Landroid/text/format/Time;->set(J)V

    .line 1549
    iget-wide v2, p5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p3, p4, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 1550
    iget v3, p5, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v3, v3, 0x3c

    iget v4, p5, Landroid/text/format/Time;->minute:I

    add-int/2addr v3, v4

    .line 1556
    if-nez v3, :cond_0

    if-le v2, v0, :cond_0

    .line 1557
    const/16 v3, 0x5a0

    .line 1558
    add-int/lit8 v2, v2, -0x1

    move v5, v3

    move v3, v2

    move v2, v5

    .line 1561
    :goto_0
    const-string v4, "startDay"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1562
    const-string v0, "endDay"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1563
    const-string v0, "startMinute"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1564
    const-string v0, "endMinute"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1565
    return-void

    :cond_0
    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_0
.end method

.method private createAttendeeEntry(JILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2032
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2033
    const-string v1, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2034
    const-string v1, "attendeeStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2035
    const-string v1, "attendeeType"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2038
    const-string v1, "attendeeRelationship"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2040
    const-string v1, "attendeeEmail"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->attendeesInsert(Landroid/content/ContentValues;)J

    .line 2045
    return-void
.end method

.method private deleteEventInternal(JZZ)I
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v1, "Events"

    const-string v0, "event_id=?"

    .line 2647
    .line 2648
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 2651
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Events"

    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->EVENTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2656
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2658
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2659
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 2664
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2665
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2666
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2667
    invoke-static {v2, v3, v5}, Lcom/android/providers/calendar/CalendarProvider2;->isRecurrenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2668
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v2}, Lcom/android/providers/calendar/MetaData;->clearInstanceRange()V

    .line 2673
    :cond_0
    if-nez p3, :cond_1

    if-eqz v1, :cond_3

    .line 2674
    :cond_1
    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Events"

    const-string v3, "_id=?"

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v8

    .line 2691
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2695
    if-nez p4, :cond_2

    .line 2696
    invoke-virtual {p0, v9}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    .line 2697
    const-wide/16 v2, -0x1

    invoke-direct {p0, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->triggerAppWidgetUpdate(J)V

    .line 2700
    :cond_2
    return v1

    .line 2676
    :cond_3
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2677
    const-string v2, "deleted"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2678
    const-string v2, "_sync_dirty"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2679
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    const-string v5, "_id=?"

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2683
    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Instances"

    const-string v3, "event_id=?"

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2684
    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "EventsRawTimes"

    const-string v3, "event_id=?"

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2685
    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Reminders"

    const-string v3, "event_id=?"

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2686
    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "CalendarAlerts"

    const-string v3, "event_id=?"

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2687
    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ExtendedProperties"

    const-string v3, "event_id=?"

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v8

    goto :goto_0

    .line 2691
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2692
    throw v1

    :cond_4
    move v1, v9

    goto :goto_0
.end method

.method private deleteFromTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const-string v0, "_id=?"

    .line 2713
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2714
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2715
    const-string v2, "_sync_dirty"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v6

    .line 2718
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2719
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2720
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2721
    iget-object v7, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v10

    invoke-virtual {v7, p1, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2722
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Events"

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-virtual {v3, v4, v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2723
    add-int/lit8 v2, v2, 0x1

    .line 2724
    goto :goto_0

    .line 2726
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2728
    return v2

    .line 2726
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private deleteMatchingCalendars(Ljava/lang/String;)I
    .locals 12
    .parameter "where"

    .prologue
    const/4 v11, 0x0

    const/4 v4, 0x0

    const-string v1, "Calendars"

    .line 2766
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Calendars"

    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarsIdProjection:[Ljava/lang/String;

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2769
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_0

    move v0, v11

    .line 2780
    :goto_0
    return v0

    .line 2773
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2774
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2775
    .local v9, id:J
    const/4 v0, 0x0

    invoke-direct {p0, v9, v10, v0}, Lcom/android/providers/calendar/CalendarProvider2;->modifyCalendarSubscription(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2778
    .end local v9           #id:J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2780
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "Calendars"

    invoke-virtual {v0, v1, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private doesEventExistForSyncId(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "CalendarProvider2"

    .line 2794
    if-nez p1, :cond_1

    .line 2795
    const-string v0, "CalendarProvider2"

    const/4 v0, 0x5

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2796
    const-string v0, "CalendarProvider2"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncID cannot be null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v4

    .line 2802
    :goto_0
    return v0

    .line 2800
    :cond_1
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT COUNT(*) FROM Events WHERE _sync_id=?"

    new-array v2, v5, [Ljava/lang/String;

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 2802
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method private doesStatusCancelUpdateMeanUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "eventStatus"

    const-string v0, "CalendarProvider2"

    .line 2816
    const-string v0, "eventStatus"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "eventStatus"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v5

    .line 2818
    :goto_0
    if-eqz v0, :cond_5

    .line 2819
    const/4 v0, 0x0

    .line 2821
    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "rrule"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "rdate"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "originalEvent"

    aput-object v3, v1, v2

    invoke-direct {p0, p1, v1}, Lcom/android/providers/calendar/CalendarProvider2;->getCursorForEventIdAndProjection(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2823
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2824
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2825
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find Event with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2841
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v4

    .line 2845
    :goto_1
    return v0

    :cond_1
    move v0, v4

    .line 2816
    goto :goto_0

    .line 2829
    :cond_2
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2830
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2831
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2833
    invoke-static {v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->isRecurrenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v5

    .line 2837
    :goto_2
    if-eqz v1, :cond_4

    .line 2838
    invoke-direct {p0, v3}, Lcom/android/providers/calendar/CalendarProvider2;->doesEventExistForSyncId(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    .line 2841
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v4

    .line 2833
    goto :goto_2

    .line 2841
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v5

    .line 2845
    goto :goto_1

    .line 2841
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3
.end method

.method private expandInstanceRangeLocked(JJLjava/lang/String;)V
    .locals 7
    .parameter "begin"
    .parameter "end"
    .parameter "localTimezone"

    .prologue
    const-string v2, "CalendarProvider2"

    .line 1098
    const-string v0, "CalendarProvider2"

    const/4 v0, 0x2

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    const-string v0, "CalendarProvider2"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expanding events between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/calendar/CalendarProvider2;->getEntries(JJ)Landroid/database/Cursor;

    move-result-object v6

    .local v6, entries:Landroid/database/Cursor;
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 1104
    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/calendar/CalendarProvider2;->performInstanceExpansion(JJLjava/lang/String;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    if-eqz v6, :cond_1

    .line 1107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1113
    :cond_1
    return-void

    .line 1106
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private fixAllDayTime(Landroid/net/Uri;Landroid/content/ContentValues;)Z
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 1615
    const/4 v6, 0x0

    .line 1616
    const-string v0, "allDay"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "allDay"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 1618
    const-string v0, "dtstart"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 1619
    const-string v0, "dtend"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 1620
    const-string v0, "duration"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1621
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 1622
    const/4 v0, 0x0

    .line 1627
    if-eqz v7, :cond_0

    if-nez v8, :cond_2

    if-nez v9, :cond_2

    .line 1629
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1630
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->ALLDAY_TIME_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1635
    if-eqz v0, :cond_2

    .line 1636
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 1641
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1642
    const/4 v0, 0x0

    .line 1651
    :cond_2
    if-nez v7, :cond_10

    .line 1652
    if-eqz v0, :cond_6

    .line 1655
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1657
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1667
    :goto_0
    const-string v2, "UTC"

    invoke-virtual {v10, v2}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1668
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1669
    iget v1, v10, Landroid/text/format/Time;->hour:I

    if-nez v1, :cond_3

    iget v1, v10, Landroid/text/format/Time;->minute:I

    if-nez v1, :cond_3

    iget v1, v10, Landroid/text/format/Time;->second:I

    if-eqz v1, :cond_f

    .line 1670
    :cond_3
    const/4 v1, 0x0

    iput v1, v10, Landroid/text/format/Time;->hour:I

    .line 1671
    const/4 v1, 0x0

    iput v1, v10, Landroid/text/format/Time;->minute:I

    .line 1672
    const/4 v1, 0x0

    iput v1, v10, Landroid/text/format/Time;->second:I

    .line 1673
    const-string v1, "dtstart"

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1674
    const/4 v1, 0x1

    .line 1678
    :goto_1
    if-nez v8, :cond_e

    if-eqz v0, :cond_e

    .line 1681
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1683
    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1688
    :goto_2
    if-eqz v2, :cond_d

    .line 1689
    const-string v3, "UTC"

    invoke-virtual {v10, v3}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 1690
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v10, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 1691
    iget v3, v10, Landroid/text/format/Time;->hour:I

    if-nez v3, :cond_4

    iget v3, v10, Landroid/text/format/Time;->minute:I

    if-nez v3, :cond_4

    iget v3, v10, Landroid/text/format/Time;->second:I

    if-eqz v3, :cond_d

    .line 1692
    :cond_4
    const/4 v1, 0x0

    iput v1, v10, Landroid/text/format/Time;->hour:I

    .line 1693
    const/4 v1, 0x0

    iput v1, v10, Landroid/text/format/Time;->minute:I

    .line 1694
    const/4 v1, 0x0

    iput v1, v10, Landroid/text/format/Time;->second:I

    .line 1695
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1696
    const-string v2, "dtend"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1697
    const/4 v2, 0x1

    .line 1701
    :goto_3
    if-eqz v0, :cond_c

    .line 1702
    if-nez v9, :cond_b

    .line 1703
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1705
    :goto_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v3

    .line 1708
    :goto_5
    if-eqz v0, :cond_5

    .line 1709
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1713
    if-nez v3, :cond_7

    .line 1714
    const/4 v0, 0x0

    .line 1729
    :cond_5
    :goto_6
    if-nez v0, :cond_a

    if-nez v1, :cond_a

    .line 1730
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DTEND and DURATION cannot both be null for an event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1658
    :catch_0
    move-exception v1

    .line 1659
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1660
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Event has no DTSTART field, the db may be damaged. Set DTSTART for this event to fix."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1664
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DTSTART cannot be empty for new events."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1684
    :catch_1
    move-exception v2

    .line 1685
    const/4 v2, 0x0

    goto :goto_2

    .line 1715
    :cond_7
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x50

    if-ne v4, v5, :cond_8

    const/4 v4, 0x1

    sub-int v4, v3, v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x53

    if-ne v4, v5, :cond_8

    .line 1717
    const/4 v2, 0x1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1718
    const v2, 0x15180

    add-int/2addr v0, v2

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const v2, 0x15180

    div-int/2addr v0, v2

    .line 1719
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "D"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1720
    const-string v2, "duration"

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    const/4 v2, 0x1

    .line 1722
    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x50

    if-ne v4, v5, :cond_9

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x44

    if-eq v3, v4, :cond_5

    .line 1724
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "duration is not formatted correctly. Should be \'P<seconds>S\' or \'P<days>D\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move v0, v2

    .line 1734
    :goto_7
    return v0

    :cond_b
    move-object v3, v9

    goto/16 :goto_4

    :cond_c
    move-object v0, v9

    goto/16 :goto_5

    :cond_d
    move-object v11, v2

    move v2, v1

    move-object v1, v11

    goto/16 :goto_3

    :cond_e
    move-object v2, v8

    goto/16 :goto_2

    :cond_f
    move v1, v6

    goto/16 :goto_1

    :cond_10
    move-object v1, v7

    goto/16 :goto_0

    :cond_11
    move v0, v6

    goto :goto_7
.end method

.method private get2445ToMillis(Ljava/lang/String;Ljava/lang/String;)J
    .locals 7
    .parameter "timezone"
    .parameter "dt2445"

    .prologue
    const-wide/16 v5, 0x0

    const-string v4, "CalendarProvider2"

    .line 544
    if-nez p2, :cond_1

    .line 545
    const-string v2, "CalendarProvider2"

    const/4 v2, 0x2

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    const-string v2, "CalendarProvider2"

    const-string v2, "Cannot parse null RFC2445 date"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-wide v2, v5

    .line 559
    :goto_0
    return-wide v2

    .line 550
    :cond_1
    if-eqz p1, :cond_2

    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, p1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 552
    .local v1, time:Landroid/text/format/Time;
    :goto_1
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    goto :goto_0

    .line 550
    .end local v1           #time:Landroid/text/format/Time;
    :cond_2
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    move-object v1, v2

    goto :goto_1

    .line 553
    .restart local v1       #time:Landroid/text/format/Time;
    :catch_0
    move-exception v0

    .line 554
    .local v0, e:Landroid/util/TimeFormatException;
    const-string v2, "CalendarProvider2"

    const/4 v2, 0x6

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 555
    const-string v2, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse RFC2445 date "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-wide v2, v5

    .line 557
    goto :goto_0
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .locals 3

    .prologue
    const-string v0, "CalendarProvider2"

    .line 3268
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3269
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_2

    .line 3270
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3271
    if-nez v0, :cond_1

    .line 3272
    const-string v0, "CalendarProvider2"

    const/4 v2, 0x6

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3273
    const-string v0, "CalendarProvider2"

    const-string v2, "getAlarmManager() cannot get Context"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3275
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 3280
    :goto_0
    return-object v0

    .line 3277
    :cond_1
    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3278
    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmManager:Landroid/app/AlarmManager;

    .line 3280
    :cond_2
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmManager:Landroid/app/AlarmManager;

    monitor-exit v1

    goto :goto_0

    .line 3281
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getCursorForEventIdAndProjection(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "eventId"
    .parameter "projection"

    .prologue
    const/4 v5, 0x0

    .line 2784
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Events"

    const-string v3, "_id=?"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    move-object v2, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getEntries(JJ)Landroid/database/Cursor;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x0

    const-string v9, "CalendarProvider2"

    .line 1122
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1123
    const-string v1, "view_events"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1124
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1126
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 1127
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1137
    const-string v4, "((dtstart <= ? AND (lastDate IS NULL OR lastDate >= ?)) OR (originalInstanceTime IS NOT NULL AND originalInstanceTime <= ? AND originalInstanceTime >= ?)) AND (sync_events != 0)"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1140
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    aput-object v2, v4, v8

    const/4 v1, 0x3

    const-wide/32 v5, 0x240c8400

    sub-long v5, p1, v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 1142
    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->EXPAND_COLUMNS:[Ljava/lang/String;

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1145
    const-string v1, "CalendarProvider2"

    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1146
    const-string v1, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instance expansion:  got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_0
    return-object v0
.end method

.method private getOwner(J)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const-string v2, "CalendarProvider2"

    .line 1992
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 1993
    const-string v0, "CalendarProvider2"

    const/4 v0, 0x6

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1994
    const-string v0, "CalendarProvider2"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calendar Id is not valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v6

    .line 2019
    :goto_0
    return-object v0

    .line 2002
    :cond_1
    :try_start_0
    sget-object v0, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "ownerAccount"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2007
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2008
    :cond_2
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2009
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in Calendars table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2015
    :cond_3
    if-eqz v0, :cond_4

    .line 2016
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    goto :goto_0

    .line 2013
    :cond_5
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 2015
    if-eqz v0, :cond_6

    .line 2016
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v1

    .line 2019
    goto :goto_0

    .line 2015
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_7

    .line 2016
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 2015
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1
.end method

.method static getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "uri"
    .parameter "parameter"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 3869
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    .line 3870
    .local v3, query:Ljava/lang/String;
    if-nez v3, :cond_0

    move-object v6, v8

    .line 3904
    :goto_0
    return-object v6

    .line 3874
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 3875
    .local v4, queryLength:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 3878
    .local v2, parameterLength:I
    const/4 v1, 0x0

    .line 3880
    .local v1, index:I
    :cond_1
    invoke-virtual {v3, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 3881
    if-ne v1, v9, :cond_2

    move-object v6, v8

    .line 3882
    goto :goto_0

    .line 3885
    :cond_2
    add-int/2addr v1, v2

    .line 3887
    if-ne v4, v1, :cond_3

    move-object v6, v8

    .line 3888
    goto :goto_0

    .line 3891
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_1

    .line 3892
    add-int/lit8 v1, v1, 0x1

    .line 3897
    const/16 v6, 0x26

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 3898
    .local v0, ampIndex:I
    if-ne v0, v9, :cond_4

    .line 3899
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3904
    .local v5, value:Ljava/lang/String;
    :goto_1
    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 3901
    .end local v5           #value:Ljava/lang/String;
    :cond_4
    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #value:Ljava/lang/String;
    goto :goto_1
.end method

.method private getRelevantRecurrenceEntries(Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v6, "CalendarProvider2"

    .line 2252
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2254
    const-string v1, "view_events"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2255
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2257
    if-nez p1, :cond_1

    .line 2258
    const-string v1, "_id =?"

    .line 2259
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2260
    new-array v1, v2, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    move-object v4, v1

    .line 2266
    :goto_0
    const-string v1, "CalendarProvider2"

    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2267
    const-string v1, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrieving events to expand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    :cond_0
    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->EXPAND_COLUMNS:[Ljava/lang/String;

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 2262
    :cond_1
    const-string v1, "_sync_id = ? OR originalEvent = ?"

    .line 2263
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2264
    new-array v1, v5, [Ljava/lang/String;

    aput-object p1, v1, v4

    aput-object p1, v1, v2

    move-object v4, v1

    goto :goto_0
.end method

.method private getSyncIdKey(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .parameter "syncId"
    .parameter "calendarId"

    .prologue
    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleEventDayQuery(Landroid/database/sqlite/SQLiteQueryBuilder;II[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 906
    const-string v0, "Instances INNER JOIN Events ON (Instances.event_id=Events._id) INNER JOIN Calendars ON (Events.calendar_id = Calendars._id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 908
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 911
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 912
    invoke-virtual {v0, p2}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v1

    .line 915
    add-int/lit8 v3, p3, 0x1

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v3

    .line 917
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(JJZZLjava/lang/String;Z)V

    .line 919
    const-string v0, "startDay<=? AND endDay>=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 920
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 922
    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "startDay"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v2, p4

    move-object v3, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private handleInstanceQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)Landroid/database/Cursor;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 874
    const-string v2, "Instances INNER JOIN Events ON (Instances.event_id=Events._id) INNER JOIN Calendars ON (Events.calendar_id = Calendars._id)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 876
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->sInstancesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 877
    if-eqz p9, :cond_0

    .line 880
    new-instance v2, Landroid/text/format/Time;

    move-object v0, v2

    move-object/from16 v1, p11

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 881
    long-to-int v3, p2

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v3

    .line 884
    long-to-int v5, p4

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v5

    .line 886
    const/4 v7, 0x1

    move-object v2, p0

    move/from16 v8, p10

    move-object/from16 v9, p11

    move/from16 v10, p12

    invoke-direct/range {v2 .. v10}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(JJZZLjava/lang/String;Z)V

    .line 889
    const-string v2, "startDay<=? AND endDay>=?"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 897
    :goto_0
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 899
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 892
    :cond_0
    const/4 v7, 0x1

    move-object v2, p0

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v8, p10

    move-object/from16 v9, p11

    move/from16 v10, p12

    invoke-direct/range {v2 .. v10}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRange(JJZZLjava/lang/String;Z)V

    .line 895
    const-string v2, "begin<=? AND end>=?"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "selectionArgs"
    .parameter "arg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3916
    if-nez p1, :cond_0

    .line 3917
    new-array v2, v4, [Ljava/lang/String;

    aput-object p2, v2, v3

    .line 3923
    :goto_0
    return-object v2

    .line 3919
    :cond_0
    array-length v2, p1

    add-int/lit8 v0, v2, 0x1

    .line 3920
    .local v0, newLength:I
    new-array v1, v0, [Ljava/lang/String;

    .line 3921
    .local v1, newSelectionArgs:[Ljava/lang/String;
    aput-object p2, v1, v3

    .line 3922
    array-length v2, p1

    invoke-static {p1, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v1

    .line 3923
    goto :goto_0
.end method

.method private isHomeTimezone()Z
    .locals 2

    .prologue
    .line 612
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneType()Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, type:Ljava/lang/String;
    const-string v1, "home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isLocalSameAsInstancesTimezone()Z
    .locals 2

    .prologue
    .line 469
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, localTimezone:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public static isRecurrenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "rrule"
    .parameter "rdate"
    .parameter "originalEvent"

    .prologue
    .line 1599
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private modifyCalendarSubscription(JZ)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 3193
    sget-object v0, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_sync_account"

    aput-object v0, v2, v6

    const-string v0, "_sync_account_type"

    aput-object v0, v2, v7

    const-string v0, "url"

    aput-object v0, v2, v4

    const-string v0, "sync_events"

    aput-object v0, v2, v5

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3203
    if-eqz v0, :cond_6

    .line 3205
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3206
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3207
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3208
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3209
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3210
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    move v2, v7

    :goto_0
    move v8, v2

    move-object v2, v1

    move v1, v8

    .line 3213
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    move-object v1, v2

    move-object v2, v4

    .line 3217
    :goto_2
    if-nez v2, :cond_2

    .line 3219
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3220
    const-string v0, "CalendarProvider2"

    const-string v1, "Cannot update subscription because account is empty -- should not happen."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v2, v6

    .line 3210
    goto :goto_0

    .line 3213
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 3226
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v1, v3

    .line 3232
    :cond_3
    if-eq v0, p3, :cond_0

    .line 3239
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    if-nez p3, :cond_4

    move v3, v7

    :goto_4
    invoke-virtual {v0, v2, v3, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V

    goto :goto_3

    :cond_4
    move v3, v6

    goto :goto_4

    :cond_5
    move v1, v6

    move-object v2, v3

    move-object v4, v3

    goto :goto_1

    :cond_6
    move v0, v6

    move-object v1, v3

    move-object v2, v3

    goto :goto_2
.end method

.method private performInstanceExpansion(JJLjava/lang/String;Landroid/database/Cursor;)V
    .locals 45
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1173
    new-instance v5, Lcom/android/providers/calendar/RecurrenceProcessor;

    invoke-direct {v5}, Lcom/android/providers/calendar/RecurrenceProcessor;-><init>()V

    .line 1176
    const-string v6, "ORIGINAL_EVENT_AND_CALENDAR"

    .line 1178
    const-string v6, "eventStatus"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1179
    const-string v6, "dtstart"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 1180
    const-string v6, "dtend"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1181
    const-string v6, "eventTimezone"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 1182
    const-string v6, "duration"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1183
    const-string v6, "rrule"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 1184
    const-string v6, "rdate"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1185
    const-string v6, "exrule"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 1186
    const-string v6, "exdate"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 1187
    const-string v6, "allDay"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 1188
    const-string v6, "_id"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 1189
    const-string v6, "_sync_id"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 1190
    const-string v6, "originalEvent"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v26

    .line 1191
    const-string v6, "originalInstanceTime"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 1192
    const-string v6, "calendar_id"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 1193
    const-string v6, "deleted"

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 1196
    new-instance v30, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;

    invoke-direct/range {v30 .. v30}, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;-><init>()V

    .line 1198
    new-instance v31, Lcom/android/providers/calendar/Duration;

    invoke-direct/range {v31 .. v31}, Lcom/android/providers/calendar/Duration;-><init>()V

    .line 1199
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 1214
    :cond_0
    :goto_0
    invoke-interface/range {p6 .. p6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1218
    :try_start_0
    move-object/from16 v0, p6

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    move v12, v7

    .line 1220
    :goto_1
    move-object/from16 v0, p6

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1221
    if-nez v12, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 1225
    :cond_1
    const-string v7, "UTC"

    move-object v10, v7

    .line 1228
    :goto_2
    move-object/from16 v0, p6

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1229
    move-object/from16 v0, p6

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    .line 1231
    move-object/from16 v0, p6

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/providers/calendar/DateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v7

    .line 1232
    if-eqz v7, :cond_1f

    .line 1234
    :try_start_1
    move-object/from16 v0, v31

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/Duration;->parse(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/providers/calendar/DateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/util/TimeFormatException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v11, v7

    .line 1251
    :goto_3
    :try_start_2
    move-object/from16 v0, p6

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1252
    move-object/from16 v0, p6

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 1254
    const-wide/16 v35, -0x1

    .line 1255
    move-object/from16 v0, p6

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1256
    move-object/from16 v0, p6

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 1258
    :cond_2
    move-object/from16 v0, p6

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    .line 1259
    move-object/from16 v0, p6

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    move/from16 v38, v7

    .line 1261
    :goto_4
    move-object/from16 v0, p6

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1262
    move-object/from16 v0, p6

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 1263
    move-object/from16 v0, p6

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 1264
    move-object/from16 v0, p6

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 1265
    move-object/from16 v0, p6

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 1266
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->getSyncIdKey(Ljava/lang/String;J)Ljava/lang/String;
    :try_end_2
    .catch Lcom/android/providers/calendar/DateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v44

    .line 1270
    :try_start_3
    new-instance v7, Landroid/pim/RecurrenceSet;

    move-object v0, v7

    move-object v1, v13

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    move-object/from16 v4, v41

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/RecurrenceSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/pim/EventRecurrence$InvalidFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/providers/calendar/DateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1278
    if-eqz v7, :cond_d

    :try_start_4
    invoke-virtual {v7}, Landroid/pim/RecurrenceSet;->hasRecurrence()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 1281
    const/4 v13, 0x2

    move/from16 v0, v37

    move v1, v13

    if-ne v0, v1, :cond_6

    .line 1283
    const-string v7, "CalendarProvider2"

    const/4 v8, 0x6

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1284
    const-string v7, "CalendarProvider2"

    const-string v8, "Found canceled recurring event in Events table.  Ignoring."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lcom/android/providers/calendar/DateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 1423
    :catch_0
    move-exception v7

    .line 1424
    const-string v8, "CalendarProvider2"

    const/4 v9, 0x5

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1425
    const-string v8, "CalendarProvider2"

    const-string v9, "RecurrenceProcessor error "

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1218
    :cond_3
    const/4 v7, 0x0

    move v12, v7

    goto/16 :goto_1

    .line 1236
    :catch_1
    move-exception v11

    .line 1237
    :try_start_5
    const-string v13, "CalendarProvider2"

    const/16 v33, 0x5

    move-object v0, v13

    move/from16 v1, v33

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1238
    const-string v13, "CalendarProvider2"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "error parsing duration for event "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "\'"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v33, "\'"

    move-object v0, v7

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1241
    :cond_4
    const/4 v7, 0x1

    move v0, v7

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->sign:I

    .line 1242
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->weeks:I

    .line 1243
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->days:I

    .line 1244
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->hours:I

    .line 1245
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->minutes:I

    .line 1246
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 1247
    const-string v7, "+P0S"

    move-object v11, v7

    goto/16 :goto_3

    .line 1259
    :cond_5
    const/4 v7, 0x0

    move/from16 v38, v7

    goto/16 :goto_4

    .line 1271
    :catch_2
    move-exception v7

    .line 1272
    const-string v8, "CalendarProvider2"

    const/4 v9, 0x5

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1273
    const-string v8, "CalendarProvider2"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not parse RRULE recurrence string: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Lcom/android/providers/calendar/DateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 1427
    :catch_3
    move-exception v7

    .line 1428
    const-string v8, "CalendarProvider2"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1429
    const-string v8, "CalendarProvider2"

    const-string v9, "RecurrenceProcessor error "

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1290
    :cond_6
    if-eqz v38, :cond_7

    .line 1291
    :try_start_6
    const-string v7, "CalendarProvider2"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1292
    const-string v7, "CalendarProvider2"

    const-string v8, "Found deleted recurring event in Events table.  Ignoring."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1299
    :cond_7
    iput-object v10, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1300
    invoke-virtual {v6, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 1301
    iput-boolean v12, v6, Landroid/text/format/Time;->allDay:Z

    .line 1303
    if-nez v11, :cond_9

    .line 1305
    const-string v10, "CalendarProvider2"

    const/4 v11, 0x6

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1306
    const-string v10, "CalendarProvider2"

    const-string v11, "Repeating event has no duration -- should not happen."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_8
    if-eqz v12, :cond_a

    .line 1311
    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->sign:I

    .line 1312
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->weeks:I

    .line 1313
    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->days:I

    .line 1314
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->hours:I

    .line 1315
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->minutes:I

    .line 1316
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 1317
    const-string v8, "+P1D"

    :cond_9
    :goto_5
    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    .line 1338
    invoke-virtual/range {v5 .. v11}, Lcom/android/providers/calendar/RecurrenceProcessor;->expand(Landroid/text/format/Time;Landroid/pim/RecurrenceSet;JJ)[J

    move-result-object v33

    .line 1342
    if-eqz v12, :cond_c

    .line 1343
    const-string v7, "UTC"

    iput-object v7, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1348
    :goto_6
    invoke-virtual/range {v31 .. v31}, Lcom/android/providers/calendar/Duration;->getMillis()J

    move-result-wide v34

    .line 1349
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v36, v0

    const/4 v7, 0x0

    move/from16 v37, v7

    :goto_7
    move/from16 v0, v37

    move/from16 v1, v36

    if-ge v0, v1, :cond_0

    aget-wide v8, v33, v37

    .line 1350
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1351
    const-string v7, "event_id"

    move-object v0, v13

    move-object v1, v7

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1353
    const-string v7, "begin"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v13, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1354
    add-long v10, v8, v34

    .line 1355
    const-string v7, "end"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v13, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v7, p0

    move-object v12, v6

    .line 1357
    invoke-direct/range {v7 .. v13}, Lcom/android/providers/calendar/CalendarProvider2;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 1359
    move-object/from16 v0, v30

    move-object/from16 v1, v44

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;->add(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1349
    add-int/lit8 v7, v37, 0x1

    move/from16 v37, v7

    goto :goto_7

    .line 1321
    :cond_a
    const/4 v10, 0x1

    move v0, v10

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->sign:I

    .line 1322
    const/4 v10, 0x0

    move v0, v10

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->weeks:I

    .line 1323
    const/4 v10, 0x0

    move v0, v10

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->days:I

    .line 1324
    const/4 v10, 0x0

    move v0, v10

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->hours:I

    .line 1325
    const/4 v10, 0x0

    move v0, v10

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->minutes:I

    .line 1326
    move-object/from16 v0, p6

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_b

    .line 1327
    move-object/from16 v0, p6

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1328
    sub-long v8, v10, v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v8, v8

    move v0, v8

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 1329
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+P"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/providers/calendar/Duration;->seconds:I

    move v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "S"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_5

    .line 1331
    :cond_b
    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 1332
    const-string v8, "+P0S"

    goto/16 :goto_5

    .line 1345
    :cond_c
    move-object/from16 v0, p5

    move-object v1, v6

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto/16 :goto_6

    .line 1363
    :cond_d
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1369
    if-eqz v34, :cond_e

    const-wide/16 v39, -0x1

    cmp-long v7, v35, v39

    if-eqz v7, :cond_e

    .line 1373
    const-string v7, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->getSyncIdKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const-string v7, "originalInstanceTime"

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v13, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1377
    const-string v7, "eventStatus"

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1381
    :cond_e
    if-nez v11, :cond_11

    .line 1382
    move-object/from16 v0, p6

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 1383
    move-object/from16 v0, p6

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1394
    :goto_8
    cmp-long v7, v10, p1

    if-ltz v7, :cond_f

    cmp-long v7, v8, p3

    if-lez v7, :cond_10

    .line 1395
    :cond_f
    if-eqz v34, :cond_12

    const-wide/16 v39, -0x1

    cmp-long v7, v35, v39

    if-eqz v7, :cond_12

    .line 1396
    const-string v7, "eventStatus"

    const/16 v33, 0x2

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object v0, v13

    move-object v1, v7

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1405
    :cond_10
    const-string v7, "event_id"

    move-object v0, v13

    move-object v1, v7

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1407
    const-string v7, "begin"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    move-object v0, v13

    move-object v1, v7

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1408
    const-string v7, "end"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    move-object v0, v13

    move-object v1, v7

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1411
    const-string v7, "deleted"

    invoke-static/range {v38 .. v38}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    move-object v0, v13

    move-object v1, v7

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1413
    if-eqz v12, :cond_13

    .line 1414
    const-string v7, "UTC"

    iput-object v7, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    :goto_9
    move-object/from16 v7, p0

    move-object v12, v6

    .line 1418
    invoke-direct/range {v7 .. v13}, Lcom/android/providers/calendar/CalendarProvider2;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 1421
    move-object/from16 v0, v30

    move-object/from16 v1, v44

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;->add(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 1386
    :cond_11
    move-object/from16 v0, v31

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/Duration;->addTo(J)J

    move-result-wide v10

    goto :goto_8

    .line 1398
    :cond_12
    const-string v7, "CalendarProvider2"

    const/4 v8, 0x5

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1399
    const-string v7, "CalendarProvider2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected event outside window: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1416
    :cond_13
    move-object/from16 v0, p5

    move-object v1, v6

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;
    :try_end_6
    .catch Lcom/android/providers/calendar/DateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/util/TimeFormatException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_9

    .line 1456
    :cond_14
    invoke-virtual/range {v30 .. v30}, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1457
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1458
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;

    .line 1459
    invoke-virtual/range {p1 .. p1}, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_16
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 1463
    const-string v8, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1467
    const-string v8, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1468
    const-string v9, "originalInstanceTime"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 1469
    move-object/from16 v0, v30

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;

    .line 1470
    if-eqz p1, :cond_16

    .line 1480
    invoke-virtual/range {p1 .. p1}, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;->size()I

    move-result v8

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    :goto_a
    if-ltz v8, :cond_16

    .line 1481
    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ContentValues;

    .line 1482
    const-string v11, "begin"

    move-object/from16 v0, p2

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 1483
    cmp-long v11, v11, v9

    if-nez v11, :cond_17

    .line 1485
    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;->remove(I)Ljava/lang/Object;

    .line 1480
    :cond_17
    add-int/lit8 v8, v8, -0x1

    goto :goto_a

    .line 1507
    :cond_18
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1508
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarProvider2$EventInstancesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;

    .line 1509
    invoke-virtual/range {p1 .. p1}, Lcom/android/providers/calendar/CalendarProvider2$InstancesList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1a
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 1513
    const-string v7, "eventStatus"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 1514
    const-string v8, "deleted"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    const-string v8, "deleted"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 1516
    :goto_c
    if-eqz v7, :cond_1b

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x2

    if-eq v7, v9, :cond_1a

    :cond_1b
    if-nez v8, :cond_1a

    .line 1521
    const-string v7, "deleted"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1524
    const-string v7, "ORIGINAL_EVENT_AND_CALENDAR"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1525
    const-string v7, "originalInstanceTime"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1526
    const-string v7, "eventStatus"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->instancesReplace(Landroid/content/ContentValues;)J

    goto :goto_b

    .line 1514
    :cond_1c
    const/4 v8, 0x0

    goto :goto_c

    .line 1531
    :cond_1d
    return-void

    :cond_1e
    move-wide v10, v8

    goto/16 :goto_8

    :cond_1f
    move-object v11, v7

    goto/16 :goto_3

    :cond_20
    move-object v10, v7

    goto/16 :goto_2
.end method

.method private query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "db"
    .parameter "qb"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "groupBy"
    .parameter "limit"

    .prologue
    .line 836
    const-string v2, "CalendarProvider2"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 837
    const-string v2, "CalendarProvider2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query sql - projection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " selection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " selectionArgs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sortOrder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " groupBy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " limit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_0
    const/4 v8, 0x0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p7

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 846
    .local v11, c:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 848
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v11, v2, v3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 850
    :cond_1
    return-object v11
.end method

.method static readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3858
    invoke-static {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3859
    if-nez v0, :cond_0

    move v0, p2

    :goto_0
    return v0

    :cond_0
    const-string v1, "false"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private regenerateInstancesTable()V
    .locals 20

    .prologue
    .line 620
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 621
    .local v17, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v14

    .line 622
    .local v14, instancesTimezone:Ljava/lang/String;
    new-instance v19, Landroid/text/format/Time;

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 623
    .local v19, time:Landroid/text/format/Time;
    move-object/from16 v0, v19

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 624
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 625
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 626
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 627
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, v19

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 629
    const/4 v3, 0x1

    move-object/from16 v0, v19

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 630
    .local v5, begin:J
    const-wide v3, 0x13f4a4800L

    add-long v7, v5, v3

    .line 632
    .local v7, end:J
    const/16 v16, 0x0

    .line 634
    .local v16, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v10, "_id"

    aput-object v10, v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v15

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v15}, Lcom/android/providers/calendar/CalendarProvider2;->handleInstanceQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .line 643
    if-eqz v16, :cond_0

    .line 644
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 648
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->rescheduleMissedAlarms()V

    .line 649
    return-void

    .line 643
    :catchall_0
    move-exception v3

    if-eqz v16, :cond_1

    .line 644
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v3
.end method

.method private removeScheduledAlarmsLocked(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter

    .prologue
    const-string v1, "CalendarProvider2"

    .line 3581
    const-string v0, "CalendarProvider2"

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3582
    const-string v0, "CalendarProvider2"

    const-string v0, "removing scheduled alarms"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3584
    :cond_0
    const-string v0, "CalendarAlerts"

    const-string v1, "state=0"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3586
    return-void
.end method

.method private rescheduleMissedAlarms()V
    .locals 3

    .prologue
    .line 652
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v2

    .line 653
    .local v2, manager:Landroid/app/AlarmManager;
    if-eqz v2, :cond_0

    .line 654
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 655
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 656
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-static {v1, v0, v2}, Landroid/provider/Calendar$CalendarAlerts;->rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 658
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #cr:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method private runScheduleNextAlarm(Z)V
    .locals 2
    .parameter "removeAlarms"

    .prologue
    .line 3336
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3337
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3339
    if-eqz p1, :cond_0

    .line 3340
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/providers/calendar/CalendarProvider2;->removeScheduledAlarmsLocked(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3342
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarmLocked(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3343
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3345
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3347
    return-void

    .line 3345
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private scheduleNextAlarmLocked(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 35
    .parameter

    .prologue
    .line 3376
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v21

    .line 3377
    if-nez v21, :cond_1

    .line 3378
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3379
    const-string v4, "CalendarProvider2"

    const-string v5, "Failed to find the AlarmManager. Could not schedule the next alarm!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3562
    :cond_0
    :goto_0
    return-void

    .line 3384
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 3385
    const-wide/32 v4, 0x6ddd00

    sub-long v5, v22, v4

    .line 3386
    const-wide/32 v7, 0x5265c00

    add-long/2addr v7, v5

    .line 3387
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    .line 3388
    const-string v4, "CalendarProvider2"

    const/4 v9, 0x3

    invoke-static {v4, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3389
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 3390
    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 3391
    const-string v9, " %a, %b %d, %Y %I:%M%P"

    invoke-virtual {v4, v9}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3392
    const-string v9, "CalendarProvider2"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "runScheduleNextAlarm() start search: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3401
    :cond_2
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v9, 0x0

    const-wide/32 v10, 0x247a6100

    sub-long v10, v22, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    .line 3405
    const-string v9, "CalendarAlerts"

    const-string v10, "_id IN (SELECT ca._id FROM CalendarAlerts AS ca LEFT OUTER JOIN Instances USING (event_id, begin, end) LEFT OUTER JOIN Reminders AS r ON (ca.event_id=r.event_id AND ca.minutes=r.minutes) WHERE Instances.begin ISNULL OR ca.alarmTime<?   OR (r.minutes ISNULL AND ca.minutes<>0))"

    move-object/from16 v0, p1

    move-object v1, v9

    move-object v2, v10

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v25

    .line 3409
    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Calendar$CalendarAlerts;->findNextAlarmTime(Landroid/content/ContentResolver;J)J

    move-result-wide v9

    .line 3410
    const-wide/16 v11, -0x1

    cmp-long v4, v9, v11

    if-eqz v4, :cond_f

    cmp-long v4, v9, v7

    if-gez v4, :cond_f

    move-wide v13, v9

    .line 3435
    :goto_1
    const-string v15, "SELECT begin-(minutes*60000) AS myAlarmTime, Instances.event_id AS eventId, begin, end, title, allDay, method, minutes FROM Instances INNER JOIN Events ON (Events._id = Instances.event_id) INNER JOIN Reminders ON (Instances.event_id = Reminders.event_id) WHERE method=1 AND myAlarmTime>=CAST(? AS INT) AND myAlarmTime<=CAST(? AS INT) AND end>=? AND 0=(SELECT count(*) from CalendarAlerts CA where CA.event_id=Instances.event_id AND CA.begin=Instances.begin AND CA.alarmTime=myAlarmTime) ORDER BY myAlarmTime,begin,title"

    .line 3450
    const/4 v4, 0x3

    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v4, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v16, v4

    const/4 v4, 0x1

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v16, v4

    const/4 v4, 0x2

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v16, v4

    .line 3453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v11

    .line 3454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneType()Ljava/lang/String;

    move-result-object v4

    const-string v9, "home"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 3456
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/android/providers/calendar/CalendarProvider2;->acquireInstanceRangeLocked(JJZZLjava/lang/String;Z)V

    .line 3462
    const/4 v4, 0x0

    .line 3464
    :try_start_0
    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v26

    .line 3466
    :try_start_1
    const-string v4, "begin"

    move-object/from16 v0, v26

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v27

    .line 3467
    const-string v4, "end"

    move-object/from16 v0, v26

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 3468
    const-string v4, "eventId"

    move-object/from16 v0, v26

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 3469
    const-string v4, "myAlarmTime"

    move-object/from16 v0, v26

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 3470
    const-string v4, "minutes"

    move-object/from16 v0, v26

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 3472
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3473
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 3474
    invoke-virtual {v4, v13, v14}, Landroid/text/format/Time;->set(J)V

    .line 3475
    const-string v5, " %a, %b %d, %Y %I:%M%P"

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3476
    const-string v5, "CalendarProvider2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cursor results: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAlarmTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-wide v11, v13

    .line 3480
    :goto_2
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3488
    move-object/from16 v0, v26

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 3489
    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 3490
    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 3491
    invoke-interface/range {v26 .. v27}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 3492
    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 3494
    const-string v4, "CalendarProvider2"

    const/4 v13, 0x3

    invoke-static {v4, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3495
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 3496
    invoke-virtual {v4, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 3497
    const-string v13, " %a, %b %d, %Y %I:%M%P"

    invoke-virtual {v4, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3498
    invoke-virtual {v4, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 3499
    const-string v14, " %a, %b %d, %Y %I:%M%P"

    invoke-virtual {v4, v14}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3501
    const-string v14, "CalendarProvider2"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "  looking at id: "

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, " "

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, " alarm: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3505
    :cond_4
    cmp-long v4, v9, v11

    if-gez v4, :cond_5

    move-wide/from16 v32, v9

    :goto_3
    move-object/from16 v4, v24

    .line 3519
    invoke-static/range {v4 .. v10}, Landroid/provider/Calendar$CalendarAlerts;->alarmExists(Landroid/content/ContentResolver;JJJ)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3520
    const-string v4, "CalendarProvider2"

    const/4 v7, 0x3

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3521
    const-string v4, "title"

    move-object/from16 v0, v26

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 3522
    move-object/from16 v0, v26

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3523
    const-string v7, "CalendarProvider2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  alarm exists for id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v11, v32

    .line 3524
    goto/16 :goto_2

    .line 3507
    :cond_5
    const-wide/32 v13, 0xea60

    add-long/2addr v13, v11

    cmp-long v4, v9, v13

    if-lez v4, :cond_e

    .line 3511
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3512
    const-string v4, "CalendarProvider2"

    const-string v5, "This event alarm (and all later ones) will be scheduled later"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3542
    :cond_6
    if-eqz v26, :cond_7

    .line 3543
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 3548
    :cond_7
    if-lez v25, :cond_8

    .line 3549
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Calendar$CalendarAlerts;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V

    .line 3557
    :cond_8
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v11, v4

    if-eqz v4, :cond_c

    .line 3558
    const-wide/32 v4, 0xea60

    add-long/2addr v4, v11

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarmCheck(J)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v11, v24

    move-wide v12, v5

    move-wide v14, v7

    move-wide/from16 v18, v9

    .line 3529
    :try_start_2
    invoke-static/range {v11 .. v20}, Landroid/provider/Calendar$CalendarAlerts;->insert(Landroid/content/ContentResolver;JJJJI)Landroid/net/Uri;

    move-result-object v4

    .line 3531
    if-nez v4, :cond_a

    .line 3532
    const-string v4, "CalendarProvider2"

    const/4 v5, 0x6

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3533
    const-string v4, "CalendarProvider2"

    const-string v5, "runScheduleNextAlarm() insert into CalendarAlerts table failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v11, v32

    goto/16 :goto_2

    .line 3539
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v21

    move-wide v2, v9

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Calendar$CalendarAlerts;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-wide/from16 v11, v32

    .line 3540
    goto/16 :goto_2

    .line 3542
    :catchall_0
    move-exception v5

    move-object/from16 v34, v5

    move-object v5, v4

    move-object/from16 v4, v34

    :goto_4
    if-eqz v5, :cond_b

    .line 3543
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v4

    .line 3560
    :cond_c
    const-wide/32 v4, 0x5265c00

    add-long v4, v4, v22

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarmCheck(J)V

    goto/16 :goto_0

    .line 3542
    :catchall_1
    move-exception v4

    move-object/from16 v5, v26

    goto :goto_4

    :cond_d
    move-wide/from16 v11, v32

    goto/16 :goto_2

    :cond_e
    move-wide/from16 v32, v11

    goto/16 :goto_3

    :cond_f
    move-wide v13, v7

    goto/16 :goto_1
.end method

.method private setEventDirty(I)V
    .locals 5
    .parameter

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE Events SET _sync_dirty=1 where _id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1984
    return-void
.end method

.method private declared-synchronized triggerAppWidgetUpdate(J)V
    .locals 2
    .parameter "changedEventId"

    .prologue
    .line 3260
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3261
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 3262
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mAppWidgetProvider:Lcom/android/providers/calendar/CalendarAppWidgetProvider;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->providerUpdated(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3264
    :cond_0
    monitor-exit p0

    return-void

    .line 3260
    .end local v0           #context:Landroid/content/Context;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private updateEventAttendeeStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 2057
    const-string v0, "event_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2061
    const/4 v8, 0x0

    .line 2064
    :try_start_0
    sget-object v0, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "calendar_id"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2069
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2070
    :cond_0
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2071
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in Events table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 2077
    :cond_1
    if-eqz v0, :cond_2

    .line 2078
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2137
    :cond_2
    :goto_0
    return-void

    .line 2075
    :cond_3
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-wide v8

    .line 2077
    if-eqz v0, :cond_4

    .line 2078
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2084
    :cond_4
    const/4 v10, 0x0

    .line 2086
    :try_start_3
    sget-object v0, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "ownerAccount"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 2091
    if-eqz v0, :cond_5

    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2092
    :cond_5
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2093
    const-string v1, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in Calendars table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2099
    :cond_6
    if-eqz v0, :cond_2

    .line 2100
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2077
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_1
    if-eqz v1, :cond_7

    .line 2078
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 2097
    :cond_8
    const/4 v1, 0x0

    :try_start_5
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v1

    .line 2099
    if-eqz v0, :cond_9

    .line 2100
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2104
    :cond_9
    if-eqz v1, :cond_2

    .line 2109
    const/4 v0, 0x0

    .line 2110
    const-string v2, "attendeeEmail"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2111
    const-string v0, "attendeeEmail"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2117
    :cond_a
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2122
    const/4 v0, 0x0

    .line 2123
    const-string v1, "attendeeRelationship"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2124
    const-string v1, "attendeeRelationship"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2125
    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 2126
    const/4 v0, 0x1

    .line 2130
    :cond_b
    const-string v1, "attendeeStatus"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2131
    const-string v0, "attendeeStatus"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2134
    :cond_c
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2135
    const-string v2, "selfAttendeeStatus"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2136
    const-string v0, "Events"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2099
    :catchall_1
    move-exception v0

    move-object v1, v10

    :goto_2
    if-eqz v1, :cond_d

    .line 2100
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v0

    .line 2099
    :catchall_2
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_2

    .line 2077
    :catchall_3
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_1
.end method

.method private updateEventRawTimesLocked(JLandroid/content/ContentValues;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2432
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2434
    const-string v1, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2436
    const-string v1, "eventTimezone"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2439
    const-string v2, "allDay"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 2440
    if-eqz v2, :cond_9

    .line 2441
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v7

    .line 2444
    :goto_0
    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2446
    :cond_0
    const-string v1, "UTC"

    .line 2449
    :cond_1
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2450
    iput-boolean v2, v3, Landroid/text/format/Time;->allDay:Z

    .line 2451
    const-string v1, "dtstart"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 2452
    if-eqz v1, :cond_2

    .line 2453
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 2454
    const-string v1, "dtstart2445"

    invoke-virtual {v3}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2457
    :cond_2
    const-string v1, "dtend"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 2458
    if-eqz v1, :cond_3

    .line 2459
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 2460
    const-string v1, "dtend2445"

    invoke-virtual {v3}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2463
    :cond_3
    const-string v1, "originalInstanceTime"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 2464
    if-eqz v1, :cond_5

    .line 2468
    const-string v4, "originalAllDay"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 2469
    if-eqz v4, :cond_4

    .line 2470
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_8

    move v4, v7

    :goto_1
    iput-boolean v4, v3, Landroid/text/format/Time;->allDay:Z

    .line 2472
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 2473
    const-string v1, "originalInstanceTime2445"

    invoke-virtual {v3}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2476
    :cond_5
    const-string v1, "lastDate"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 2477
    if-eqz v1, :cond_6

    .line 2478
    iput-boolean v2, v3, Landroid/text/format/Time;->allDay:Z

    .line 2479
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 2480
    const-string v1, "lastDate2445"

    invoke-virtual {v3}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    :cond_6
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->eventsRawTimesReplace(Landroid/content/ContentValues;)J

    .line 2484
    return-void

    :cond_7
    move v2, v6

    .line 2441
    goto/16 :goto_0

    :cond_8
    move v4, v6

    .line 2470
    goto :goto_1

    :cond_9
    move v2, v6

    goto/16 :goto_0
.end method

.method private updateEventsStartEndFromEventRawTimesLocked()V
    .locals 9

    .prologue
    const-string v0, "CalendarProvider2"

    .line 518
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "SELECT event_id, dtstart2445, dtend2445, eventTimezone FROM EventsRawTimes, Events WHERE event_id = Events._id"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 520
    .local v6, cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 521
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 522
    .local v1, eventId:J
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 523
    .local v4, dtStart2445:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 524
    .local v5, dtEnd2445:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 525
    .local v3, eventTimezone:Ljava/lang/String;
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 526
    const-string v0, "CalendarProvider2"

    const/4 v7, 0x6

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    const-string v0, "CalendarProvider2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Event "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has dtStart2445 and dtEnd2445 null "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "at the same time in EventsRawTimes!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 538
    .end local v1           #eventId:J
    .end local v3           #eventTimezone:Ljava/lang/String;
    .end local v4           #dtStart2445:Ljava/lang/String;
    .end local v5           #dtEnd2445:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 539
    const/4 v6, 0x0

    throw v0

    .restart local v1       #eventId:J
    .restart local v3       #eventTimezone:Ljava/lang/String;
    .restart local v4       #dtStart2445:Ljava/lang/String;
    .restart local v5       #dtEnd2445:Ljava/lang/String;
    :cond_1
    move-object v0, p0

    .line 532
    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventsStartEndLocked(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 538
    .end local v1           #eventId:J
    .end local v3           #eventTimezone:Ljava/lang/String;
    .end local v4           #dtStart2445:Ljava/lang/String;
    .end local v5           #dtEnd2445:Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 539
    const/4 v6, 0x0

    .line 541
    return-void
.end method

.method private updateEventsStartEndLocked(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "eventId"
    .parameter "timezone"
    .parameter "dtStart2445"
    .parameter "dtEnd2445"

    .prologue
    const-string v8, "CalendarProvider2"

    .line 565
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 566
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "dtstart"

    invoke-direct {p0, p3, p4}, Lcom/android/providers/calendar/CalendarProvider2;->get2445ToMillis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 567
    const-string v2, "dtend"

    invoke-direct {p0, p3, p5}, Lcom/android/providers/calendar/CalendarProvider2;->get2445ToMillis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 569
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Events"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 571
    .local v0, result:I
    if-nez v0, :cond_0

    .line 572
    const-string v2, "CalendarProvider2"

    const/4 v2, 0x2

    invoke-static {v8, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 573
    const-string v2, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not update Events table with values "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_0
    return-void
.end method

.method private updateInTable(Ljava/lang/String;Landroid/content/ContentValues;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2743
    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2744
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2745
    const-string v2, "_sync_dirty"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2746
    const/4 v2, 0x0

    .line 2748
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2749
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2750
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2751
    iget-object v7, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v10

    invoke-virtual {v7, p1, p2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2752
    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Events"

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-virtual {v3, v4, v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2753
    add-int/lit8 v2, v2, 0x1

    .line 2754
    goto :goto_0

    .line 2756
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2758
    return v2

    .line 2756
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v5, "CalendarProvider2"

    .line 2152
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v0}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v0

    .line 2153
    iget-wide v1, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 2236
    :cond_0
    :goto_0
    return-void

    .line 2157
    :cond_1
    const-string v1, "dtstart"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 2158
    if-nez v1, :cond_3

    .line 2159
    if-eqz p4, :cond_2

    .line 2161
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DTSTART missing."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2163
    :cond_2
    const-string v0, "CalendarProvider2"

    const/4 v0, 0x2

    invoke-static {v5, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2164
    const-string v0, "CalendarProvider2"

    const-string v0, "Missing DTSTART.  No need to update instance."

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2169
    :cond_3
    const-string v2, "lastDate"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 2170
    const-string v3, "originalInstanceTime"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 2172
    if-nez p4, :cond_4

    .line 2177
    const-string v4, "Instances"

    const-string v5, "event_id=?"

    new-array v6, v9, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p5, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2180
    :cond_4
    const-string v4, "rrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2181
    const-string v5, "rdate"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2182
    const-string v6, "originalEvent"

    invoke-virtual {p1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2183
    invoke-static {v4, v5, v6}, Lcom/android/providers/calendar/CalendarProvider2;->isRecurrenceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2186
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    cmp-long v1, v4, v6

    if-gtz v1, :cond_7

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v4, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    cmp-long v1, v1, v4

    if-ltz v1, :cond_7

    :cond_5
    move v1, v9

    .line 2191
    :goto_1
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_8

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    const-wide/32 v6, 0x240c8400

    sub-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-ltz v0, :cond_8

    move v0, v9

    .line 2194
    :goto_2
    if-nez v1, :cond_6

    if-eqz v0, :cond_0

    .line 2195
    :cond_6
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/calendar/CalendarProvider2;->updateRecurrenceInstancesLocked(Landroid/content/ContentValues;JLandroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    :cond_7
    move v1, v8

    .line 2186
    goto :goto_1

    :cond_8
    move v0, v8

    .line 2191
    goto :goto_2

    .line 2203
    :cond_9
    const-string v2, "dtend"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 2204
    if-nez v2, :cond_d

    move-object v3, v1

    .line 2213
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    cmp-long v2, v4, v6

    if-ltz v2, :cond_0

    .line 2214
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2215
    const-string v2, "event_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2216
    const-string v2, "begin"

    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2217
    const-string v2, "end"

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2220
    const-string v2, "allDay"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 2221
    if-eqz v2, :cond_c

    .line 2222
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_a

    move v2, v9

    .line 2226
    :goto_4
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 2227
    if-eqz v2, :cond_b

    .line 2228
    const-string v0, "UTC"

    iput-object v0, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2233
    :goto_5
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/calendar/CalendarProvider2;->computeTimezoneDependentFields(JJLandroid/text/format/Time;Landroid/content/ContentValues;)V

    .line 2234
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0, v6}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->instancesInsert(Landroid/content/ContentValues;)J

    goto/16 :goto_0

    :cond_a
    move v2, v8

    .line 2222
    goto :goto_4

    .line 2230
    :cond_b
    iget-object v0, v0, Lcom/android/providers/calendar/MetaData$Fields;->timezone:Ljava/lang/String;

    iput-object v0, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    goto :goto_5

    :cond_c
    move v2, v8

    goto :goto_4

    :cond_d
    move-object v3, v2

    goto :goto_3
.end method

.method private updateLastDate(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 5
    .parameter

    .prologue
    const-string v4, "CalendarProvider2"

    .line 2416
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->calculateLastDate(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2417
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2418
    const-string v2, "lastDate"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Lcom/android/providers/calendar/DateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v0, p1

    .line 2427
    :goto_0
    return-object v0

    .line 2422
    :catch_0
    move-exception v0

    .line 2424
    const-string v1, "CalendarProvider2"

    const/4 v1, 0x5

    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2425
    const-string v1, "CalendarProvider2"

    const-string v1, "Could not calculate last date."

    invoke-static {v4, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2427
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateRecurrenceInstancesLocked(Landroid/content/ContentValues;JLandroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const-string v8, "Instances"

    .line 2287
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v0}, Lcom/android/providers/calendar/MetaData;->getFieldsLocked()Lcom/android/providers/calendar/MetaData$Fields;

    move-result-object v0

    .line 2288
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v5

    .line 2289
    const-string v1, "originalEvent"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2291
    if-eqz v1, :cond_1

    .line 2302
    :goto_0
    if-nez v1, :cond_2

    .line 2305
    const-string v2, "_id IN (SELECT Instances._id as _id FROM Instances INNER JOIN Events ON (Events._id = Instances.event_id) WHERE Events._id =?)"

    .line 2309
    const-string v3, "Instances"

    new-array v3, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p4, v8, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2323
    :goto_1
    invoke-direct {p0, v1, p2, p3}, Lcom/android/providers/calendar/CalendarProvider2;->getRelevantRecurrenceEntries(Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v6

    .line 2325
    :try_start_0
    iget-wide v1, v0, Lcom/android/providers/calendar/MetaData$Fields;->minInstance:J

    iget-wide v3, v0, Lcom/android/providers/calendar/MetaData$Fields;->maxInstance:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/calendar/CalendarProvider2;->performInstanceExpansion(JJLjava/lang/String;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2328
    if-eqz v6, :cond_0

    .line 2329
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2332
    :cond_0
    return-void

    .line 2295
    :cond_1
    const-string v1, "SELECT _sync_id FROM Events WHERE _id=?"

    new-array v2, v4, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {p4, v1, v2}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2314
    :cond_2
    const-string v2, "_id IN (SELECT Instances._id as _id FROM Instances INNER JOIN Events ON (Events._id = Instances.event_id) WHERE Events._sync_id =? OR Events.originalEvent =?)"

    .line 2319
    const-string v3, "Instances"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v7

    aput-object v1, v3, v4

    invoke-virtual {p4, v8, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 2328
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 2329
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private updateTimezoneDatabaseVersion(Ljava/lang/String;)V
    .locals 3
    .parameter "timeZoneDatabaseVersion"

    .prologue
    const-string v2, "CalendarProvider2"

    .line 580
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1, p1}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneDatabaseVersion(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/providers/calendar/CalendarCache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 581
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 582
    .local v0, e:Lcom/android/providers/calendar/CalendarCache$CacheException;
    const-string v1, "CalendarProvider2"

    const/4 v1, 0x6

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    const-string v1, "CalendarProvider2"

    const-string v1, "Could not write timezone database version in the cache"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private validateEventData(Landroid/content/ContentValues;)V
    .locals 11
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v10, "duration"

    const-string v8, "CalendarProvider2"

    .line 1926
    const-string v0, "dtend"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    move v0, v7

    .line 1927
    :goto_0
    const-string v1, "duration"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v7

    .line 1928
    :goto_1
    const-string v2, "rrule"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v7

    .line 1929
    :goto_2
    const-string v3, "rdate"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v7

    .line 1930
    :goto_3
    const-string v4, "originalEvent"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    move v4, v7

    .line 1931
    :goto_4
    const-string v5, "originalInstanceTime"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_9

    move v5, v7

    .line 1932
    :goto_5
    if-nez v2, :cond_0

    if-eqz v3, :cond_a

    .line 1941
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    if-nez v4, :cond_1

    if-eqz v5, :cond_3

    .line 1942
    :cond_1
    const-string v0, "CalendarProvider2"

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1943
    const-string v0, "CalendarProvider2"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid values for recurrence: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :cond_2
    const-string v0, "dtend"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1946
    const-string v0, "originalEvent"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1947
    const-string v0, "originalInstanceTime"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1980
    :cond_3
    :goto_6
    return-void

    :cond_4
    move v0, v6

    .line 1926
    goto :goto_0

    :cond_5
    move v1, v6

    .line 1927
    goto :goto_1

    :cond_6
    move v2, v6

    .line 1928
    goto :goto_2

    :cond_7
    move v3, v6

    .line 1929
    goto :goto_3

    :cond_8
    move v4, v6

    .line 1930
    goto :goto_4

    :cond_9
    move v5, v6

    .line 1931
    goto :goto_5

    .line 1949
    :cond_a
    if-nez v4, :cond_b

    if-eqz v5, :cond_e

    .line 1958
    :cond_b
    if-eqz v0, :cond_c

    if-nez v1, :cond_c

    if-eqz v4, :cond_c

    if-nez v5, :cond_3

    .line 1959
    :cond_c
    const-string v0, "CalendarProvider2"

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1960
    const-string v0, "CalendarProvider2"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid values for recurrence exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    :cond_d
    const-string v0, "duration"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_6

    .line 1973
    :cond_e
    if-eqz v0, :cond_f

    if-eqz v1, :cond_3

    .line 1974
    :cond_f
    const-string v0, "CalendarProvider2"

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1975
    const-string v0, "CalendarProvider2"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid values for event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    :cond_10
    const-string v0, "duration"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_6
.end method


# virtual methods
.method calculateLastDate(Landroid/content/ContentValues;)J
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/calendar/DateException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    const-string v5, "duration"

    const-string v1, "dtstart"

    const-string v3, "dtend"

    const-string v4, "CalendarProvider2"

    .line 2338
    const-string v0, "dtstart"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2339
    const-string v0, "dtend"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "rrule"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "duration"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "eventTimezone"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "rdate"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "exrule"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "exdate"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2345
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DTSTART field missing from event"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-wide v0, v6

    .line 2406
    :cond_2
    :goto_0
    return-wide v0

    .line 2349
    :cond_3
    const-string v0, "dtstart"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2357
    const-string v2, "dtend"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 2358
    if-eqz v2, :cond_4

    .line 2359
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 2362
    :cond_4
    new-instance v2, Lcom/android/providers/calendar/Duration;

    invoke-direct {v2}, Lcom/android/providers/calendar/Duration;-><init>()V

    .line 2363
    const-string v3, "duration"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2364
    if-eqz v3, :cond_5

    .line 2365
    invoke-virtual {v2, v3}, Lcom/android/providers/calendar/Duration;->parse(Ljava/lang/String;)V

    .line 2370
    :cond_5
    :try_start_0
    new-instance v3, Landroid/pim/RecurrenceSet;

    invoke-direct {v3, p1}, Landroid/pim/RecurrenceSet;-><init>(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Landroid/pim/EventRecurrence$InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2379
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/pim/RecurrenceSet;->hasRecurrence()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2383
    const-string v4, "eventTimezone"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2385
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2387
    const-string v4, "UTC"

    .line 2389
    :cond_6
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2391
    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 2393
    new-instance v0, Lcom/android/providers/calendar/RecurrenceProcessor;

    invoke-direct {v0}, Lcom/android/providers/calendar/RecurrenceProcessor;-><init>()V

    .line 2394
    invoke-virtual {v0, v5, v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->getLastOccurence(Landroid/text/format/Time;Landroid/pim/RecurrenceSet;)J

    move-result-wide v0

    .line 2395
    cmp-long v3, v0, v6

    if-eqz v3, :cond_2

    .line 2404
    :cond_7
    invoke-virtual {v2, v0, v1}, Lcom/android/providers/calendar/Duration;->addTo(J)J

    move-result-wide v0

    goto :goto_0

    .line 2371
    :catch_0
    move-exception v0

    .line 2372
    const-string v1, "CalendarProvider2"

    const/4 v1, 0x5

    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2373
    const-string v1, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse RRULE recurrence string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rrule"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    move-wide v0, v6

    .line 2376
    goto/16 :goto_0
.end method

.method protected deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    const-string v4, "Attendees"

    const-string v7, "_id=?"

    .line 2488
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2489
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteInTransaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    :cond_0
    const-string v0, "caller_is_syncadapter"

    invoke-static {p1, v0, v9}, Lcom/android/providers/calendar/CalendarProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v8

    .line 2493
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2494
    packed-switch v0, :pswitch_data_0

    .line 2642
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2496
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/content/SyncStateContentProviderHelper;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2635
    :goto_0
    return v0

    .line 2499
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id=?"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2502
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2504
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/content/SyncStateContentProviderHelper;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2499
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2510
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2513
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Events"

    sget-object v2, Lcom/android/providers/calendar/CalendarProvider2;->ID_ONLY_PROJECTION:[Ljava/lang/String;

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move v1, v9

    .line 2517
    :goto_2
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2518
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2519
    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v8, v4}, Lcom/android/providers/calendar/CalendarProvider2;->deleteEventInternal(JZZ)I

    move-result v2

    add-int/2addr v1, v2

    .line 2520
    goto :goto_2

    .line 2521
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    .line 2522
    const-wide/16 v2, -0x1

    invoke-direct {p0, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->triggerAppWidgetUpdate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2524
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 2527
    goto :goto_0

    .line 2524
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2525
    throw v1

    .line 2531
    :pswitch_4
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 2532
    if-eqz p2, :cond_3

    .line 2533
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CalendarProvider2 doesn\'t support selection based deletion for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2537
    :cond_3
    invoke-direct {p0, v1, v2, v8, v9}, Lcom/android/providers/calendar/CalendarProvider2;->deleteEventInternal(JZZ)I

    move-result v0

    goto/16 :goto_0

    .line 2541
    :pswitch_5
    if-eqz v8, :cond_4

    .line 2542
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Attendees"

    invoke-virtual {v0, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2544
    :cond_4
    const-string v0, "Attendees"

    invoke-direct {p0, v4, p1, p2, p3}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2549
    :pswitch_6
    if-eqz p2, :cond_5

    .line 2550
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection not permitted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2552
    :cond_5
    if-eqz v8, :cond_6

    .line 2553
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 2554
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Attendees"

    const-string v3, "_id=?"

    new-array v3, v6, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-virtual {v2, v4, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2556
    :cond_6
    const-string v0, "Attendees"

    invoke-direct {p0, v4, p1, v5, v5}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2562
    :pswitch_7
    if-eqz v8, :cond_7

    .line 2563
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Reminders"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2565
    :cond_7
    const-string v0, "Reminders"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2570
    :pswitch_8
    if-eqz p2, :cond_8

    .line 2571
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection not permitted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2573
    :cond_8
    if-eqz v8, :cond_9

    .line 2574
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 2575
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Reminders"

    const-string v4, "_id=?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-virtual {v2, v3, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2577
    :cond_9
    const-string v0, "Reminders"

    invoke-direct {p0, v0, p1, v5, v5}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2583
    :pswitch_9
    if-eqz v8, :cond_a

    .line 2584
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ExtendedProperties"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2586
    :cond_a
    const-string v0, "ExtendedProperties"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2591
    :pswitch_a
    if-eqz p2, :cond_b

    .line 2592
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection not permitted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2594
    :cond_b
    if-eqz v8, :cond_c

    .line 2595
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 2596
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ExtendedProperties"

    const-string v4, "_id=?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-virtual {v2, v3, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2599
    :cond_c
    const-string v0, "ExtendedProperties"

    invoke-direct {p0, v0, p1, v5, v5}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2605
    :pswitch_b
    if-eqz v8, :cond_d

    .line 2606
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CalendarAlerts"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2608
    :cond_d
    const-string v0, "CalendarAlerts"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/providers/calendar/CalendarProvider2;->deleteFromTable(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2613
    :pswitch_c
    if-eqz p2, :cond_e

    .line 2614
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection not permitted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2618
    :cond_e
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 2619
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "CalendarAlerts"

    const-string v4, "_id=?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    invoke-virtual {v2, v3, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2622
    :pswitch_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete that URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2624
    :pswitch_e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "_id="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2625
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2626
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2627
    const-string v0, " AND ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2628
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2629
    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2631
    :cond_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2634
    :goto_3
    invoke-direct {p0, p1, v0}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2635
    invoke-direct {p0, v0}, Lcom/android/providers/calendar/CalendarProvider2;->deleteMatchingCalendars(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2640
    :pswitch_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot delete that URL"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10
    move-object v0, p2

    goto :goto_3

    .line 2494
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_f
        :pswitch_d
        :pswitch_10
        :pswitch_e
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_f
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
    .end packed-switch
.end method

.method protected doProcessEventRawTimes(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "localTimezone"
    .parameter "timeZoneDatabaseVersion"

    .prologue
    const-string v1, "CalendarProvider2"

    .line 498
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 499
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 500
    const-string v0, "CalendarProvider2"

    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    const-string v0, "CalendarProvider2"

    const-string v0, "Cannot update Events table from EventsRawTimes table"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 507
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventsStartEndFromEventRawTimesLocked()V

    .line 508
    invoke-direct {p0, p2}, Lcom/android/providers/calendar/CalendarProvider2;->updateTimezoneDatabaseVersion(Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v0, p1}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstances(Ljava/lang/String;)V

    .line 510
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->regenerateInstancesTable()V

    .line 511
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method protected doUpdateTimezoneDependentFields()V
    .locals 3

    .prologue
    .line 478
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneType()Ljava/lang/String;

    move-result-object v1

    .line 480
    .local v1, timezoneType:Ljava/lang/String;
    const-string v2, "home"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->isSameTimezoneDatabaseVersion()Z

    move-result v2

    if-nez v2, :cond_2

    .line 485
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, localTimezone:Ljava/lang/String;
    invoke-static {}, Landroid/util/TimeUtils;->getTimeZoneDatabaseVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/providers/calendar/CalendarProvider2;->doProcessEventRawTimes(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    .end local v0           #localTimezone:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->isLocalSameAsInstancesTimezone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 493
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->rescheduleMissedAlarms()V

    goto :goto_0
.end method

.method protected bridge synthetic getDatabaseHelper(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method protected getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;
    .locals 1
    .parameter "context"

    .prologue
    .line 399
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method protected getTimezoneDatabaseVersion()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "CalendarProvider2"

    .line 601
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneDatabaseVersion()Ljava/lang/String;

    move-result-object v0

    .line 602
    if-nez v0, :cond_1

    .line 603
    const-string v0, ""

    .line 608
    :cond_0
    :goto_0
    return-object v0

    .line 605
    :cond_1
    const-string v1, "CalendarProvider2"

    const/4 v1, 0x4

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 606
    const-string v1, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timezoneDatabaseVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "url"

    .prologue
    .line 1569
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1570
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 1594
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1572
    :pswitch_1
    const-string v1, "vnd.android.cursor.dir/event"

    .line 1592
    :goto_0
    return-object v1

    .line 1574
    :pswitch_2
    const-string v1, "vnd.android.cursor.item/event"

    goto :goto_0

    .line 1576
    :pswitch_3
    const-string v1, "vnd.android.cursor.dir/reminder"

    goto :goto_0

    .line 1578
    :pswitch_4
    const-string v1, "vnd.android.cursor.item/reminder"

    goto :goto_0

    .line 1580
    :pswitch_5
    const-string v1, "vnd.android.cursor.dir/calendar-alert"

    goto :goto_0

    .line 1582
    :pswitch_6
    const-string v1, "vnd.android.cursor.dir/calendar-alert-by-instance"

    goto :goto_0

    .line 1584
    :pswitch_7
    const-string v1, "vnd.android.cursor.item/calendar-alert"

    goto :goto_0

    .line 1588
    :pswitch_8
    const-string v1, "vnd.android.cursor.dir/event-instance"

    goto :goto_0

    .line 1590
    :pswitch_9
    const-string v1, "time/epoch"

    goto :goto_0

    .line 1592
    :pswitch_a
    const-string v1, "vnd.android.cursor.dir/property"

    goto :goto_0

    .line 1570
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 1739
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1740
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertInTransaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_0
    const-string v0, "caller_is_syncadapter"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v6

    .line 1746
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1749
    packed-switch v0, :pswitch_data_0

    .line 1907
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1751
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/content/SyncStateContentProviderHelper;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 1910
    :cond_1
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_12

    .line 1911
    const/4 v0, 0x0

    .line 1914
    :goto_1
    return-object v0

    .line 1754
    :pswitch_2
    if-nez v6, :cond_2

    .line 1755
    const-string v0, "_sync_dirty"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1757
    :cond_2
    const-string v0, "dtstart"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1758
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DTSTART field missing from event"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1761
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1762
    invoke-direct {p0, v0}, Lcom/android/providers/calendar/CalendarProvider2;->validateEventData(Landroid/content/ContentValues;)V

    .line 1764
    invoke-direct {p0, v0}, Lcom/android/providers/calendar/CalendarProvider2;->updateLastDate(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1765
    if-nez v1, :cond_4

    .line 1766
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not insert event."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1769
    :cond_4
    const/4 v0, 0x0

    .line 1770
    const-string v2, "calendar_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "organizer"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1772
    const-string v0, "calendar_id"

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->getOwner(J)Ljava/lang/String;

    move-result-object v0

    .line 1777
    if-eqz v0, :cond_5

    .line 1778
    const-string v2, "organizer"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v7, v0

    .line 1781
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/providers/calendar/CalendarProvider2;->fixAllDayTime(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1782
    const-string v0, "CalendarProvider2"

    const/4 v2, 0x5

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1783
    const-string v0, "CalendarProvider2"

    const-string v2, "insertInTransaction: allDay is true but sec, min, hour were not 0."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    :cond_6
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->eventsInsert(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 1788
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_14

    .line 1789
    invoke-direct {p0, v2, v3, v1}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventRawTimesLocked(JLandroid/content/ContentValues;)V

    .line 1790
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 1794
    const-string v0, "selfAttendeeStatus"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1795
    const-string v0, "selfAttendeeStatus"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1796
    if-nez v7, :cond_13

    .line 1797
    const-string v4, "calendar_id"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/providers/calendar/CalendarProvider2;->getOwner(J)Ljava/lang/String;

    move-result-object v1

    .line 1799
    :goto_3
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->createAttendeeEntry(JILjava/lang/String;)V

    .line 1803
    :cond_7
    const-string v0, "eventTimezone"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v6, :cond_8

    .line 1804
    const-string v0, "eventTimezone"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1806
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1807
    const-string v4, "event_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1808
    const-string v4, "name"

    const-string v5, "CalendarSyncAdapter#originalTimezone"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    const-string v4, "value"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->extendedPropertiesInsert(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 1814
    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_9

    .line 1815
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1816
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot add the original Timezone in the ExtendedProperties table for Event: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    :cond_8
    :goto_4
    invoke-direct {p0, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->triggerAppWidgetUpdate(J)V

    move-wide v0, v2

    goto/16 :goto_0

    .line 1821
    :cond_9
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1822
    const-string v1, "hasExtendedProperties"

    const-string v4, "1"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Events"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1825
    if-gtz v0, :cond_8

    .line 1826
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1827
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot update hasExtendedProperties column for Event: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1837
    :pswitch_3
    const-string v0, "sync_events"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1838
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 1839
    const-string v0, "_sync_account"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1840
    const-string v1, "_sync_account_type"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1842
    new-instance v2, Landroid/accounts/Account;

    invoke-direct {v2, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    const-string v0, "url"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1844
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V

    .line 1846
    :cond_a
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0, p2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->calendarsInsert(Landroid/content/ContentValues;)J

    move-result-wide v0

    goto/16 :goto_0

    .line 1849
    :pswitch_4
    const-string v0, "event_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1850
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attendees values must contain an event_id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1853
    :cond_b
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0, p2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->attendeesInsert(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 1854
    if-nez v6, :cond_c

    .line 1855
    const-string v2, "event_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/providers/calendar/CalendarProvider2;->setEventDirty(I)V

    .line 1859
    :cond_c
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v2, p2}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventAttendeeStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 1862
    :pswitch_5
    const-string v0, "event_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1863
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Reminders values must contain an event_id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1866
    :cond_d
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0, p2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->remindersInsert(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 1867
    if-nez v6, :cond_e

    .line 1868
    const-string v2, "event_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/providers/calendar/CalendarProvider2;->setEventDirty(I)V

    .line 1872
    :cond_e
    const-string v2, "CalendarProvider2"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1873
    const-string v2, "CalendarProvider2"

    const-string v3, "insertInternal() changing reminder"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    :cond_f
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    goto/16 :goto_0

    .line 1878
    :pswitch_6
    const-string v0, "event_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1879
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CalendarAlerts values must contain an event_id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1882
    :cond_10
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0, p2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->calendarAlertsInsert(Landroid/content/ContentValues;)J

    move-result-wide v0

    goto/16 :goto_0

    .line 1887
    :pswitch_7
    const-string v0, "event_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1888
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ExtendedProperties values must contain an event_id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1891
    :cond_11
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0, p2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->extendedPropertiesInsert(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 1892
    if-nez v6, :cond_1

    .line 1893
    const-string v2, "event_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/providers/calendar/CalendarProvider2;->setEventDirty(I)V

    goto/16 :goto_0

    .line 1905
    :pswitch_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot insert into that URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1914
    :cond_12
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_1

    :cond_13
    move-object v1, v7

    goto/16 :goto_3

    :cond_14
    move-wide v0, v2

    goto/16 :goto_0

    :cond_15
    move-object v7, v0

    goto/16 :goto_2

    .line 1749
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method protected isSameTimezoneDatabaseVersion()Z
    .locals 2

    .prologue
    .line 592
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneDatabaseVersion()Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, timezoneDatabaseVersion:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 594
    const/4 v1, 0x0

    .line 596
    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/util/TimeUtils;->getTimeZoneDatabaseVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method protected notifyChange()V
    .locals 4

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Calendar;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 678
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const-string v0, "CalendarProvider2"

    .line 3807
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 3808
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 3854
    :goto_0
    return-void

    .line 3810
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3811
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3812
    array-length v2, p1

    move v3, v8

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    .line 3813
    new-instance v5, Landroid/accounts/Account;

    iget-object v6, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v7, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3814
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3812
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3816
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3818
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3821
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Calendars"

    aput-object v4, v2, v3

    array-length v3, v2

    move v4, v8

    :goto_2
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 3824
    iget-object v6, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT DISTINCT _sync_account,_sync_account_type from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 3828
    :cond_2
    :goto_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3829
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 3830
    new-instance v6, Landroid/accounts/Account;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3831
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 3832
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 3852
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 3836
    :cond_3
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 3821
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3839
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 3840
    const-string v2, "CalendarProvider2"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3841
    const-string v2, "CalendarProvider2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removing data for removed account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    :cond_5
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v2, v3

    .line 3844
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "DELETE FROM Calendars WHERE _sync_account= ? AND _sync_account_type= ?"

    invoke-virtual {v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 3849
    :cond_6
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/content/SyncStateContentProviderHelper;->onAccountsChanged(Landroid/database/sqlite/SQLiteDatabase;[Landroid/accounts/Account;)V

    .line 3850
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3852
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    .line 404
    invoke-super {p0}, Lcom/android/providers/calendar/SQLiteContentProvider;->onCreate()Z

    .line 405
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v2

    check-cast v2, Lcom/android/providers/calendar/CalendarDatabaseHelper;

    iput-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    .line 407
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->verifyAccounts()V

    .line 410
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 412
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 413
    const-string v2, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 414
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 421
    .local v0, c:Landroid/content/Context;
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 423
    new-instance v2, Lcom/android/providers/calendar/MetaData;

    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-direct {v2, v3}, Lcom/android/providers/calendar/MetaData;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    .line 424
    new-instance v2, Lcom/android/providers/calendar/CalendarCache;

    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-direct {v2, v3}, Lcom/android/providers/calendar/CalendarCache;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    .line 426
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->updateTimezoneDependentFields()V

    .line 428
    const/4 v2, 0x1

    return v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 683
    const-string v3, "CalendarProvider2"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 684
    const-string v3, "CalendarProvider2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "query uri - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 689
    new-instance v16, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct/range {v16 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 690
    const/4 v3, 0x0

    .line 691
    const/4 v11, 0x0

    .line 694
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 695
    packed-switch v9, :pswitch_data_0

    .line 825
    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 697
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;

    move-result-object v3

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/content/SyncStateContentProviderHelper;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 829
    :goto_0
    return-object v3

    .line 701
    :pswitch_2
    const-string v5, "view_events"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 702
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 703
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    move-object v10, v3

    move-object/from16 v8, p4

    :goto_1
    move-object/from16 v3, p0

    move-object/from16 v5, v16

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p5

    .line 829
    invoke-direct/range {v3 .. v11}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0

    .line 706
    :pswitch_3
    const-string v5, "view_events"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 707
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sEventsProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 708
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 709
    const-string v6, "_id=?"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v10, v3

    move-object v8, v5

    .line 710
    goto :goto_1

    .line 713
    :pswitch_4
    const-string v5, "view_events"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 714
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 715
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    move-object v10, v3

    move-object/from16 v8, p4

    .line 716
    goto :goto_1

    .line 718
    :pswitch_5
    const-string v5, "view_events"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 719
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sEventEntitiesProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 720
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 721
    const-string v6, "_id=?"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v10, v3

    move-object v8, v5

    .line 722
    goto/16 :goto_1

    .line 725
    :pswitch_6
    const-string v5, "Calendars"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 726
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountFromParameter(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;)V

    move-object v10, v3

    move-object/from16 v8, p4

    .line 727
    goto/16 :goto_1

    .line 729
    :pswitch_7
    const-string v5, "Calendars"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 730
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 731
    const-string v6, "_id=?"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v10, v3

    move-object v8, v5

    .line 732
    goto/16 :goto_1

    .line 738
    :pswitch_8
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 744
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v7

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v14

    .line 750
    const/16 v3, 0x10

    if-ne v9, v3, :cond_1

    const/4 v3, 0x1

    move v12, v3

    :goto_2
    const/4 v13, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v15

    move-object/from16 v3, p0

    move-object/from16 v4, v16

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    invoke-direct/range {v3 .. v15}, Lcom/android/providers/calendar/CalendarProvider2;->handleInstanceQuery(Landroid/database/sqlite/SQLiteQueryBuilder;JJ[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 739
    :catch_0
    move-exception v3

    .line 740
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse begin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 745
    :catch_1
    move-exception v3

    .line 746
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse end "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 750
    :cond_1
    const/4 v3, 0x0

    move v12, v3

    goto :goto_2

    .line 758
    :pswitch_9
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    .line 764
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v9

    .line 770
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v10

    move-object/from16 v3, p0

    move-object/from16 v4, v16

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/providers/calendar/CalendarProvider2;->handleEventDayQuery(Landroid/database/sqlite/SQLiteQueryBuilder;II[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v3

    goto/16 :goto_0

    .line 759
    :catch_2
    move-exception v3

    .line 760
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse start day "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 765
    :catch_3
    move-exception v3

    .line 766
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse end day "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 773
    :pswitch_a
    const-string v5, "Attendees, Events"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 774
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 775
    const-string v5, "Events._id=Attendees.event_id"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v10, v3

    move-object/from16 v8, p4

    .line 776
    goto/16 :goto_1

    .line 778
    :pswitch_b
    const-string v5, "Attendees, Events"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 779
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sAttendeesProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 780
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 781
    const-string v6, "Attendees._id=?  AND Events._id=Attendees.event_id"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v10, v3

    move-object v8, v5

    .line 782
    goto/16 :goto_1

    .line 784
    :pswitch_c
    const-string v5, "Reminders"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v10, v3

    move-object/from16 v8, p4

    .line 785
    goto/16 :goto_1

    .line 787
    :pswitch_d
    const-string v5, "Reminders, Events"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 788
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sRemindersProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 789
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 790
    const-string v6, "Reminders._id=? AND Events._id=Reminders.event_id"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v10, v3

    move-object v8, v5

    .line 791
    goto/16 :goto_1

    .line 793
    :pswitch_e
    const-string v5, "CalendarAlerts, view_events"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 794
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 795
    const-string v5, "view_events._id=CalendarAlerts.event_id"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v10, v3

    move-object/from16 v8, p4

    .line 797
    goto/16 :goto_1

    .line 799
    :pswitch_f
    const-string v3, "CalendarAlerts, view_events"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 800
    sget-object v3, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 801
    const-string v3, "view_events._id=CalendarAlerts.event_id"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 803
    const-string v3, "event_id,begin"

    move-object v10, v3

    move-object/from16 v8, p4

    .line 804
    goto/16 :goto_1

    .line 806
    :pswitch_10
    const-string v5, "CalendarAlerts, view_events"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 807
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarAlertsProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 808
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 809
    const-string v6, "view_events._id=CalendarAlerts.event_id AND CalendarAlerts._id=?"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v10, v3

    move-object v8, v5

    .line 811
    goto/16 :goto_1

    .line 813
    :pswitch_11
    const-string v5, "ExtendedProperties"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v10, v3

    move-object/from16 v8, p4

    .line 814
    goto/16 :goto_1

    .line 816
    :pswitch_12
    const-string v5, "ExtendedProperties"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 817
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 818
    const-string v6, "ExtendedProperties._id=?"

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v10, v3

    move-object v8, v5

    .line 819
    goto/16 :goto_1

    .line 821
    :pswitch_13
    const-string v5, "CalendarCache"

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 822
    sget-object v5, Lcom/android/providers/calendar/CalendarProvider2;->sCalendarCacheProjectionMap:Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object v10, v3

    move-object/from16 v8, p4

    .line 823
    goto/16 :goto_1

    .line 695
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_11
        :pswitch_12
        :pswitch_e
        :pswitch_10
        :pswitch_f
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
    .end packed-switch
.end method

.method scheduleNextAlarm(Z)V
    .locals 3
    .parameter "removeAlarms"

    .prologue
    const/4 v2, 0x1

    .line 3318
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3319
    :try_start_0
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmScheduler:Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;

    if-nez v1, :cond_0

    .line 3320
    new-instance v1, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;

    invoke-direct {v1, p0, p1}, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;-><init>(Lcom/android/providers/calendar/CalendarProvider2;Z)V

    sput-object v1, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmScheduler:Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;

    .line 3321
    sget-object v1, Lcom/android/providers/calendar/CalendarProvider2;->mAlarmScheduler:Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;->start()V

    .line 3328
    :goto_0
    monitor-exit v0

    .line 3329
    return-void

    .line 3323
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/providers/calendar/CalendarProvider2;->mRerunAlarmScheduler:Z

    .line 3326
    sget-boolean v1, Lcom/android/providers/calendar/CalendarProvider2;->mRemoveAlarmsOnRerun:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/android/providers/calendar/CalendarProvider2;->mRemoveAlarmsOnRerun:Z

    goto :goto_0

    .line 3328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3326
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method scheduleNextAlarmCheck(J)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const-string v5, "CalendarProvider2"

    .line 3285
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    .line 3286
    if-nez v0, :cond_1

    .line 3287
    const-string v0, "CalendarProvider2"

    const/4 v0, 0x6

    invoke-static {v5, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3288
    const-string v0, "CalendarProvider2"

    const-string v0, "scheduleNextAlarmCheck() cannot get AlarmManager"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    :cond_0
    :goto_0
    return-void

    .line 3292
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3293
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.providers.calendar.SCHEDULE_ALARM"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3294
    const-class v3, Lcom/android/providers/calendar/CalendarReceiver;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3295
    const/high16 v3, 0x2000

    invoke-static {v1, v6, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 3297
    if-eqz v3, :cond_2

    .line 3299
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3301
    :cond_2
    const/high16 v3, 0x1000

    invoke-static {v1, v6, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3304
    const-string v2, "CalendarProvider2"

    const/4 v2, 0x3

    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3305
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 3306
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 3307
    const-string v3, " %a, %b %d, %Y %I:%M%P"

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3308
    const-string v3, "CalendarProvider2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scheduleNextAlarmCheck at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    :cond_3
    invoke-virtual {v0, v6, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2852
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2853
    const-string v0, "CalendarProvider2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInTransaction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    :cond_0
    sget-object v0, Lcom/android/providers/calendar/CalendarProvider2;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 2860
    const-string v1, "caller_is_syncadapter"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v4

    .line 2864
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    .line 2866
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WHERE based updates not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2869
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 3154
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2871
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1, p3}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2, p4}, Lcom/android/internal/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3150
    :cond_2
    :goto_0
    return v0

    .line 2875
    :pswitch_2
    invoke-direct {p0, p1, p3}, Lcom/android/providers/calendar/CalendarProvider2;->appendAccountToSelection(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2879
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p4, v1}, Lcom/android/providers/calendar/CalendarProvider2;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2881
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v3, p2, v0, v1}, Lcom/android/internal/content/SyncStateContentProviderHelper;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2876
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2886
    :pswitch_3
    if-eqz p3, :cond_4

    .line 2887
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection not permitted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2889
    :cond_4
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 2890
    const-string v2, "sync_events"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 2891
    if-eqz v2, :cond_5

    .line 2892
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    :goto_2
    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->modifyCalendarSubscription(JZ)V

    .line 2895
    :cond_5
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Calendars"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2899
    const-string v1, "selected"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 2900
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    .line 2901
    const-wide/16 v1, -0x1

    invoke-direct {p0, v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->triggerAppWidgetUpdate(J)V

    goto/16 :goto_0

    .line 2892
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 2910
    :pswitch_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 2911
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    move-wide v2, v0

    .line 2931
    :goto_3
    if-nez v4, :cond_7

    .line 2932
    const-string v0, "_sync_dirty"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2938
    :cond_7
    const-string v0, "selfAttendeeStatus"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2939
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Updating selfAttendeeStatus in Events table is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2912
    :cond_8
    if-eqz v4, :cond_b

    .line 2913
    if-eqz p3, :cond_9

    const-string v0, "_id="

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2916
    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_3

    .line 2920
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/android/providers/calendar/CalendarProvider2;->fixAllDayTime(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2921
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2922
    const-string v0, "CalendarProvider2"

    const-string v1, "updateInTransaction: Caller is sync adapter. allDay is true but sec, min, hour were not 0."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    :cond_a
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "Events"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 2929
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2945
    :cond_c
    const-string v0, "htmlUri"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    if-nez v4, :cond_d

    .line 2946
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Updating htmlUri in Events table is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2950
    :cond_d
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 2953
    invoke-direct {p0, v0, p2}, Lcom/android/providers/calendar/CalendarProvider2;->doesStatusCancelUpdateMeanUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    .line 2954
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 2956
    invoke-direct {p0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->updateLastDate(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    .line 2957
    if-nez v1, :cond_f

    .line 2958
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2959
    const-string v0, "CalendarProvider2"

    const-string v1, "Could not update event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2965
    :cond_f
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_12

    .line 2966
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 2970
    :goto_4
    invoke-direct {p0, v5, v1}, Lcom/android/providers/calendar/CalendarProvider2;->fixAllDayTime(Landroid/net/Uri;Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2971
    const-string v5, "CalendarProvider2"

    const/4 v6, 0x5

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 2972
    const-string v5, "CalendarProvider2"

    const-string v6, "updateInTransaction: allDay is true but sec, min, hour were not 0."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    :cond_10
    if-eqz v0, :cond_13

    .line 2980
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "Events"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 2982
    if-lez v6, :cond_24

    .line 2983
    invoke-direct {p0, v2, v3, v1}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventRawTimesLocked(JLandroid/content/ContentValues;)V

    .line 2984
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->updateInstancesLocked(Landroid/content/ContentValues;JZLandroid/database/sqlite/SQLiteDatabase;)V

    .line 2986
    const-string v0, "dtstart"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2989
    const-string v0, "CalendarProvider2"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2990
    const-string v0, "CalendarProvider2"

    const-string v1, "updateInternal() changing event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    .line 2993
    invoke-direct {p0, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->triggerAppWidgetUpdate(J)V

    move v0, v6

    goto/16 :goto_0

    :cond_12
    move-object v5, p1

    .line 2968
    goto :goto_4

    .line 2997
    :cond_13
    const/4 v0, 0x1

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/android/providers/calendar/CalendarProvider2;->deleteEventInternal(JZZ)I

    move-result v0

    .line 2998
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    .line 2999
    invoke-direct {p0, v2, v3}, Lcom/android/providers/calendar/CalendarProvider2;->triggerAppWidgetUpdate(J)V

    goto/16 :goto_0

    .line 3004
    :pswitch_5
    if-eqz p3, :cond_14

    .line 3005
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection not permitted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3008
    :cond_14
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0, p2}, Lcom/android/providers/calendar/CalendarProvider2;->updateEventAttendeeStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 3010
    if-eqz v4, :cond_15

    .line 3011
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 3012
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Attendees"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3015
    :cond_15
    const-string v1, "Attendees"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->updateInTable(Ljava/lang/String;Landroid/content/ContentValues;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3020
    :pswitch_6
    if-eqz p3, :cond_16

    .line 3021
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection not permitted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3025
    :cond_16
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 3026
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "CalendarAlerts"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3032
    :pswitch_7
    iget-object v0, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CalendarAlerts"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3035
    :pswitch_8
    if-eqz p3, :cond_17

    .line 3036
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection not permitted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3038
    :cond_17
    if-eqz v4, :cond_19

    .line 3039
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 3040
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "Reminders"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3049
    :goto_5
    const-string v1, "CalendarProvider2"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3050
    const-string v1, "CalendarProvider2"

    const-string v2, "updateInternal() changing reminder"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    :cond_18
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    goto/16 :goto_0

    .line 3043
    :cond_19
    const-string v1, "Reminders"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->updateInTable(Ljava/lang/String;Landroid/content/ContentValues;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_5

    .line 3056
    :pswitch_9
    if-eqz p3, :cond_1a

    .line 3057
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection not permitted for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3059
    :cond_1a
    if-eqz v4, :cond_1b

    .line 3060
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 3061
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "ExtendedProperties"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3064
    :cond_1b
    const-string v1, "ExtendedProperties"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/calendar/CalendarProvider2;->updateInTable(Ljava/lang/String;Landroid/content/ContentValues;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 3071
    :pswitch_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    .line 3072
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3075
    :pswitch_b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarProvider2;->scheduleNextAlarm(Z)V

    .line 3076
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3080
    :pswitch_c
    if-nez p3, :cond_1c

    .line 3081
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection cannot be null for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3083
    :cond_1c
    const-string v0, "key=?"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 3084
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection should be key=? for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3087
    :cond_1d
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3089
    const-string v1, "timezoneInstancesPrevious"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3090
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid selection key: timezoneInstancesPrevious for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3095
    :cond_1e
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v1

    .line 3099
    iget-object v2, p0, Lcom/android/providers/calendar/SQLiteContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "CalendarCache"

    invoke-virtual {v2, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 3107
    if-lez v2, :cond_21

    .line 3109
    const-string v3, "timezoneType"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 3110
    const-string v0, "value"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3111
    if-eqz v0, :cond_20

    .line 3113
    const-string v3, "home"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 3114
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstancesPrevious()Ljava/lang/String;

    move-result-object v0

    .line 3116
    if-eqz v0, :cond_1f

    .line 3117
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3, v0}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstances(Ljava/lang/String;)V

    .line 3120
    :cond_1f
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 3121
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->regenerateInstancesTable()V

    .line 3148
    :cond_20
    :goto_6
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/calendar/CalendarProvider2;->triggerAppWidgetUpdate(J)V

    :cond_21
    move v0, v2

    .line 3150
    goto/16 :goto_0

    .line 3125
    :cond_22
    const-string v3, "auto"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3126
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 3127
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3, v0}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstances(Ljava/lang/String;)V

    .line 3128
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 3129
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->regenerateInstancesTable()V

    goto :goto_6

    .line 3135
    :cond_23
    const-string v3, "timezoneInstances"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3137
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->isHomeTimezone()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3138
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarCache;->readTimezoneInstances()Ljava/lang/String;

    move-result-object v0

    .line 3140
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2;->mCalendarCache:Lcom/android/providers/calendar/CalendarCache;

    invoke-virtual {v3, v0}, Lcom/android/providers/calendar/CalendarCache;->writeTimezoneInstancesPrevious(Ljava/lang/String;)V

    .line 3142
    if-eqz v1, :cond_20

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 3144
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;->regenerateInstancesTable()V

    goto :goto_6

    :cond_24
    move v0, v6

    goto/16 :goto_0

    .line 2869
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method protected updateTimezoneDependentFields()V
    .locals 2

    .prologue
    .line 437
    new-instance v0, Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;-><init>(Lcom/android/providers/calendar/CalendarProvider2;Lcom/android/providers/calendar/CalendarProvider2$1;)V

    .line 438
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 439
    return-void
.end method

.method protected verifyAccounts()V
    .locals 3

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 393
    invoke-virtual {p0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/providers/calendar/CalendarProvider2;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 394
    return-void
.end method
