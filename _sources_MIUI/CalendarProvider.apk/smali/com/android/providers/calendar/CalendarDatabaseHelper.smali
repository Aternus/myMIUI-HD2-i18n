.class Lcom/android/providers/calendar/CalendarDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CalendarDatabaseHelper.java"


# static fields
.field private static sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;


# instance fields
.field private mAttendeesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mCalendarAlertsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mCalendarsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private final mContext:Landroid/content/Context;

.field private mEventsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mEventsRawTimesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mExtendedPropertiesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mRemindersInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private final mSyncState:Lcom/android/internal/content/SyncStateContentProviderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 137
    const-string v1, "calendar.db"

    const/4 v2, 0x0

    const/16 v3, 0x65

    invoke-direct {p0, p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    .local v0, resources:Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mContext:Landroid/content/Context;

    .line 142
    new-instance v1, Lcom/android/internal/content/SyncStateContentProviderHelper;

    invoke-direct {v1}, Lcom/android/internal/content/SyncStateContentProviderHelper;-><init>()V

    iput-object v1, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/internal/content/SyncStateContentProviderHelper;

    .line 143
    return-void
.end method

.method private bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    const/4 v2, 0x0

    .line 208
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "Bootstrapping database"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/internal/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 212
    const-string v0, "CREATE TABLE Calendars (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_account_type TEXT,_sync_id TEXT,_sync_version TEXT,_sync_time TEXT,_sync_local_id INTEGER,_sync_dirty INTEGER,_sync_mark INTEGER,url TEXT,name TEXT,displayName TEXT,hidden INTEGER NOT NULL DEFAULT 0,color INTEGER,access_level INTEGER,selected INTEGER NOT NULL DEFAULT 1,sync_events INTEGER NOT NULL DEFAULT 0,location TEXT,timezone TEXT,ownerAccount TEXT, organizerCanRespond INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 237
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    const-string v0, "CREATE TABLE Events (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_account_type TEXT,_sync_id TEXT,_sync_version TEXT,_sync_time TEXT,_sync_local_id INTEGER,_sync_dirty INTEGER,_sync_mark INTEGER,calendar_id INTEGER NOT NULL,htmlUri TEXT,title TEXT,eventLocation TEXT,description TEXT,eventStatus INTEGER,selfAttendeeStatus INTEGER NOT NULL DEFAULT 0,commentsUri TEXT,dtstart INTEGER,dtend INTEGER,eventTimezone TEXT,duration TEXT,allDay INTEGER NOT NULL DEFAULT 0,visibility INTEGER NOT NULL DEFAULT 0,transparency INTEGER NOT NULL DEFAULT 0,hasAlarm INTEGER NOT NULL DEFAULT 0,hasExtendedProperties INTEGER NOT NULL DEFAULT 0,rrule TEXT,rdate TEXT,exrule TEXT,exdate TEXT,originalEvent TEXT,originalInstanceTime INTEGER,originalAllDay INTEGER,lastDate INTEGER,hasAttendeeData INTEGER NOT NULL DEFAULT 0,guestsCanModify INTEGER NOT NULL DEFAULT 0,guestsCanInviteOthers INTEGER NOT NULL DEFAULT 1,guestsCanSeeGuests INTEGER NOT NULL DEFAULT 1,organizer STRING,deleted INTEGER NOT NULL DEFAULT 0,dtstart2 INTEGER,dtend2 INTEGER,eventTimezone2 TEXT,syncAdapterData TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 291
    const-string v0, "CREATE TRIGGER events_insert AFTER INSERT ON Events BEGIN UPDATE Events SET _sync_account=(SELECT _sync_account FROM Calendars WHERE Calendars._id=new.calendar_id),_sync_account_type=(SELECT _sync_account_type FROM Calendars WHERE Calendars._id=new.calendar_id) WHERE Events._id=new._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 300
    const-string v0, "CREATE INDEX eventSyncAccountAndIdIndex ON Events (_sync_account_type, _sync_account, _sync_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 304
    const-string v0, "CREATE INDEX eventsCalendarIdIndex ON Events (calendar_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 308
    const-string v0, "CREATE TABLE EventsRawTimes (_id INTEGER PRIMARY KEY,event_id INTEGER NOT NULL,dtstart2445 TEXT,dtend2445 TEXT,originalInstanceTime2445 TEXT,lastDate2445 TEXT,UNIQUE (event_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 318
    const-string v0, "CREATE TABLE Instances (_id INTEGER PRIMARY KEY,event_id INTEGER,begin INTEGER,end INTEGER,startDay INTEGER,endDay INTEGER,startMinute INTEGER,endMinute INTEGER,UNIQUE (event_id, begin, end));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 330
    const-string v0, "CREATE INDEX instancesStartDayIndex ON Instances (startDay);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 334
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarMetaDataTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 336
    invoke-direct {p0, p1, v2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 338
    const-string v0, "CREATE TABLE Attendees (_id INTEGER PRIMARY KEY,event_id INTEGER,attendeeName TEXT,attendeeEmail TEXT,attendeeStatus INTEGER,attendeeRelationship INTEGER,attendeeType INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 348
    const-string v0, "CREATE INDEX attendeesEventIdIndex ON Attendees (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 352
    const-string v0, "CREATE TABLE Reminders (_id INTEGER PRIMARY KEY,event_id INTEGER,minutes INTEGER,method INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 360
    const-string v0, "CREATE INDEX remindersEventIdIndex ON Reminders (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 365
    const-string v0, "CREATE TABLE CalendarAlerts (_id INTEGER PRIMARY KEY,event_id INTEGER,begin INTEGER NOT NULL,end INTEGER NOT NULL,alarmTime INTEGER NOT NULL,creationTime INTEGER NOT NULL,receivedTime INTEGER NOT NULL,notifyTime INTEGER NOT NULL,state INTEGER NOT NULL,minutes INTEGER,UNIQUE (alarmTime, begin, event_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 379
    const-string v0, "CREATE INDEX calendarAlertsEventIdIndex ON CalendarAlerts (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 383
    const-string v0, "CREATE TABLE ExtendedProperties (_id INTEGER PRIMARY KEY,event_id INTEGER,name TEXT,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 390
    const-string v0, "CREATE INDEX extendedPropertiesEventIdIndex ON ExtendedProperties (event_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 395
    const-string v0, "CREATE TRIGGER events_cleanup_delete DELETE ON Events BEGIN DELETE FROM Instances WHERE event_id = old._id;DELETE FROM EventsRawTimes WHERE event_id = old._id;DELETE FROM Attendees WHERE event_id = old._id;DELETE FROM Reminders WHERE event_id = old._id;DELETE FROM CalendarAlerts WHERE event_id = old._id;DELETE FROM ExtendedProperties WHERE event_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 405
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 407
    const-string v0, "com.android.contacts"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v2, v0, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 409
    return-void
.end method

.method public static calendarEmailAddressFromFeedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x5

    const-string v4, "CalendarDatabaseHelper"

    .line 1257
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1258
    array-length v1, v0

    if-le v1, v2, :cond_0

    const-string v1, "feeds"

    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1260
    const/4 v1, 0x5

    :try_start_0
    aget-object v0, v0, v1

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1268
    :goto_0
    return-object v0

    .line 1261
    :catch_0
    move-exception v0

    .line 1262
    const-string v0, "CalendarDatabaseHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to url decode the email address in calendar "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 1263
    goto :goto_0

    .line 1267
    :cond_0
    const-string v0, "CalendarDatabaseHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to find the email address in calendar "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 1268
    goto :goto_0
.end method

.method private createCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 1
    .parameter "db"
    .parameter "oldTimezoneDbVersion"

    .prologue
    .line 423
    const-string v0, "DROP TABLE IF EXISTS CalendarCache;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 426
    const-string v0, "CREATE TABLE IF NOT EXISTS CalendarCache (_id INTEGER PRIMARY KEY,key TEXT NOT NULL,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 432
    invoke-direct {p0, p1, p2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->initCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 433
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->updateCalendarCacheTableTo101(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 434
    return-void
.end method

.method private createCalendarMetaDataTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 412
    const-string v0, "CREATE TABLE CalendarMetaData (_id INTEGER PRIMARY KEY,localTimezone TEXT,minInstance INTEGER,maxInstance INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method private static createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter

    .prologue
    .line 1182
    const-string v0, "DROP VIEW IF EXISTS view_events;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1183
    const-string v0, "SELECT Events._id AS _id,htmlUri,title,description,eventLocation,eventStatus,selfAttendeeStatus,commentsUri,dtstart,dtend,duration,eventTimezone,allDay,visibility,timezone,selected,access_level,transparency,color,hasAlarm,hasExtendedProperties,rrule,rdate,exrule,exdate,originalEvent,originalInstanceTime,originalAllDay,lastDate,hasAttendeeData,calendar_id,guestsCanInviteOthers,guestsCanModify,guestsCanSeeGuests,organizer,deleted,Events._sync_id AS _sync_id,Events._sync_version AS _sync_version,Events._sync_dirty AS _sync_dirty,Events._sync_account AS _sync_account,Events._sync_account_type AS _sync_account_type,Events._sync_time AS _sync_time,Events._sync_local_id AS _sync_local_id,Events._sync_mark AS _sync_mark,url,ownerAccount,sync_events FROM Events JOIN Calendars ON (Events.calendar_id=Calendars._id)"

    .line 1244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE VIEW view_events AS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1245
    return-void
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1129
    const-string v0, "DROP TABLE IF EXISTS Calendars;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1130
    const-string v0, "DROP TABLE IF EXISTS Events;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1131
    const-string v0, "DROP TABLE IF EXISTS EventsRawTimes;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1132
    const-string v0, "DROP TABLE IF EXISTS Instances;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1133
    const-string v0, "DROP TABLE IF EXISTS CalendarMetaData;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1134
    const-string v0, "DROP TABLE IF EXISTS CalendarCache;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1135
    const-string v0, "DROP TABLE IF EXISTS Attendees;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1136
    const-string v0, "DROP TABLE IF EXISTS Reminders;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1137
    const-string v0, "DROP TABLE IF EXISTS CalendarAlerts;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1138
    const-string v0, "DROP TABLE IF EXISTS ExtendedProperties;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1139
    return-void
.end method

.method private static fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 3
    .parameter "time"
    .parameter "timezone"
    .parameter "timeInMillis"

    .prologue
    const/4 v2, 0x0

    .line 605
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 606
    iget v0, p0, Landroid/text/format/Time;->hour:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/text/format/Time;->minute:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/text/format/Time;->second:I

    if-eqz v0, :cond_1

    .line 607
    :cond_0
    iput v2, p0, Landroid/text/format/Time;->hour:I

    .line 608
    iput v2, p0, Landroid/text/format/Time;->minute:I

    .line 609
    iput v2, p0, Landroid/text/format/Time;->second:I

    .line 610
    const/4 v0, 0x1

    .line 612
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/calendar/CalendarDatabaseHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 126
    const-class v0, Lcom/android/providers/calendar/CalendarDatabaseHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;->sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    if-nez v1, :cond_0

    .line 127
    new-instance v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/android/providers/calendar/CalendarDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;->sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    .line 129
    :cond_0
    sget-object v1, Lcom/android/providers/calendar/CalendarDatabaseHelper;->sSingleton:Lcom/android/providers/calendar/CalendarDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 5
    .parameter "db"
    .parameter "oldTimezoneDbVersion"

    .prologue
    const-string v4, "timezoneDatabaseVersion"

    const-string v3, "\'"

    .line 437
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 441
    .local v0, timezoneDbVersion:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT OR REPLACE INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneDatabaseVersion"

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneDatabaseVersion"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 446
    return-void

    .line 437
    .end local v0           #timezoneDbVersion:Ljava/lang/String;
    :cond_0
    const-string v1, "2009s"

    move-object v0, v1

    goto :goto_0
.end method

.method private recreateMetaDataAndInstances(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 597
    const-string v0, "DROP TABLE CalendarMetaData;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 598
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarMetaDataTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 601
    const-string v0, "DELETE FROM Instances;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method private updateCalendarCacheTableTo101(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    const-string v7, "INSERT INTO CalendarCache (_id, key, value) VALUES ("

    const-string v6, ","

    const-string v5, ");"

    const-string v4, "\',"

    const-string v3, "\'"

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneType"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 456
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, defaultTimezone:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstances"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstances"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT INTO CalendarCache (_id, key, value) VALUES ("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstancesPrevious"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timezoneInstancesPrevious"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method private upgradeResync(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter "db"

    .prologue
    .line 993
    const-string v5, "DELETE FROM _sync_state;"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 996
    const-string v5, "SELECT _sync_account,_sync_account_type,url FROM Calendars"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 999
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_1

    .line 1001
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1002
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1003
    .local v1, accountName:Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1004
    .local v2, accountType:Ljava/lang/String;
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    .local v0, account:Landroid/accounts/Account;
    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1006
    .local v3, calendarUrl:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p0, v0, v5, v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1009
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountName:Ljava/lang/String;
    .end local v2           #accountType:Ljava/lang/String;
    .end local v3           #calendarUrl:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1012
    :cond_1
    return-void
.end method

.method private upgradeSyncState(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    const-string v4, "CalendarDatabaseHelper"

    .line 174
    const-string v2, "SELECT version FROM _sync_state_metadata"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 178
    .local v0, version:J
    const-wide/16 v2, 0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 179
    const-string v2, "CalendarDatabaseHelper"

    const-string v2, "Upgrading calendar sync state table"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const-string v2, "CREATE TEMPORARY TABLE state_backup(_sync_account TEXT, _sync_account_type TEXT, data TEXT);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    const-string v2, "INSERT INTO state_backup SELECT _sync_account, _sync_account_type, data FROM _sync_state WHERE _sync_account is not NULL and _sync_account_type is not NULL;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 186
    const-string v2, "DROP TABLE _sync_state;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/internal/content/SyncStateContentProviderHelper;

    invoke-virtual {v2, p1}, Lcom/android/internal/content/SyncStateContentProviderHelper;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 188
    const-string v2, "INSERT INTO _sync_state(account_name,account_type,data) SELECT _sync_account, _sync_account_type, data from state_backup;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    const-string v2, "DROP TABLE state_backup;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    const-string v2, "CalendarDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgradeSyncState: current version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", skipping upgrade."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private upgradeToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 1108
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "Upgrading DeletedEvents table"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const-string v0, "ALTER TABLE DeletedEvents ADD COLUMN calendar_id INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1119
    const-string v0, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1120
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id = old._id;DELETE FROM DeletedEvents WHERE calendar_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1125
    const-string v0, "DROP TRIGGER IF EXISTS event_to_deleted"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1126
    return-void
.end method

.method private upgradeToVersion52(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter "db"

    .prologue
    .line 1055
    const-string v6, "ALTER TABLE Events ADD COLUMN originalAllDay INTEGER;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1073
    const-string v6, "SELECT _id,originalEvent FROM Events WHERE originalEvent IS NOT NULL"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1075
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_3

    .line 1077
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1078
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1079
    .local v2, id:J
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1082
    .local v4, originalEvent:Ljava/lang/String;
    const-string v6, "SELECT allDay FROM Events WHERE _sync_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1084
    .local v5, recur:Landroid/database/Cursor;
    if-eqz v5, :cond_0

    .line 1092
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1093
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1094
    .local v0, allDay:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE Events SET originalAllDay="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE _id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1098
    .end local v0           #allDay:I
    :cond_1
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1102
    .end local v2           #id:J
    .end local v4           #originalEvent:Ljava/lang/String;
    .end local v5           #recur:Landroid/database/Cursor;
    :catchall_0
    move-exception v6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6

    .line 1098
    .restart local v2       #id:J
    .restart local v4       #originalEvent:Ljava/lang/String;
    .restart local v5       #recur:Landroid/database/Cursor;
    :catchall_1
    move-exception v6

    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1102
    .end local v2           #id:J
    .end local v4           #originalEvent:Ljava/lang/String;
    .end local v5           #recur:Landroid/database/Cursor;
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1105
    :cond_3
    return-void
.end method

.method private upgradeToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 1042
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "Upgrading CalendarAlerts table"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const-string v0, "ALTER TABLE CalendarAlerts ADD COLUMN creationTime INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1044
    const-string v0, "ALTER TABLE CalendarAlerts ADD COLUMN receivedTime INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1045
    const-string v0, "ALTER TABLE CalendarAlerts ADD COLUMN notifyTime INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1046
    return-void
.end method

.method private upgradeToVersion54(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 1036
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "adding eventSyncAccountAndIdIndex"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const-string v0, "CREATE INDEX eventSyncAccountAndIdIndex ON Events (_sync_account, _sync_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1039
    return-void
.end method

.method private upgradeToVersion55(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 1015
    const-string v0, "ALTER TABLE Calendars ADD COLUMN _sync_account_type TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1016
    const-string v0, "ALTER TABLE Events ADD COLUMN _sync_account_type TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1017
    const-string v0, "ALTER TABLE DeletedEvents ADD COLUMN _sync_account_type TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1018
    const-string v0, "UPDATE Calendars SET _sync_account_type=\'com.google\' WHERE _sync_account IS NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1021
    const-string v0, "UPDATE Events SET _sync_account_type=\'com.google\' WHERE _sync_account IS NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1024
    const-string v0, "UPDATE DeletedEvents SET _sync_account_type=\'com.google\' WHERE _sync_account IS NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1027
    const-string v0, "CalendarDatabaseHelper"

    const-string v1, "re-creating eventSyncAccountAndIdIndex"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const-string v0, "DROP INDEX eventSyncAccountAndIdIndex"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1029
    const-string v0, "CREATE INDEX eventSyncAccountAndIdIndex ON Events (_sync_account_type, _sync_account, _sync_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1033
    return-void
.end method

.method private upgradeToVersion56(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .parameter "db"

    .prologue
    .line 955
    const-string v4, "ALTER TABLE Calendars ADD COLUMN ownerAccount TEXT;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 956
    const-string v4, "ALTER TABLE Events ADD COLUMN hasAttendeeData INTEGER;"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 961
    const-string v4, "UPDATE Events SET _sync_dirty=0, _sync_version=NULL, _sync_id=REPLACE(_sync_id, \'/private/full-selfattendance\', \'/private/full\'), commentsUri =REPLACE(commentsUri, \'/private/full-selfattendance\', \'/private/full\');"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 968
    const-string v4, "UPDATE Calendars SET url=REPLACE(url, \'/private/full-selfattendance\', \'/private/full\');"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 973
    const-string v4, "SELECT _id, url FROM Calendars"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 976
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 978
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 979
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 980
    .local v1, id:Ljava/lang/Long;
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 981
    .local v3, url:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->calendarEmailAddressFromFeedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 982
    .local v2, owner:Ljava/lang/String;
    const-string v4, "UPDATE Calendars SET ownerAccount=? WHERE _id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 986
    .end local v1           #id:Ljava/lang/Long;
    .end local v2           #owner:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 989
    :cond_1
    return-void
.end method

.method private upgradeToVersion57(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 941
    const-string v0, "ALTER TABLE Events ADD COLUMN guestsCanModify INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 943
    const-string v0, "ALTER TABLE Events ADD COLUMN guestsCanInviteOthers INTEGER NOT NULL DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 945
    const-string v0, "ALTER TABLE Events ADD COLUMN guestsCanSeeGuests INTEGER NOT NULL DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 947
    const-string v0, "ALTER TABLE Events ADD COLUMN organizer STRING;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 948
    const-string v0, "UPDATE Events SET organizer=(SELECT attendeeEmail FROM Attendees WHERE Attendees.event_id = Events._id AND Attendees.attendeeRelationship=2);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 952
    return-void
.end method

.method private upgradeToVersion59(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 928
    const-string v0, "DROP TABLE IF EXISTS BusyBits;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 929
    const-string v0, "CREATE TEMPORARY TABLE CalendarMetaData_Backup(_id,localTimezone,minInstance,maxInstance);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 931
    const-string v0, "INSERT INTO CalendarMetaData_Backup SELECT _id,localTimezone,minInstance,maxInstance FROM CalendarMetaData;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 933
    const-string v0, "DROP TABLE CalendarMetaData;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 934
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createCalendarMetaDataTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 935
    const-string v0, "INSERT INTO CalendarMetaData SELECT _id,localTimezone,minInstance,maxInstance FROM CalendarMetaData_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 937
    const-string v0, "DROP TABLE CalendarMetaData_Backup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 938
    return-void
.end method

.method private upgradeToVersion60(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 887
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeSyncState(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 888
    const-string v0, "DROP TRIGGER IF EXISTS calendar_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 889
    const-string v0, "CREATE TRIGGER calendar_cleanup DELETE ON Calendars BEGIN DELETE FROM Events WHERE calendar_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 893
    const-string v0, "ALTER TABLE Events ADD COLUMN deleted INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 894
    const-string v0, "DROP TRIGGER IF EXISTS events_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 895
    const-string v0, "CREATE TRIGGER events_insert AFTER INSERT ON Events BEGIN UPDATE Events SET _sync_account=(SELECT _sync_account FROM Calendars WHERE Calendars._id=new.calendar_id),_sync_account_type=(SELECT _sync_account_type FROM Calendars WHERE Calendars._id=new.calendar_id) WHERE Events._id=new._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 903
    const-string v0, "DROP TABLE IF EXISTS DeletedEvents;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 904
    const-string v0, "DROP TRIGGER IF EXISTS events_cleanup_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 905
    const-string v0, "CREATE TRIGGER events_cleanup_delete DELETE ON Events BEGIN DELETE FROM Instances WHERE event_id = old._id;DELETE FROM EventsRawTimes WHERE event_id = old._id;DELETE FROM Attendees WHERE event_id = old._id;DELETE FROM Reminders WHERE event_id = old._id;DELETE FROM CalendarAlerts WHERE event_id = old._id;DELETE FROM ExtendedProperties WHERE event_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 914
    const-string v0, "DROP TRIGGER IF EXISTS attendees_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 915
    const-string v0, "DROP TRIGGER IF EXISTS attendees_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 916
    const-string v0, "DROP TRIGGER IF EXISTS attendees_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 917
    const-string v0, "DROP TRIGGER IF EXISTS reminders_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 918
    const-string v0, "DROP TRIGGER IF EXISTS reminders_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 919
    const-string v0, "DROP TRIGGER IF EXISTS reminders_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 920
    const-string v0, "DROP TRIGGER IF EXISTS extended_properties_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 921
    const-string v0, "DROP TRIGGER IF EXISTS extended_properties_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 922
    const-string v0, "DROP TRIGGER IF EXISTS extended_properties_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 924
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 925
    return-void
.end method

.method private upgradeToVersion61(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 870
    const-string v0, "DROP TABLE IF EXISTS CalendarCache;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 873
    const-string v0, "CREATE TABLE IF NOT EXISTS CalendarCache (_id INTEGER PRIMARY KEY,key TEXT NOT NULL,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 879
    const-string v0, "INSERT INTO CalendarCache (key, value) VALUES (\'timezoneDatabaseVersion\',\'2009s\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 883
    return-void
.end method

.method private upgradeToVersion62(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 20
    .parameter "db"

    .prologue
    .line 802
    const-string v17, "ALTER TABLE Events ADD COLUMN dtstart2 INTEGER;"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 803
    const-string v17, "ALTER TABLE Events ADD COLUMN dtend2 INTEGER;"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 804
    const-string v17, "ALTER TABLE Events ADD COLUMN eventTimezone2 TEXT;"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 806
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    const/16 v17, 0x0

    const-string v18, "0"

    aput-object v18, v4, v17

    .line 808
    .local v4, allDayBit:[Ljava/lang/String;
    const-string v17, "UPDATE Events SET dtstart2=dtstart,dtend2=dtend,eventTimezone2=eventTimezone WHERE allDay=?;"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 814
    const/16 v17, 0x0

    const-string v18, "1"

    aput-object v18, v4, v17

    .line 815
    const-string v17, "SELECT Events._id,dtstart,dtend,eventTimezone,timezone FROM Events INNER JOIN Calendars WHERE Events.calendar_id=Calendars._id AND allDay=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 820
    .local v5, cursor:Landroid/database/Cursor;
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 821
    .local v15, oldTime:Landroid/text/format/Time;
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 823
    .local v14, newTime:Landroid/text/format/Time;
    if-eqz v5, :cond_2

    .line 825
    const/16 v17, 0x4

    :try_start_0
    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object v13, v0

    .line 826
    .local v13, newData:[Ljava/lang/String;
    const/16 v17, -0x1

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 827
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 828
    const/16 v17, 0x0

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 829
    .local v11, id:J
    const/16 v17, 0x1

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 830
    .local v8, dtstart:J
    const/16 v17, 0x2

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 831
    .local v6, dtend:J
    const/16 v17, 0x3

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 832
    .local v10, eTz:Ljava/lang/String;
    const/16 v17, 0x4

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 834
    .local v16, tz:Ljava/lang/String;
    if-nez v10, :cond_0

    .line 835
    const-string v10, "UTC"

    .line 839
    :cond_0
    invoke-virtual {v15, v10}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 840
    invoke-virtual {v15, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 841
    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 842
    move-object v0, v15

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v17, v0

    move-object v0, v15

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move-object v0, v15

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v19, v0

    move-object v0, v14

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    .line 843
    const/16 v17, 0x0

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 844
    const/16 v17, 0x0

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 847
    invoke-virtual {v15, v10}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 848
    invoke-virtual {v15, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 849
    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 850
    move-object v0, v15

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v17, v0

    move-object v0, v15

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v18, v0

    move-object v0, v15

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v19, v0

    move-object v0, v14

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    .line 851
    const/16 v17, 0x0

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 852
    const/16 v17, 0x0

    move-object v0, v14

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 854
    const/16 v17, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v17

    .line 855
    const/16 v17, 0x1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v17

    .line 856
    const/16 v17, 0x2

    aput-object v16, v13, v17

    .line 857
    const/16 v17, 0x3

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v17

    .line 858
    const-string v17, "UPDATE Events SET dtstart2=?,dtend2=?,eventTimezone2=? WHERE _id=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 864
    .end local v6           #dtend:J
    .end local v8           #dtstart:J
    .end local v10           #eTz:Ljava/lang/String;
    .end local v11           #id:J
    .end local v13           #newData:[Ljava/lang/String;
    .end local v16           #tz:Ljava/lang/String;
    :catchall_0
    move-exception v17

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v17

    .restart local v13       #newData:[Ljava/lang/String;
    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 867
    .end local v13           #newData:[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private upgradeToVersion63(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 797
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 798
    return-void
.end method

.method private upgradeToVersion64(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 792
    const-string v0, "ALTER TABLE Events ADD COLUMN syncAdapterData TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method private upgradeToVersion65(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 787
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->createEventsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 788
    return-void
.end method

.method private upgradeToVersion66(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 781
    const-string v0, "ALTER TABLE Calendars ADD COLUMN organizerCanRespond INTEGER NOT NULL DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method static upgradeToVersion69(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 15
    .parameter "db"

    .prologue
    .line 646
    const-string v0, "SELECT _id, dtstart, dtend, duration, dtstart2, dtend2, eventTimezone, eventTimezone2, rrule FROM Events WHERE allDay=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 649
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_a

    .line 658
    :try_start_0
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 661
    .local v7, time:Landroid/text/format/Time;
    const-string v1, "UTC"

    .line 662
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 663
    const/16 v1, 0x8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, rrule:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 665
    .local v6, id:Ljava/lang/Long;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 666
    .local v3, dtstart:Ljava/lang/Long;
    const/4 v4, 0x0

    .line 667
    .local v4, dtstart2:Ljava/lang/Long;
    const/4 v2, 0x6

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 668
    .local v8, timezone:Ljava/lang/String;
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 669
    .local v9, timezone2:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 671
    .local v5, duration:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .end local v1           #rrule:Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 674
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 675
    .local v1, dtend:Ljava/lang/Long;
    const/4 v2, 0x0

    .line 678
    .local v2, dtend2:Ljava/lang/Long;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 679
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    .end local v2           #dtend2:Ljava/lang/Long;
    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 680
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 683
    .restart local v2       #dtend2:Ljava/lang/Long;
    :cond_0
    const/4 v10, 0x0

    .line 684
    .local v10, update:Z
    const-string v11, "UTC"

    invoke-static {v8, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 685
    const/4 v10, 0x1

    .line 686
    const-string v8, "UTC"

    .line 689
    :cond_1
    invoke-virtual {v7, v8}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 690
    invoke-static {v7, v8, v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v3

    .end local v3           #dtstart:Ljava/lang/Long;
    or-int/2addr v10, v3

    .line 691
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 693
    .restart local v3       #dtstart:Ljava/lang/Long;
    invoke-virtual {v7, v8}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 694
    invoke-static {v7, v8, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v1

    .end local v1           #dtend:Ljava/lang/Long;
    or-int/2addr v10, v1

    .line 695
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 697
    .restart local v1       #dtend:Ljava/lang/Long;
    if-eqz v4, :cond_2

    .line 698
    invoke-virtual {v7, v9}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 699
    invoke-static {v7, v9, v4}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v4

    .end local v4           #dtstart2:Ljava/lang/Long;
    or-int/2addr v10, v4

    .line 700
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 703
    .restart local v4       #dtstart2:Ljava/lang/Long;
    :cond_2
    if-eqz v2, :cond_3

    .line 704
    invoke-virtual {v7, v9}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 705
    invoke-static {v7, v9, v2}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v2

    .end local v2           #dtend2:Ljava/lang/Long;
    or-int/2addr v10, v2

    .line 706
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 709
    .restart local v2       #dtend2:Ljava/lang/Long;
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 710
    const/4 v10, 0x1

    .line 713
    :cond_4
    if-eqz v10, :cond_5

    .line 715
    const-string v11, "UPDATE Events SET dtstart=?, dtend=?, dtstart2=?, dtend2=?, duration=?, eventTimezone=?, eventTimezone2=? WHERE _id=?"

    const/16 v12, 0x8

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    const/4 v13, 0x1

    aput-object v1, v12, v13

    const/4 v1, 0x2

    aput-object v4, v12, v1

    .end local v1           #dtend:Ljava/lang/Long;
    const/4 v1, 0x3

    aput-object v2, v12, v1

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-object v2, v12, v1

    .end local v2           #dtend2:Ljava/lang/Long;
    const/4 v1, 0x5

    aput-object v8, v12, v1

    const/4 v1, 0x6

    aput-object v9, v12, v1

    const/4 v1, 0x7

    aput-object v6, v12, v1

    invoke-virtual {p0, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move-object v2, v4

    .end local v4           #dtstart2:Ljava/lang/Long;
    .local v2, dtstart2:Ljava/lang/Long;
    move-object v1, v3

    .end local v3           #dtstart:Ljava/lang/Long;
    .local v1, dtstart:Ljava/lang/Long;
    move-object v3, v5

    .end local v5           #duration:Ljava/lang/String;
    .local v3, duration:Ljava/lang/String;
    move-object v4, v8

    .end local v8           #timezone:Ljava/lang/String;
    .local v4, timezone:Ljava/lang/String;
    move v5, v10

    .line 722
    .end local v10           #update:Z
    .local v5, update:Z
    goto/16 :goto_0

    .line 726
    .end local v1           #dtstart:Ljava/lang/Long;
    .end local v2           #dtstart2:Ljava/lang/Long;
    .local v3, dtstart:Ljava/lang/Long;
    .local v4, dtstart2:Ljava/lang/Long;
    .local v5, duration:Ljava/lang/String;
    .restart local v8       #timezone:Ljava/lang/String;
    :cond_6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 727
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 730
    .end local v4           #dtstart2:Ljava/lang/Long;
    .local v1, dtstart2:Ljava/lang/Long;
    :goto_1
    const/4 v2, 0x0

    .line 731
    .local v2, update:Z
    const-string v4, "UTC"

    invoke-static {v8, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 732
    const/4 v4, 0x1

    .line 733
    .end local v2           #update:Z
    .local v4, update:Z
    const-string v2, "UTC"

    .end local v8           #timezone:Ljava/lang/String;
    .local v2, timezone:Ljava/lang/String;
    move v14, v4

    .end local v4           #update:Z
    .local v14, update:Z
    move-object v4, v2

    .end local v2           #timezone:Ljava/lang/String;
    .local v4, timezone:Ljava/lang/String;
    move v2, v14

    .line 736
    .end local v14           #update:Z
    .local v2, update:Z
    :goto_2
    invoke-virtual {v7, v4}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 737
    invoke-static {v7, v4, v3}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v3

    .end local v3           #dtstart:Ljava/lang/Long;
    or-int/2addr v3, v2

    .line 738
    .end local v2           #update:Z
    .local v3, update:Z
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 740
    .local v2, dtstart:Ljava/lang/Long;
    if-eqz v1, :cond_c

    .line 741
    invoke-virtual {v7, v9}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 742
    invoke-static {v7, v9, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->fixAllDayTime(Landroid/text/format/Time;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v1

    .end local v1           #dtstart2:Ljava/lang/Long;
    or-int/2addr v3, v1

    .line 743
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .restart local v1       #dtstart2:Ljava/lang/Long;
    move v8, v3

    .end local v3           #update:Z
    .local v8, update:Z
    move-object v3, v1

    .line 746
    .end local v1           #dtstart2:Ljava/lang/Long;
    .local v3, dtstart2:Ljava/lang/Long;
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 748
    const-string v1, "P1D"

    .line 749
    .end local v5           #duration:Ljava/lang/String;
    .local v1, duration:Ljava/lang/String;
    const/4 v5, 0x1

    .line 762
    .end local v8           #update:Z
    .local v5, update:Z
    :goto_4
    if-eqz v5, :cond_7

    .line 764
    const-string v8, "UPDATE Events SET dtstart=?,dtend=?,dtstart2=?,dtend2=?,duration=?,eventTimezone=?, eventTimezone2=? WHERE _id=?"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v3, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x0

    aput-object v12, v10, v11

    const/4 v11, 0x4

    aput-object v1, v10, v11

    const/4 v11, 0x5

    aput-object v4, v10, v11

    const/4 v11, 0x6

    aput-object v9, v10, v11

    const/4 v9, 0x7

    aput-object v6, v10, v9

    .end local v9           #timezone2:Ljava/lang/String;
    invoke-virtual {p0, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    move-object v14, v3

    .end local v3           #dtstart2:Ljava/lang/Long;
    .local v14, dtstart2:Ljava/lang/Long;
    move-object v3, v1

    .end local v1           #duration:Ljava/lang/String;
    .local v3, duration:Ljava/lang/String;
    move-object v1, v2

    .end local v2           #dtstart:Ljava/lang/Long;
    .local v1, dtstart:Ljava/lang/Long;
    move-object v2, v14

    .end local v14           #dtstart2:Ljava/lang/Long;
    .local v2, dtstart2:Ljava/lang/Long;
    goto/16 :goto_0

    .line 751
    .end local v1           #dtstart:Ljava/lang/Long;
    .local v2, dtstart:Ljava/lang/Long;
    .local v3, dtstart2:Ljava/lang/Long;
    .local v5, duration:Ljava/lang/String;
    .restart local v8       #update:Z
    .restart local v9       #timezone2:Ljava/lang/String;
    :cond_8
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 753
    .local v1, len:I
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x50

    if-ne v10, v11, :cond_b

    const/4 v10, 0x1

    sub-int v10, v1, v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x53

    if-ne v10, v11, :cond_b

    .line 755
    const/4 v8, 0x1

    const/4 v10, 0x1

    sub-int/2addr v1, v10

    invoke-virtual {v5, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local v1           #len:I
    .end local v8           #update:Z
    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 756
    .local v1, seconds:I
    const v5, 0x15180

    add-int/2addr v1, v5

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    const v5, 0x15180

    div-int/2addr v1, v5

    .line 757
    .end local v5           #duration:Ljava/lang/String;
    .local v1, days:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "P"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #days:I
    const-string v5, "D"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 758
    .local v1, duration:Ljava/lang/String;
    const/4 v5, 0x1

    .local v5, update:Z
    goto :goto_4

    .line 773
    .end local v1           #duration:Ljava/lang/String;
    .end local v2           #dtstart:Ljava/lang/Long;
    .end local v3           #dtstart2:Ljava/lang/Long;
    .end local v4           #timezone:Ljava/lang/String;
    .end local v5           #update:Z
    .end local v6           #id:Ljava/lang/Long;
    .end local v9           #timezone2:Ljava/lang/String;
    :cond_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 776
    .end local v7           #time:Landroid/text/format/Time;
    :cond_a
    return-void

    .line 773
    :catchall_0
    move-exception p0

    .end local p0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0

    .local v1, len:I
    .restart local v2       #dtstart:Ljava/lang/Long;
    .restart local v3       #dtstart2:Ljava/lang/Long;
    .restart local v4       #timezone:Ljava/lang/String;
    .local v5, duration:Ljava/lang/String;
    .restart local v6       #id:Ljava/lang/Long;
    .restart local v7       #time:Landroid/text/format/Time;
    .restart local v8       #update:Z
    .restart local v9       #timezone2:Ljava/lang/String;
    .restart local p0
    :cond_b
    move-object v1, v5

    .end local v5           #duration:Ljava/lang/String;
    .local v1, duration:Ljava/lang/String;
    move v5, v8

    .end local v8           #update:Z
    .local v5, update:Z
    goto :goto_4

    .local v1, dtstart2:Ljava/lang/Long;
    .local v3, update:Z
    .local v5, duration:Ljava/lang/String;
    :cond_c
    move v8, v3

    .end local v3           #update:Z
    .restart local v8       #update:Z
    move-object v3, v1

    .end local v1           #dtstart2:Ljava/lang/Long;
    .local v3, dtstart2:Ljava/lang/Long;
    goto/16 :goto_3

    .end local v4           #timezone:Ljava/lang/String;
    .restart local v1       #dtstart2:Ljava/lang/Long;
    .local v2, update:Z
    .local v3, dtstart:Ljava/lang/Long;
    .local v8, timezone:Ljava/lang/String;
    :cond_d
    move-object v4, v8

    .end local v8           #timezone:Ljava/lang/String;
    .restart local v4       #timezone:Ljava/lang/String;
    goto/16 :goto_2

    .end local v1           #dtstart2:Ljava/lang/Long;
    .end local v2           #update:Z
    .local v4, dtstart2:Ljava/lang/Long;
    .restart local v8       #timezone:Ljava/lang/String;
    :cond_e
    move-object v1, v4

    .end local v4           #dtstart2:Ljava/lang/Long;
    .restart local v1       #dtstart2:Ljava/lang/Long;
    goto/16 :goto_1
.end method


# virtual methods
.method public attendeesInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mAttendeesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public calendarAlertsInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mCalendarAlertsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public calendarsInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mCalendarsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public eventsInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEventsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public eventsRawTimesReplace(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEventsRawTimesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->replace(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public extendedPropertiesInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mExtendedPropertiesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSyncState()Lcom/android/internal/content/SyncStateContentProviderHelper;
    .locals 1

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/internal/content/SyncStateContentProviderHelper;

    return-object v0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 1143
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1144
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    monitor-exit p0

    return-object v0

    .line 1143
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public instancesInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public instancesReplace(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->replace(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 205
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/internal/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/content/SyncStateContentProviderHelper;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 149
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Calendars"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mCalendarsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 150
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Events"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEventsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 151
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "EventsRawTimes"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mEventsRawTimesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 152
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Instances"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mInstancesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 153
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Attendees"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mAttendeesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 154
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "Reminders"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mRemindersInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 155
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "CalendarAlerts"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mCalendarAlertsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 156
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "ExtendedProperties"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mExtendedPropertiesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 158
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 10
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/16 v9, 0x42

    const/16 v8, 0x3b

    const/16 v7, 0x38

    const/16 v6, 0x37

    const/16 v5, 0x33

    .line 475
    const-string v2, "CalendarDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrading DB from version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/16 v2, 0x31

    if-ge p2, v2, :cond_1

    .line 478
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 479
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mSyncState:Lcom/android/internal/content/SyncStateContentProviderHelper;

    invoke-virtual {v2, p1}, Lcom/android/internal/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    if-lt p2, v8, :cond_1a

    if-gt p2, v9, :cond_1a

    const/4 v2, 0x1

    move v1, v2

    .line 492
    .local v1, recreateMetaDataAndInstances:Z
    :goto_1
    if-ge p2, v5, :cond_2

    .line 493
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 494
    const/16 p2, 0x33

    .line 496
    :cond_2
    if-ne p2, v5, :cond_3

    .line 497
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion52(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 498
    add-int/lit8 p2, p2, 0x1

    .line 500
    :cond_3
    const/16 v2, 0x34

    if-ne p2, v2, :cond_4

    .line 501
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 502
    add-int/lit8 p2, p2, 0x1

    .line 504
    :cond_4
    const/16 v2, 0x35

    if-ne p2, v2, :cond_5

    .line 505
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion54(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 506
    add-int/lit8 p2, p2, 0x1

    .line 508
    :cond_5
    const/16 v2, 0x36

    if-ne p2, v2, :cond_6

    .line 509
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion55(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 510
    add-int/lit8 p2, p2, 0x1

    .line 512
    :cond_6
    if-eq p2, v6, :cond_7

    if-ne p2, v7, :cond_8

    .line 514
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeResync(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 516
    :cond_8
    if-ne p2, v6, :cond_9

    .line 517
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion56(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 518
    add-int/lit8 p2, p2, 0x1

    .line 520
    :cond_9
    if-ne p2, v7, :cond_a

    .line 521
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion57(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 522
    add-int/lit8 p2, p2, 0x1

    .line 524
    :cond_a
    const/16 v2, 0x39

    if-ne p2, v2, :cond_b

    .line 526
    add-int/lit8 p2, p2, 0x1

    .line 528
    :cond_b
    const/16 v2, 0x3a

    if-ne p2, v2, :cond_c

    .line 529
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion59(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 530
    add-int/lit8 p2, p2, 0x1

    .line 532
    :cond_c
    if-ne p2, v8, :cond_d

    .line 533
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion60(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 534
    add-int/lit8 p2, p2, 0x1

    .line 536
    :cond_d
    const/16 v2, 0x3c

    if-ne p2, v2, :cond_e

    .line 537
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion61(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 538
    add-int/lit8 p2, p2, 0x1

    .line 540
    :cond_e
    const/16 v2, 0x3d

    if-ne p2, v2, :cond_f

    .line 541
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion62(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 542
    add-int/lit8 p2, p2, 0x1

    .line 544
    :cond_f
    const/16 v2, 0x3e

    if-ne p2, v2, :cond_10

    .line 545
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion63(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 546
    add-int/lit8 p2, p2, 0x1

    .line 548
    :cond_10
    const/16 v2, 0x3f

    if-ne p2, v2, :cond_11

    .line 549
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion64(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 550
    add-int/lit8 p2, p2, 0x1

    .line 552
    :cond_11
    const/16 v2, 0x40

    if-ne p2, v2, :cond_12

    .line 553
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion65(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 554
    add-int/lit8 p2, p2, 0x1

    .line 556
    :cond_12
    const/16 v2, 0x41

    if-ne p2, v2, :cond_13

    .line 557
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion66(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 558
    add-int/lit8 p2, p2, 0x1

    .line 560
    :cond_13
    if-ne p2, v9, :cond_14

    .line 562
    add-int/lit8 p2, p2, 0x1

    .line 564
    :cond_14
    if-eqz v1, :cond_15

    .line 565
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->recreateMetaDataAndInstances(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 567
    :cond_15
    const/16 v2, 0x43

    if-eq p2, v2, :cond_16

    const/16 v2, 0x44

    if-ne p2, v2, :cond_17

    .line 568
    :cond_16
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion69(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 569
    const/16 p2, 0x45

    .line 571
    :cond_17
    const/16 v2, 0x45

    if-ne p2, v2, :cond_18

    .line 572
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion100(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 573
    const/16 p2, 0x64

    .line 575
    :cond_18
    const/16 v2, 0x46

    if-ne p2, v2, :cond_19

    .line 577
    const/16 p2, 0x64

    .line 579
    :cond_19
    const/16 v2, 0x64

    if-ne p2, v2, :cond_0

    .line 580
    invoke-virtual {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->upgradeToVersion101(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    const/16 p2, 0x65

    goto/16 :goto_0

    .line 489
    .end local v1           #recreateMetaDataAndInstances:Z
    :cond_1a
    const/4 v2, 0x0

    move v1, v2

    goto/16 :goto_1

    .line 583
    .restart local v1       #recreateMetaDataAndInstances:Z
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 584
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "CalendarDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpgrade: SQLiteException, recreating db. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 586
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->bootstrapDB(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0
.end method

.method public remindersInsert(Landroid/content/ContentValues;)J
    .locals 2
    .parameter "values"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarDatabaseHelper;->mRemindersInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method scheduleSync(Landroid/accounts/Account;ZLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1162
    if-eqz p2, :cond_0

    .line 1163
    const-string v1, "upload"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1165
    :cond_0
    if-eqz p3, :cond_1

    .line 1166
    const-string v1, "feed"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1169
    :cond_1
    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1170
    return-void
.end method

.method upgradeToVersion100(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "db"

    .prologue
    const/4 v5, 0x0

    .line 622
    const-string v2, "SELECT value from CalendarCache WHERE key=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "timezoneDatabaseVersion"

    aput-object v4, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 625
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 626
    .local v1, oldTimezoneDbVersion:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 628
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 630
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 633
    const-string v2, "DELETE FROM CalendarCache;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 635
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->initCalendarCacheTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 636
    return-void

    .line 630
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method upgradeToVersion101(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 617
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->updateCalendarCacheTableTo101(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 618
    return-void
.end method
