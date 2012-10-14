.class public Lcom/android/calendar/EditEvent;
.super Landroid/app/Activity;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/EditEvent$QueryHandler;,
        Lcom/android/calendar/EditEvent$CalendarsAdapter;,
        Lcom/android/calendar/EditEvent$DateClickListener;,
        Lcom/android/calendar/EditEvent$DateListener;,
        Lcom/android/calendar/EditEvent$TimeClickListener;,
        Lcom/android/calendar/EditEvent$TimeListener;
    }
.end annotation


# static fields
.field private static final ATTENDEES_DELETE_PREFIX:Ljava/lang/String; = "event_id=? AND attendeeEmail IN ("

.field private static final ATTENDEES_INDEX_EMAIL:I = 0x1

.field private static final ATTENDEES_INDEX_NAME:I = 0x0

.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String; = null

.field private static final ATTENDEES_WHERE:Ljava/lang/String; = "event_id=? AND attendeeRelationship<>2"

.field private static final CALENDARS_INDEX_COLOR:I = 0x3

.field private static final CALENDARS_INDEX_DISPLAY_NAME:I = 0x1

.field private static final CALENDARS_INDEX_OWNER_ACCOUNT:I = 0x2

.field private static final CALENDARS_PROJECTION:[Ljava/lang/String; = null

.field private static final CALENDARS_WHERE:Ljava/lang/String; = "access_level>=500 AND sync_events=1"

.field private static final DAY_IN_SECONDS:I = 0x15180

.field private static final DEBUG:Z = false

.field private static final DOES_NOT_REPEAT:I = 0x0

.field public static final EVENT_ALL_DAY:Ljava/lang/String; = "allDay"

.field private static final EVENT_INDEX_ALL_DAY:I = 0x4

.field private static final EVENT_INDEX_CALENDAR_ID:I = 0x6

.field private static final EVENT_INDEX_DESCRIPTION:I = 0x2

.field private static final EVENT_INDEX_DTSTART:I = 0x7

.field private static final EVENT_INDEX_DURATION:I = 0x8

.field private static final EVENT_INDEX_EVENT_LOCATION:I = 0x3

.field private static final EVENT_INDEX_HAS_ALARM:I = 0x5

.field private static final EVENT_INDEX_HAS_ATTENDEE_DATA:I = 0xf

.field private static final EVENT_INDEX_ID:I = 0x0

.field private static final EVENT_INDEX_OWNER_ACCOUNT:I = 0xe

.field private static final EVENT_INDEX_RRULE:I = 0xa

.field private static final EVENT_INDEX_SYNC_ID:I = 0xb

.field private static final EVENT_INDEX_TIMEZONE:I = 0x9

.field private static final EVENT_INDEX_TITLE:I = 0x1

.field private static final EVENT_INDEX_TRANSPARENCY:I = 0xc

.field private static final EVENT_INDEX_VISIBILITY:I = 0xd

.field private static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field private static final MAX_REMINDERS:I = 0x5

.field private static final MENU_ADD_REMINDER:I = 0x1

.field private static final MENU_GROUP_HIDE_OPTIONS:I = 0x3

.field private static final MENU_GROUP_REMINDER:I = 0x1

.field private static final MENU_GROUP_SHOW_OPTIONS:I = 0x2

.field private static final MENU_HIDE_EXTRA_OPTIONS:I = 0x3

.field private static final MENU_SHOW_EXTRA_OPTIONS:I = 0x2

.field private static final MODIFY_ALL:I = 0x2

.field private static final MODIFY_ALL_FOLLOWING:I = 0x3

.field private static final MODIFY_SELECTED:I = 0x1

.field private static final MODIFY_UNINITIALIZED:I = 0x0

.field private static final REMINDERS_INDEX_MINUTES:I = 0x1

.field private static final REMINDERS_PROJECTION:[Ljava/lang/String; = null

.field private static final REMINDERS_WHERE:Ljava/lang/String; = "event_id=%d AND (method=1 OR method=0)"

.field private static final REPEATS_CUSTOM:I = 0x7

.field private static final REPEATS_DAILY:I = 0x1

.field private static final REPEATS_EVERY_WEEKDAY:I = 0x2

.field private static final REPEATS_MONTHLY_ON_DAY:I = 0x5

.field private static final REPEATS_MONTHLY_ON_DAY_COUNT:I = 0x4

.field private static final REPEATS_WEEKLY_ON_DAY:I = 0x3

.field private static final REPEATS_YEARLY:I = 0x6

.field private static final TAG:Ljava/lang/String; = "EditEvent"

.field private static mF:Ljava/util/Formatter;

.field private static mSB:Ljava/lang/StringBuilder;

.field private static sRecipientFilters:[Landroid/text/InputFilter;


# instance fields
.field private mAddressAdapter:Lcom/android/calendar/EmailAddressAdapter;

.field private mAllDayCheckBox:Landroid/widget/CheckBox;

.field private mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

.field private mAvailabilitySpinner:Landroid/widget/Spinner;

.field private mCalendarsCursor:Landroid/database/Cursor;

.field private mCalendarsQueryComplete:Z

.field private mCalendarsSpinner:Landroid/widget/Spinner;

.field private mDefaultReminderMinutes:I

.field private mDeleteButton:Landroid/widget/Button;

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mDescriptionTextView:Landroid/widget/TextView;

.field private mDiscardButton:Landroid/widget/Button;

.field private mEmailValidator:Lcom/android/common/Rfc822Validator;

.field private mEndDateButton:Landroid/widget/Button;

.field private mEndDateHome:Landroid/widget/TextView;

.field private mEndTime:Landroid/text/format/Time;

.field private mEndTimeButton:Landroid/widget/Button;

.field private mEndTimeHome:Landroid/widget/TextView;

.field private mEventCursor:Landroid/database/Cursor;

.field private mEventRecurrence:Landroid/pim/EventRecurrence;

.field private mExtraOptions:Landroid/widget/LinearLayout;

.field private mFirstDayOfWeek:I

.field private mHasAttendeeData:Z

.field private mInitialValues:Landroid/content/ContentValues;

.field private mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

.field private mLocationTextView:Landroid/widget/TextView;

.field private mModification:I

.field private mNoCalendarsDialog:Landroid/app/AlertDialog;

.field private mOriginalAttendees:Ljava/lang/String;

.field private mOriginalMinutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOwnerAccount:Ljava/lang/String;

.field private mQueryHandler:Lcom/android/calendar/EditEvent$QueryHandler;

.field private mRecurrenceIndexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRemindersContainer:Landroid/widget/LinearLayout;

.field private mRemindersSeparator:Landroid/view/View;

.field private mRepeatsSpinner:Landroid/widget/Spinner;

.field private mRrule:Ljava/lang/String;

.field private mSaveAfterQueryComplete:Z

.field private mSaveButton:Landroid/widget/Button;

.field private mStartDateButton:Landroid/widget/Button;

.field private mStartDateHome:Landroid/widget/TextView;

.field private mStartTime:Landroid/text/format/Time;

.field private mStartTimeButton:Landroid/widget/Button;

.field private mStartTimeHome:Landroid/widget/TextView;

.field private mSyncId:Ljava/lang/String;

.field private mTimezone:Ljava/lang/String;

.field private mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

.field private mTimezoneButton:Landroid/widget/Button;

.field private mTimezoneDialog:Landroid/app/AlertDialog;

.field private mTimezoneFooterView:Landroid/widget/TextView;

.field private mTimezoneTextView:Landroid/widget/TextView;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field private mUri:Landroid/net/Uri;

.field private mVisibilitySpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "_id"

    .line 121
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "description"

    aput-object v1, v0, v5

    const-string v1, "eventLocation"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "transparency"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "visibility"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "hasAttendeeData"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/EditEvent;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 156
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "ownerAccount"

    aput-object v1, v0, v5

    const-string v1, "color"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/calendar/EditEvent;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 168
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "minutes"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/EditEvent;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 177
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "attendeeName"

    aput-object v1, v0, v3

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/EditEvent;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    .line 279
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/calendar/EditEvent;->mF:Ljava/util/Formatter;

    .line 954
    new-array v0, v4, [Landroid/text/InputFilter;

    new-instance v1, Lcom/android/common/Rfc822InputFilter;

    invoke-direct {v1}, Lcom/android/common/Rfc822InputFilter;-><init>()V

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/calendar/EditEvent;->sRecipientFilters:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    .line 240
    const-string v0, ""

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/lang/String;

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/EditEvent;->mHasAttendeeData:Z

    .line 245
    new-instance v0, Landroid/pim/EventRecurrence;

    invoke-direct {v0}, Landroid/pim/EventRecurrence;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mRecurrenceIndexes:Ljava/util/ArrayList;

    .line 272
    iput v1, p0, Lcom/android/calendar/EditEvent;->mModification:I

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/EditEvent;->mUpdateTZ:Ljava/lang/Runnable;

    .line 521
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/EditEvent;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/calendar/EditEvent;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/calendar/EditEvent;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/calendar/EditEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mSaveAfterQueryComplete:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/calendar/EditEvent;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/calendar/EditEvent;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mCalendarsSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/calendar/EditEvent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/calendar/EditEvent;->mCalendarsQueryComplete:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/calendar/EditEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->save()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/calendar/EditEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/calendar/EditEvent;->mHasAttendeeData:Z

    return v0
.end method

.method static synthetic access$1700(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-static {p0}, Lcom/android/calendar/EditEvent;->extractDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/calendar/EditEvent;)Lcom/android/common/Rfc822Validator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/calendar/EditEvent;Lcom/android/common/Rfc822Validator;)Lcom/android/common/Rfc822Validator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/calendar/EditEvent;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/calendar/EditEvent;)Landroid/widget/MultiAutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/calendar/EditEvent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->addReminder()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/calendar/EditEvent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/android/calendar/EditEvent;->mModification:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/calendar/EditEvent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Lcom/android/calendar/EditEvent;->mModification:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/calendar/EditEvent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mSyncId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/calendar/EditEvent;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRepeatsSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/calendar/EditEvent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->showTimezoneDialog()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/calendar/EditEvent;Landroid/widget/ListView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/calendar/EditEvent;->showAllTimezone(Landroid/widget/ListView;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/calendar/EditEvent;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneFooterView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/calendar/EditEvent;Landroid/widget/TextView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/EditEvent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->updateHomeTime()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/calendar/EditEvent;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/EditEvent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->populateRepeats()V

    return-void
.end method

.method static addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 5
    .parameter "context"
    .parameter
    .parameter
    .parameter "minutes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1489
    .local p1, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, labels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1490
    .local v1, index:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 1509
    .end local p0
    :goto_0
    return-void

    .line 1497
    .restart local p0
    :cond_0
    const/4 v4, 0x0

    invoke-static {p0, p3, v4}, Lcom/android/calendar/EditEvent;->constructReminderLabel(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    .line 1498
    .local v2, label:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1499
    .local v3, len:I
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 1500
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge p3, v4, :cond_1

    .line 1501
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1502
    invoke-virtual {p2, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1499
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1507
    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1508
    invoke-virtual {p2, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private addRecurrenceRule(Landroid/content/ContentValues;)V
    .locals 14
    .parameter "values"

    .prologue
    .line 2093
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->updateRecurrenceRule()V

    .line 2095
    iget-object v10, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2113
    :goto_0
    return-void

    .line 2099
    :cond_0
    const-string v10, "rrule"

    iget-object v11, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    invoke-virtual {p1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2100
    iget-object v10, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 2101
    .local v3, end:J
    iget-object v10, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 2104
    .local v8, start:J
    iget-object v10, p0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 2105
    .local v5, isAllDay:Z
    if-eqz v5, :cond_1

    .line 2106
    sub-long v10, v3, v8

    const-wide/32 v12, 0x5265c00

    add-long/2addr v10, v12

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x5265c00

    div-long v0, v10, v12

    .line 2107
    .local v0, days:J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "P"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "D"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2112
    .end local v0           #days:J
    .local v2, duration:Ljava/lang/String;
    :goto_1
    const-string v10, "duration"

    invoke-virtual {p1, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2109
    .end local v2           #duration:Ljava/lang/String;
    :cond_1
    sub-long v10, v3, v8

    const-wide/16 v12, 0x3e8

    div-long v6, v10, v12

    .line 2110
    .local v6, seconds:J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "P"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "S"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #duration:Ljava/lang/String;
    goto :goto_1
.end method

.method private addReminder()V
    .locals 6

    .prologue
    .line 1167
    iget v0, p0, Lcom/android/calendar/EditEvent;->mDefaultReminderMinutes:I

    if-nez v0, :cond_0

    .line 1168
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    const/16 v5, 0xa

    move-object v0, p0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/EditEvent;->addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z

    .line 1174
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->updateRemindersVisibility()V

    .line 1175
    return-void

    .line 1171
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/calendar/EditEvent;->mDefaultReminderMinutes:I

    move-object v0, p0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/EditEvent;->addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z

    goto :goto_0
.end method

.method static addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z
    .locals 4
    .parameter "activity"
    .parameter "listener"
    .parameter
    .parameter
    .parameter
    .parameter "minutes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View$OnClickListener;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 1459
    .local p2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    .local p3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, labels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 1460
    const/4 p0, 0x0

    .line 1484
    .end local p0
    :goto_0
    return p0

    .line 1463
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1464
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f0c0042

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1465
    .local v1, parent:Landroid/widget/LinearLayout;
    const v2, 0x7f030010

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1466
    .local v2, reminderItem:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1468
    const v0, 0x7f0c0047

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .end local v0           #inflater:Landroid/view/LayoutInflater;
    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 1469
    .local v3, spinner:Landroid/widget/Spinner;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1470
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f080036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v1           #parent:Landroid/widget/LinearLayout;
    move-result-object v0

    .end local v0           #res:Landroid/content/res/Resources;
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 1471
    const v1, 0x1090008

    .line 1472
    .local v1, resource:I
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p0, v1, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1473
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const p0, 0x1090009

    invoke-virtual {v0, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1474
    .end local p0
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1477
    const p0, 0x7f0c0048

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    .line 1478
    .local p0, reminderRemoveButton:Landroid/widget/ImageButton;
    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1480
    invoke-static {p3, p5}, Lcom/android/calendar/EditEvent;->findMinutesInReminderList(Ljava/util/ArrayList;I)I

    move-result p0

    .line 1481
    .local p0, index:I
    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1482
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1484
    const/4 p0, 0x1

    goto :goto_0
.end method

.method private checkTimeDependentFields(Landroid/content/ContentValues;)V
    .locals 23
    .parameter "values"

    .prologue
    .line 1957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "beginTime"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 1958
    .local v13, oldBegin:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "endTime"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 1959
    .local v15, oldEnd:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "allDay"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    if-eqz v21, :cond_1

    const/16 v21, 0x1

    move/from16 v12, v21

    .line 1960
    .local v12, oldAllDay:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "rrule"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1961
    .local v17, oldRrule:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object/from16 v21, v0

    const-string v22, "eventTimezone"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1963
    .local v20, oldTimezone:Ljava/lang/String;
    const-string v21, "dtstart"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1964
    .local v4, newBegin:J
    const-string v21, "dtend"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1965
    .local v6, newEnd:J
    const-string v21, "allDay"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    if-eqz v21, :cond_2

    const/16 v21, 0x1

    move/from16 v3, v21

    .line 1966
    .local v3, newAllDay:Z
    :goto_1
    const-string v21, "rrule"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1967
    .local v8, newRrule:Ljava/lang/String;
    const-string v21, "eventTimezone"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1970
    .local v9, newTimezone:Ljava/lang/String;
    cmp-long v21, v13, v4

    if-nez v21, :cond_3

    cmp-long v21, v15, v6

    if-nez v21, :cond_3

    if-ne v12, v3, :cond_3

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v0, v20

    move-object v1, v9

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 1973
    const-string v21, "dtstart"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1974
    const-string v21, "dtend"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1975
    const-string v21, "duration"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1976
    const-string v21, "allDay"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1977
    const-string v21, "rrule"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1978
    const-string v21, "eventTimezone"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2002
    :cond_0
    :goto_2
    return-void

    .line 1959
    .end local v3           #newAllDay:Z
    .end local v4           #newBegin:J
    .end local v6           #newEnd:J
    .end local v8           #newRrule:Ljava/lang/String;
    .end local v9           #newTimezone:Ljava/lang/String;
    .end local v12           #oldAllDay:Z
    .end local v17           #oldRrule:Ljava/lang/String;
    .end local v20           #oldTimezone:Ljava/lang/String;
    :cond_1
    const/16 v21, 0x0

    move/from16 v12, v21

    goto/16 :goto_0

    .line 1965
    .restart local v4       #newBegin:J
    .restart local v6       #newEnd:J
    .restart local v12       #oldAllDay:Z
    .restart local v17       #oldRrule:Ljava/lang/String;
    .restart local v20       #oldTimezone:Ljava/lang/String;
    :cond_2
    const/16 v21, 0x0

    move/from16 v3, v21

    goto :goto_1

    .line 1982
    .restart local v3       #newAllDay:Z
    .restart local v8       #newRrule:Ljava/lang/String;
    .restart local v9       #newTimezone:Ljava/lang/String;
    :cond_3
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 1993
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/EditEvent;->mModification:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 1994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x7

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1995
    .local v18, oldStartMillis:J
    cmp-long v21, v13, v4

    if-eqz v21, :cond_4

    .line 1997
    sub-long v10, v4, v13

    .line 1998
    .local v10, offset:J
    add-long v18, v18, v10

    .line 2000
    .end local v10           #offset:J
    :cond_4
    const-string v21, "dtstart"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2
.end method

.method private clearRecurrence()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2116
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput-object v1, v0, Landroid/pim/EventRecurrence;->byday:[I

    .line 2117
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput-object v1, v0, Landroid/pim/EventRecurrence;->bydayNum:[I

    .line 2118
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v2, v0, Landroid/pim/EventRecurrence;->bydayCount:I

    .line 2119
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput-object v1, v0, Landroid/pim/EventRecurrence;->bymonth:[I

    .line 2120
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v2, v0, Landroid/pim/EventRecurrence;->bymonthCount:I

    .line 2121
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput-object v1, v0, Landroid/pim/EventRecurrence;->bymonthday:[I

    .line 2122
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v2, v0, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    .line 2123
    return-void
.end method

.method static constructReminderLabel(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "minutes"
    .parameter "abbrev"

    .prologue
    .line 1533
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1536
    .local v2, resources:Landroid/content/res/Resources;
    rem-int/lit8 v4, p1, 0x3c

    if-eqz v4, :cond_1

    .line 1537
    move v3, p1

    .line 1538
    .local v3, value:I
    if-eqz p2, :cond_0

    .line 1539
    const v1, 0x7f0a0001

    .line 1551
    .local v1, resId:I
    :goto_0
    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 1552
    .local v0, format:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1541
    .end local v0           #format:Ljava/lang/String;
    .end local v1           #resId:I
    :cond_0
    const/high16 v1, 0x7f0a

    .restart local v1       #resId:I
    goto :goto_0

    .line 1543
    .end local v1           #resId:I
    .end local v3           #value:I
    :cond_1
    rem-int/lit16 v4, p1, 0x5a0

    if-eqz v4, :cond_2

    .line 1544
    div-int/lit8 v3, p1, 0x3c

    .line 1545
    .restart local v3       #value:I
    const v1, 0x7f0a0002

    .restart local v1       #resId:I
    goto :goto_0

    .line 1547
    .end local v1           #resId:I
    .end local v3           #value:I
    :cond_2
    div-int/lit16 v3, p1, 0x5a0

    .line 1548
    .restart local v3       #value:I
    const v1, 0x7f0a0003

    .restart local v1       #resId:I
    goto :goto_0
.end method

.method private static extractDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "email"

    .prologue
    .line 618
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 619
    .local v0, separator:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 620
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 622
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static findMinutesInReminderList(Ljava/util/ArrayList;I)I
    .locals 4
    .parameter
    .parameter "minutes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 1519
    .local p0, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1520
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1522
    const-string v1, "Cal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find minutes ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") in list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    const/4 v1, 0x0

    .line 1525
    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method private getAddressesFromList(Landroid/widget/MultiAutoCompleteTextView;)Ljava/util/LinkedHashSet;
    .locals 6
    .parameter "list"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/MultiAutoCompleteTextView;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 917
    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->clearComposingText()V

    .line 918
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 919
    .local v2, addresses:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 923
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 924
    .local v1, addressIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/text/util/Rfc822Token;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 925
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 926
    .local v0, address:Landroid/text/util/Rfc822Token;
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/common/Rfc822Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 927
    const-string v3, "EditEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping invalid attendee email address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 931
    .end local v0           #address:Landroid/text/util/Rfc822Token;
    :cond_1
    return-object v2
.end method

.method private getContentValuesFromUi()Landroid/content/ContentValues;
    .locals 14

    .prologue
    .line 2203
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 2204
    .local v9, title:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v12}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 2205
    .local v5, isAllDay:Z
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 2206
    .local v6, location:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2208
    .local v2, description:Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2213
    .local v10, values:Landroid/content/ContentValues;
    if-eqz v5, :cond_2

    .line 2216
    const-string v12, "UTC"

    iput-object v12, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    .line 2217
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v13, 0x0

    iput v13, v12, Landroid/text/format/Time;->hour:I

    .line 2218
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v13, 0x0

    iput v13, v12, Landroid/text/format/Time;->minute:I

    .line 2219
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v13, 0x0

    iput v13, v12, Landroid/text/format/Time;->second:I

    .line 2220
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v13, v12, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2221
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v7

    .line 2223
    .local v7, startMillis:J
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v13, 0x0

    iput v13, v12, Landroid/text/format/Time;->hour:I

    .line 2224
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v13, 0x0

    iput v13, v12, Landroid/text/format/Time;->minute:I

    .line 2225
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v13, 0x0

    iput v13, v12, Landroid/text/format/Time;->second:I

    .line 2226
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v13, v12, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v13, v13, 0x1

    iput v13, v12, Landroid/text/format/Time;->monthDay:I

    .line 2227
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v13, v12, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2228
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 2230
    .local v3, endMillis:J
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-nez v12, :cond_1

    .line 2232
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v12}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v0

    .line 2250
    .local v0, calendarId:J
    :goto_0
    const-string v12, "calendar_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2251
    const-string v12, "eventTimezone"

    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    const-string v12, "title"

    invoke-virtual {v10, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    const-string v12, "allDay"

    if-eqz v5, :cond_4

    const/4 v13, 0x1

    :goto_1
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2254
    const-string v12, "dtstart"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2255
    const-string v12, "dtend"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2256
    const-string v12, "description"

    invoke-virtual {v10, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    const-string v12, "eventLocation"

    invoke-virtual {v10, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    const-string v12, "transparency"

    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mAvailabilitySpinner:Landroid/widget/Spinner;

    invoke-virtual {v13}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2260
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mVisibilitySpinner:Landroid/widget/Spinner;

    invoke-virtual {v12}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v11

    .line 2261
    .local v11, visibility:I
    if-lez v11, :cond_0

    .line 2263
    add-int/lit8 v11, v11, 0x1

    .line 2265
    :cond_0
    const-string v12, "visibility"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2267
    return-object v10

    .line 2234
    .end local v0           #calendarId:J
    .end local v11           #visibility:I
    :cond_1
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v13, "calendar_id"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .restart local v0       #calendarId:J
    goto :goto_0

    .line 2237
    .end local v0           #calendarId:J
    .end local v3           #endMillis:J
    .end local v7           #startMillis:J
    :cond_2
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v12, :cond_3

    .line 2238
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v13, "calendar_id"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2244
    .restart local v0       #calendarId:J
    :goto_2
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v13, v12, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2245
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget-object v13, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v13, v12, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2246
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    .line 2247
    .restart local v7       #startMillis:J
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .restart local v3       #endMillis:J
    goto/16 :goto_0

    .line 2241
    .end local v0           #calendarId:J
    .end local v3           #endMillis:J
    .end local v7           #startMillis:J
    :cond_3
    iget-object v12, p0, Lcom/android/calendar/EditEvent;->mCalendarsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v12}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v0

    .restart local v0       #calendarId:J
    goto :goto_2

    .line 2253
    .restart local v3       #endMillis:J
    .restart local v7       #startMillis:J
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_1
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    .line 957
    const-string v6, "title"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 958
    .local v4, title:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 959
    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 962
    :cond_0
    const-string v6, "eventLocation"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 963
    .local v2, location:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 964
    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 967
    :cond_1
    const-string v6, "description"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 968
    .local v1, description:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 969
    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 972
    :cond_2
    const-string v6, "transparency"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 973
    .local v0, availability:I
    if-eq v0, v7, :cond_3

    .line 974
    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mAvailabilitySpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 977
    :cond_3
    const-string v6, "visibility"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 978
    .local v5, visibility:I
    if-eq v5, v7, :cond_4

    .line 979
    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mVisibilitySpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 982
    :cond_4
    const-string v6, "rrule"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 983
    .local v3, rrule:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 984
    iput-object v3, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    .line 985
    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    invoke-virtual {v6, v3}, Landroid/pim/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 987
    :cond_5
    return-void
.end method

.method private initMultiAutoCompleteTextView(I)Landroid/widget/MultiAutoCompleteTextView;
    .locals 2
    .parameter "res"

    .prologue
    .line 936
    invoke-virtual {p0, p1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    .line 937
    .local v0, list:Landroid/widget/MultiAutoCompleteTextView;
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mAddressAdapter:Lcom/android/calendar/EmailAddressAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 938
    new-instance v1, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v1}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 939
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 942
    sget-object v1, Lcom/android/calendar/EditEvent;->sRecipientFilters:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 944
    return-object v0
.end method

.method private isCustomRecurrence()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2291
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget-object v0, v0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget v0, v0, Landroid/pim/EventRecurrence;->interval:I

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 2320
    :goto_0
    return v0

    .line 2295
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget v0, v0, Landroid/pim/EventRecurrence;->freq:I

    if-nez v0, :cond_2

    move v0, v1

    .line 2296
    goto :goto_0

    .line 2299
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget v0, v0, Landroid/pim/EventRecurrence;->freq:I

    packed-switch v0, :pswitch_data_0

    :cond_3
    move v0, v2

    .line 2320
    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 2301
    goto :goto_0

    .line 2303
    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    invoke-virtual {v0}, Landroid/pim/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isWeekdayEvent()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 2304
    goto :goto_0

    .line 2305
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget v0, v0, Landroid/pim/EventRecurrence;->bydayCount:I

    if-ne v0, v2, :cond_3

    move v0, v1

    .line 2306
    goto :goto_0

    .line 2310
    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    invoke-virtual {v0}, Landroid/pim/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 2311
    goto :goto_0

    .line 2312
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget v0, v0, Landroid/pim/EventRecurrence;->bydayCount:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget v0, v0, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    if-ne v0, v2, :cond_3

    move v0, v1

    .line 2313
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 2317
    goto :goto_0

    .line 2299
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isEmpty()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2271
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2272
    .local v2, title:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    move v3, v4

    .line 2286
    :goto_0
    return v3

    .line 2276
    :cond_0
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2277
    .local v1, location:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v4

    .line 2278
    goto :goto_0

    .line 2281
    :cond_1
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2282
    .local v0, description:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    move v3, v4

    .line 2283
    goto :goto_0

    .line 2286
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isFirstEventInSeries()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1905
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const-string v4, "dtstart"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1906
    .local v0, dtStart:I
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1907
    .local v1, start:J
    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v3, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    move v3, v5

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isWeekdayEvent()Z
    .locals 2

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 2325
    const/4 v0, 0x1

    .line 2327
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private populateRepeats()V
    .locals 23

    .prologue
    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v17, v0

    .line 1354
    .local v17, time:Landroid/text/format/Time;
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 1355
    .local v13, r:Landroid/content/res/Resources;
    const v16, 0x1090008

    .line 1357
    .local v16, resource:I
    const/16 v20, 0x7

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object v6, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x14

    invoke-static/range {v21 .. v22}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v20

    const/16 v20, 0x1

    const/16 v21, 0x2

    const/16 v22, 0x14

    invoke-static/range {v21 .. v22}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v20

    const/16 v20, 0x2

    const/16 v21, 0x3

    const/16 v22, 0x14

    invoke-static/range {v21 .. v22}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v20

    const/16 v20, 0x3

    const/16 v21, 0x4

    const/16 v22, 0x14

    invoke-static/range {v21 .. v22}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v20

    const/16 v20, 0x4

    const/16 v21, 0x5

    const/16 v22, 0x14

    invoke-static/range {v21 .. v22}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v20

    const/16 v20, 0x5

    const/16 v21, 0x6

    const/16 v22, 0x14

    invoke-static/range {v21 .. v22}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v20

    const/16 v20, 0x6

    const/16 v21, 0x7

    const/16 v22, 0x14

    invoke-static/range {v21 .. v22}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v20

    .line 1366
    .local v6, days:[Ljava/lang/String;
    const v20, 0x7f06000a

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 1371
    .local v11, ordinals:[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->isCustomRecurrence()Z

    move-result v9

    .line 1372
    .local v9, isCustomRecurrence:Z
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->isWeekdayEvent()Z

    move-result v10

    .line 1374
    .local v10, isWeekdayEvent:Z
    new-instance v15, Ljava/util/ArrayList;

    const/16 v20, 0x0

    move-object v0, v15

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1375
    .local v15, repeatArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    const/16 v20, 0x0

    move-object v0, v14

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1377
    .local v14, recurrenceIndexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v20, 0x7f080051

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1378
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1380
    const v20, 0x7f080052

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1381
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1383
    if-eqz v10, :cond_0

    .line 1384
    const v20, 0x7f080053

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1385
    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1388
    :cond_0
    const v20, 0x7f080054

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1389
    .local v8, format:Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "%A"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1390
    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1393
    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v20, v20, v21

    div-int/lit8 v5, v20, 0x7

    .line 1394
    .local v5, dayNumber:I
    const v20, 0x7f080055

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1395
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v22, v11, v5

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v22, v0

    aget-object v22, v6, v22

    aput-object v22, v20, v21

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1396
    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1398
    const v20, 0x7f080058

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1399
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1400
    const/16 v20, 0x5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1402
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    .line 1403
    .local v18, when:J
    const v20, 0x7f080059

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1404
    const/4 v7, 0x0

    .line 1405
    .local v7, flags:I
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1406
    or-int/lit16 v7, v7, 0x80

    .line 1408
    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1409
    const/16 v20, 0x6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1411
    if-eqz v9, :cond_2

    .line 1412
    const v20, 0x7f08005a

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1413
    const/16 v20, 0x7

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1415
    :cond_2
    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mRecurrenceIndexes:Ljava/util/ArrayList;

    .line 1417
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 1418
    .local v12, position:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 1419
    if-eqz v9, :cond_4

    .line 1420
    const/16 v20, 0x7

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 1446
    :cond_3
    :goto_0
    new-instance v4, Landroid/widget/ArrayAdapter;

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1447
    .local v4, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v20, 0x1090009

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mRepeatsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mRepeatsSpinner:Landroid/widget/Spinner;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1450
    return-void

    .line 1422
    .end local v4           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/pim/EventRecurrence;->freq:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    goto :goto_0

    .line 1424
    :pswitch_0
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 1425
    goto :goto_0

    .line 1427
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/pim/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1428
    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    goto :goto_0

    .line 1430
    :cond_5
    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 1432
    goto :goto_0

    .line 1434
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/pim/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1435
    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    goto/16 :goto_0

    .line 1437
    :cond_6
    const/16 v20, 0x5

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 1439
    goto/16 :goto_0

    .line 1441
    :pswitch_3
    const/16 v20, 0x6

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    goto/16 :goto_0

    .line 1422
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private populateTimezone()V
    .locals 2

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/calendar/EditEvent$5;

    invoke-direct {v1, p0}, Lcom/android/calendar/EditEvent$5;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1231
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/calendar/EditEvent;->setTimezone(I)V

    .line 1232
    return-void
.end method

.method private populateWhen()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1209
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 1210
    .local v2, startMillis:J
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 1211
    .local v0, endMillis:J
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v2, v3}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;J)V

    .line 1212
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v0, v1}, Lcom/android/calendar/EditEvent;->setDate(Landroid/widget/TextView;J)V

    .line 1214
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v2, v3}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;J)V

    .line 1215
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v4, v0, v1}, Lcom/android/calendar/EditEvent;->setTime(Landroid/widget/TextView;J)V

    .line 1217
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/EditEvent$DateClickListener;

    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/EditEvent$DateClickListener;-><init>(Lcom/android/calendar/EditEvent;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1218
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/EditEvent$DateClickListener;

    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/EditEvent$DateClickListener;-><init>(Lcom/android/calendar/EditEvent;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1220
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/EditEvent$TimeClickListener;

    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/EditEvent$TimeClickListener;-><init>(Lcom/android/calendar/EditEvent;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1221
    iget-object v4, p0, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/calendar/EditEvent$TimeClickListener;

    iget-object v6, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-direct {v5, p0, v6}, Lcom/android/calendar/EditEvent$TimeClickListener;-><init>(Lcom/android/calendar/EditEvent;Landroid/text/format/Time;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1222
    return-void
.end method

.method static reminderItemsToMinutes(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2006
    .local p0, reminderItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    .local p1, reminderValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2007
    .local v2, len:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2008
    .local v4, reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2009
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2010
    .local v1, layout:Landroid/widget/LinearLayout;
    const v6, 0x7f0c0047

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 2011
    .local v5, spinner:Landroid/widget/Spinner;
    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2012
    .local v3, minutes:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2008
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2014
    .end local v1           #layout:Landroid/widget/LinearLayout;
    .end local v3           #minutes:I
    .end local v5           #spinner:Landroid/widget/Spinner;
    :cond_0
    return-object v4
.end method

.method private save()Z
    .locals 42

    .prologue
    .line 1603
    const/16 v23, 0x0

    .line 1607
    .local v23, forceSaveReminders:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v9, v0

    if-nez v9, :cond_d

    .line 1608
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/EditEvent;->mCalendarsQueryComplete:Z

    move v9, v0

    if-nez v9, :cond_1

    .line 1610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    move-object v9, v0

    if-nez v9, :cond_0

    .line 1612
    const v9, 0x7f080024

    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const v9, 0x7f080025

    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v5, p0

    move-object/from16 v10, p0

    invoke-static/range {v5 .. v10}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    .line 1616
    const/4 v9, 0x1

    move v0, v9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/EditEvent;->mSaveAfterQueryComplete:Z

    .line 1618
    :cond_0
    const/4 v9, 0x0

    move/from16 v10, v23

    .line 1901
    .end local v23           #forceSaveReminders:Z
    .local v10, forceSaveReminders:Z
    :goto_0
    return v9

    .line 1623
    .end local v10           #forceSaveReminders:Z
    .restart local v23       #forceSaveReminders:Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    move-object v9, v0

    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    move-object v9, v0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mCalendarsSpinner:Landroid/widget/Spinner;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v38

    const-wide/high16 v40, -0x8000

    cmp-long v9, v38, v40

    if-nez v9, :cond_3

    .line 1625
    :cond_2
    const-string v9, "Cal"

    const-string v10, "The calendars table does not contain any calendars or no calendar was selected. New event was not created."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    const/4 v9, 0x1

    move/from16 v10, v23

    .end local v23           #forceSaveReminders:Z
    .restart local v10       #forceSaveReminders:Z
    goto :goto_0

    .line 1630
    .end local v10           #forceSaveReminders:Z
    .restart local v23       #forceSaveReminders:Z
    :cond_3
    const v9, 0x7f080022

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 1635
    :goto_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1636
    .local v5, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v22, -0x1

    .line 1638
    .local v22, eventIdIndex:I
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentValuesFromUi()Landroid/content/ContentValues;

    move-result-object v37

    .line 1639
    .local v37, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    move-object/from16 v36, v0

    .line 1642
    .local v36, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    move-object v10, v0

    invoke-virtual {v9, v10}, Lcom/android/calendar/TimezoneAdapter;->saveRecentTimezone(Ljava/lang/String;)V

    .line 1647
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    move-object v10, v0

    invoke-static {v9, v10}, Lcom/android/calendar/EditEvent;->reminderItemsToMinutes(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1649
    .local v8, reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 1650
    .local v28, len:I
    const-string v9, "hasAlarm"

    if-lez v28, :cond_e

    const/4 v10, 0x1

    :goto_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v37

    move-object v1, v9

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1654
    if-nez v36, :cond_f

    .line 1656
    const-string v9, "hasAttendeeData"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v37

    move-object v1, v9

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1658
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    .line 1659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    move-object v9, v0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1660
    const-string v9, "dtend"

    move-object/from16 v0, v37

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1662
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1663
    sget-object v9, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 1664
    .local v15, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1665
    const/4 v10, 0x1

    .line 1757
    .end local v15           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v23           #forceSaveReminders:Z
    .restart local v10       #forceSaveReminders:Z
    :goto_3
    const/4 v9, -0x1

    move/from16 v0, v22

    move v1, v9

    if-eq v0, v1, :cond_1b

    const/4 v9, 0x1

    move/from16 v30, v9

    .line 1759
    .local v30, newEvent:Z
    :goto_4
    if-eqz v30, :cond_1c

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    move-object v9, v0

    move-object v0, v5

    move/from16 v1, v22

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/calendar/EditEvent;->saveRemindersWithBackRef(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 1771
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/EditEvent;->mHasAttendeeData:Z

    move v9, v0

    if-eqz v9, :cond_a

    if-eqz v30, :cond_a

    .line 1772
    invoke-virtual/range {v37 .. v37}, Landroid/content/ContentValues;->clear()V

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mCalendarsSpinner:Landroid/widget/Spinner;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v18

    .line 1776
    .local v18, calendarCursorPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    move-object v9, v0

    if-eqz v9, :cond_7

    .line 1777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    move-object v9, v0

    move-object v0, v9

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    move-object v9, v0

    const/4 v11, 0x2

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1780
    .local v19, defaultCalendar:Ljava/lang/String;
    const-string v9, "preference_defaultCalendar"

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    .end local v19           #defaultCalendar:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 1787
    .local v33, ownerEmail:Ljava/lang/String;
    if-nez v33, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    move-object v9, v0

    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    move-object v9, v0

    move-object v0, v9

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    move-object v9, v0

    const/4 v11, 0x2

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1791
    :cond_8
    if-eqz v33, :cond_a

    .line 1792
    const-string v9, "attendeeEmail"

    move-object/from16 v0, v37

    move-object v1, v9

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1793
    const-string v9, "attendeeRelationship"

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v37

    move-object v1, v9

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1794
    const-string v9, "attendeeType"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v37

    move-object v1, v9

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1795
    const/16 v27, 0x1

    .line 1798
    .local v27, initialStatus:I
    const-string v9, "calendar.google.com"

    move-object/from16 v0, v33

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1799
    const/16 v27, 0x0

    .line 1801
    :cond_9
    const-string v9, "attendeeStatus"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v37

    move-object v1, v9

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1803
    sget-object v9, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 1805
    .restart local v15       #b:Landroid/content/ContentProviderOperation$Builder;
    const-string v9, "event_id"

    move-object v0, v15

    move-object v1, v9

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1806
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1812
    .end local v15           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v18           #calendarCursorPosition:I
    .end local v27           #initialStatus:I
    .end local v33           #ownerEmail:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/EditEvent;->mHasAttendeeData:Z

    move v9, v0

    if-eqz v9, :cond_24

    if-nez v30, :cond_b

    if-eqz v36, :cond_24

    .line 1813
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v14

    .line 1815
    .local v14, attendeesText:Landroid/text/Editable;
    if-nez v30, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/lang/String;

    move-object v9, v0

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_24

    .line 1819
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    move-object v9, v0

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/android/calendar/EditEvent;->getAddressesFromList(Landroid/widget/MultiAutoCompleteTextView;)Ljava/util/LinkedHashSet;

    move-result-object v29

    .line 1823
    .local v29, newAttendees:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    if-eqz v36, :cond_1d

    invoke-static/range {v36 .. v36}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v38

    move-wide/from16 v6, v38

    .line 1828
    .local v6, eventId:J
    :goto_6
    if-nez v30, :cond_22

    .line 1829
    new-instance v35, Ljava/util/HashSet;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashSet;-><init>()V

    .line 1830
    .local v35, removedAttendees:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/text/util/Rfc822Token;>;"
    new-instance v32, Ljava/util/HashSet;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashSet;-><init>()V

    .line 1831
    .local v32, originalAttendees:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/text/util/Rfc822Token;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/lang/String;

    move-object v9, v0

    move-object v0, v9

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 1832
    invoke-virtual/range {v32 .. v32}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .local v26, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1f

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/text/util/Rfc822Token;

    .line 1833
    .local v31, originalAttendee:Landroid/text/util/Rfc822Token;
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 1835
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1632
    .end local v5           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v6           #eventId:J
    .end local v8           #reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10           #forceSaveReminders:Z
    .end local v14           #attendeesText:Landroid/text/Editable;
    .end local v22           #eventIdIndex:I
    .end local v26           #i$:Ljava/util/Iterator;
    .end local v28           #len:I
    .end local v29           #newAttendees:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    .end local v30           #newEvent:Z
    .end local v31           #originalAttendee:Landroid/text/util/Rfc822Token;
    .end local v32           #originalAttendees:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/text/util/Rfc822Token;>;"
    .end local v35           #removedAttendees:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/text/util/Rfc822Token;>;"
    .end local v36           #uri:Landroid/net/Uri;
    .end local v37           #values:Landroid/content/ContentValues;
    .restart local v23       #forceSaveReminders:Z
    :cond_d
    const v9, 0x7f080023

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1650
    .restart local v5       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v8       #reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v22       #eventIdIndex:I
    .restart local v28       #len:I
    .restart local v36       #uri:Landroid/net/Uri;
    .restart local v37       #values:Landroid/content/ContentValues;
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1667
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    move-object v9, v0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1669
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    .line 1670
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/calendar/EditEvent;->checkTimeDependentFields(Landroid/content/ContentValues;)V

    .line 1671
    invoke-static/range {v36 .. v36}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v10, v23

    .end local v23           #forceSaveReminders:Z
    .restart local v10       #forceSaveReminders:Z
    goto/16 :goto_3

    .line 1673
    .end local v10           #forceSaveReminders:Z
    .restart local v23       #forceSaveReminders:Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object v9, v0

    const-string v10, "rrule"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1676
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    .line 1677
    const-string v9, "dtend"

    move-object/from16 v0, v37

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1678
    invoke-static/range {v36 .. v36}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v10, v23

    .end local v23           #forceSaveReminders:Z
    .restart local v10       #forceSaveReminders:Z
    goto/16 :goto_3

    .line 1680
    .end local v10           #forceSaveReminders:Z
    .restart local v23       #forceSaveReminders:Z
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/EditEvent;->mModification:I

    move v9, v0

    const/4 v10, 0x1

    if-ne v9, v10, :cond_14

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object v9, v0

    const-string v10, "beginTime"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1685
    .local v16, begin:J
    const-string v9, "originalEvent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v10, v0

    const/16 v11, 0xb

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v37

    move-object v1, v9

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    const-string v9, "originalInstanceTime"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v37

    move-object v1, v9

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object v9, v0

    const-string v10, "allDay"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_12

    const/4 v9, 0x1

    move v11, v9

    .line 1688
    .local v11, allDay:Z
    :goto_8
    const-string v9, "originalAllDay"

    if-eqz v11, :cond_13

    const/4 v10, 0x1

    :goto_9
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v37

    move-object v1, v9

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1690
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1691
    sget-object v9, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 1692
    .restart local v15       #b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1693
    const/4 v10, 0x1

    .line 1695
    .end local v23           #forceSaveReminders:Z
    .restart local v10       #forceSaveReminders:Z
    goto/16 :goto_3

    .line 1687
    .end local v10           #forceSaveReminders:Z
    .end local v11           #allDay:Z
    .end local v15           #b:Landroid/content/ContentProviderOperation$Builder;
    .restart local v23       #forceSaveReminders:Z
    :cond_12
    const/4 v9, 0x0

    move v11, v9

    goto :goto_8

    .line 1688
    .restart local v11       #allDay:Z
    :cond_13
    const/4 v10, 0x0

    goto :goto_9

    .line 1695
    .end local v11           #allDay:Z
    .end local v16           #begin:J
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/EditEvent;->mModification:I

    move v9, v0

    const/4 v10, 0x3

    if-ne v9, v10, :cond_18

    .line 1697
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    move-object v9, v0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 1704
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->isFirstEventInSeries()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 1705
    invoke-static/range {v36 .. v36}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1711
    :goto_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1712
    sget-object v9, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1732
    :goto_b
    const/4 v10, 0x1

    .end local v23           #forceSaveReminders:Z
    .restart local v10       #forceSaveReminders:Z
    goto/16 :goto_3

    .line 1709
    .end local v10           #forceSaveReminders:Z
    .restart local v23       #forceSaveReminders:Z
    :cond_15
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EditEvent;->updatePastEvents(Ljava/util/ArrayList;Landroid/net/Uri;)V

    goto :goto_a

    .line 1715
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->isFirstEventInSeries()Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1716
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/calendar/EditEvent;->checkTimeDependentFields(Landroid/content/ContentValues;)V

    .line 1717
    const-string v9, "dtend"

    move-object/from16 v0, v37

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1718
    invoke-static/range {v36 .. v36}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 1719
    .restart local v15       #b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1723
    .end local v15           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_17
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EditEvent;->updatePastEvents(Ljava/util/ArrayList;Landroid/net/Uri;)V

    .line 1726
    const-string v9, "dtend"

    move-object/from16 v0, v37

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1727
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1728
    sget-object v9, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1734
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/EditEvent;->mModification:I

    move v9, v0

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1a

    .line 1737
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    move-object v9, v0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 1743
    invoke-static/range {v36 .. v36}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1745
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1746
    sget-object v9, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1748
    const/4 v10, 0x1

    .end local v23           #forceSaveReminders:Z
    .restart local v10       #forceSaveReminders:Z
    goto/16 :goto_3

    .line 1750
    .end local v10           #forceSaveReminders:Z
    .restart local v23       #forceSaveReminders:Z
    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/calendar/EditEvent;->checkTimeDependentFields(Landroid/content/ContentValues;)V

    .line 1751
    const-string v9, "dtend"

    move-object/from16 v0, v37

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1752
    invoke-static/range {v36 .. v36}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    move/from16 v10, v23

    .end local v23           #forceSaveReminders:Z
    .restart local v10       #forceSaveReminders:Z
    goto/16 :goto_3

    .line 1757
    :cond_1b
    const/4 v9, 0x0

    move/from16 v30, v9

    goto/16 :goto_4

    .line 1762
    .restart local v30       #newEvent:Z
    :cond_1c
    if-eqz v36, :cond_6

    .line 1763
    invoke-static/range {v36 .. v36}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 1764
    .restart local v6       #eventId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    move-object v9, v0

    invoke-static/range {v5 .. v10}, Lcom/android/calendar/EditEvent;->saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    goto/16 :goto_5

    .line 1823
    .end local v6           #eventId:J
    .restart local v14       #attendeesText:Landroid/text/Editable;
    .restart local v29       #newAttendees:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    :cond_1d
    const-wide/16 v38, -0x1

    move-wide/from16 v6, v38

    goto/16 :goto_6

    .line 1838
    .restart local v6       #eventId:J
    .restart local v26       #i$:Ljava/util/Iterator;
    .restart local v31       #originalAttendee:Landroid/text/util/Rfc822Token;
    .restart local v32       #originalAttendees:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/text/util/Rfc822Token;>;"
    .restart local v35       #removedAttendees:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/text/util/Rfc822Token;>;"
    :cond_1e
    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 1843
    .end local v31           #originalAttendee:Landroid/text/util/Rfc822Token;
    :cond_1f
    sget-object v9, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 1845
    .restart local v15       #b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v35 .. v35}, Ljava/util/HashSet;->size()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    new-array v12, v9, [Ljava/lang/String;

    .line 1846
    .local v12, args:[Ljava/lang/String;
    const/4 v9, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v9

    .line 1847
    const/16 v24, 0x1

    .line 1848
    .local v24, i:I
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v9, "event_id=? AND attendeeEmail IN ("

    move-object/from16 v0, v20

    move-object v1, v9

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1849
    .local v20, deleteWhere:Ljava/lang/StringBuilder;
    invoke-virtual/range {v35 .. v35}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_c
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/text/util/Rfc822Token;

    .line 1850
    .local v34, removedAttendee:Landroid/text/util/Rfc822Token;
    const/4 v9, 0x1

    move/from16 v0, v24

    move v1, v9

    if-le v0, v1, :cond_20

    .line 1851
    const-string v9, ","

    move-object/from16 v0, v20

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1853
    :cond_20
    const-string v9, "?"

    move-object/from16 v0, v20

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1854
    add-int/lit8 v25, v24, 0x1

    .end local v24           #i:I
    .local v25, i:I
    invoke-virtual/range {v34 .. v34}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v12, v24

    move/from16 v24, v25

    .end local v25           #i:I
    .restart local v24       #i:I
    goto :goto_c

    .line 1856
    .end local v34           #removedAttendee:Landroid/text/util/Rfc822Token;
    :cond_21
    const-string v9, ")"

    move-object/from16 v0, v20

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1857
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9, v12}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 1858
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1861
    .end local v12           #args:[Ljava/lang/String;
    .end local v15           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v20           #deleteWhere:Ljava/lang/StringBuilder;
    .end local v24           #i:I
    .end local v26           #i$:Ljava/util/Iterator;
    .end local v32           #originalAttendees:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/text/util/Rfc822Token;>;"
    .end local v35           #removedAttendees:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/text/util/Rfc822Token;>;"
    :cond_22
    invoke-virtual/range {v29 .. v29}, Ljava/util/LinkedHashSet;->size()I

    move-result v9

    if-lez v9, :cond_24

    .line 1863
    invoke-virtual/range {v29 .. v29}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .restart local v26       #i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_24

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/text/util/Rfc822Token;

    .line 1864
    .local v13, attendee:Landroid/text/util/Rfc822Token;
    invoke-virtual/range {v37 .. v37}, Landroid/content/ContentValues;->clear()V

    .line 1865
    const-string v9, "attendeeName"

    invoke-virtual {v13}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v37

    move-object v1, v9

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    const-string v9, "attendeeEmail"

    invoke-virtual {v13}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v37

    move-object v1, v9

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    const-string v9, "attendeeRelationship"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v37

    move-object v1, v9

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1868
    const-string v9, "attendeeType"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v37

    move-object v1, v9

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1869
    const-string v9, "attendeeStatus"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v37

    move-object v1, v9

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1871
    if-eqz v30, :cond_23

    .line 1872
    sget-object v9, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 1874
    .restart local v15       #b:Landroid/content/ContentProviderOperation$Builder;
    const-string v9, "event_id"

    move-object v0, v15

    move-object v1, v9

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1880
    :goto_e
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1876
    .end local v15           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_23
    const-string v9, "event_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, v37

    move-object v1, v9

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1877
    sget-object v9, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .restart local v15       #b:Landroid/content/ContentProviderOperation$Builder;
    goto :goto_e

    .line 1888
    .end local v6           #eventId:J
    .end local v13           #attendee:Landroid/text/util/Rfc822Token;
    .end local v14           #attendeesText:Landroid/text/Editable;
    .end local v15           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v26           #i$:Ljava/util/Iterator;
    .end local v29           #newAttendees:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    :cond_24
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v11, "com.android.calendar"

    invoke-virtual {v9, v11, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1901
    :goto_f
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 1895
    :catch_0
    move-exception v9

    move-object/from16 v21, v9

    .line 1896
    .local v21, e:Landroid/os/RemoteException;
    const-string v9, "EditEvent"

    const-string v11, "Ignoring unexpected remote exception"

    move-object v0, v9

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1897
    .end local v21           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    move-object/from16 v21, v9

    .line 1898
    .local v21, e:Landroid/content/OperationApplicationException;
    const-string v9, "EditEvent"

    const-string v11, "Ignoring unexpected exception"

    move-object v0, v9

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method static saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .locals 10
    .parameter
    .parameter "eventId"
    .parameter
    .parameter
    .parameter "forceSave"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p3, reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, originalMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 2033
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez p5, :cond_0

    move v7, v8

    .line 2058
    :goto_0
    return v7

    .line 2038
    :cond_0
    const-string v6, "event_id=?"

    .line 2039
    .local v6, where:Ljava/lang/String;
    new-array v0, v9, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v8

    .line 2040
    .local v0, args:[Ljava/lang/String;
    sget-object v7, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 2041
    .local v1, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v1, v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 2042
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2044
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2045
    .local v5, values:Landroid/content/ContentValues;
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2048
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 2049
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2051
    .local v4, minutes:I
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 2052
    const-string v7, "minutes"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2053
    const-string v7, "method"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2054
    const-string v7, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2055
    sget-object v7, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 2056
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2048
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v4           #minutes:I
    :cond_1
    move v7, v9

    .line 2058
    goto :goto_0
.end method

.method static saveRemindersWithBackRef(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .locals 9
    .parameter
    .parameter "eventIdIndex"
    .parameter
    .parameter
    .parameter "forceSave"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p2, reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, originalMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2065
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p4, :cond_0

    move v5, v8

    .line 2089
    :goto_0
    return v5

    .line 2070
    :cond_0
    sget-object v5, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2071
    .local v0, b:Landroid/content/ContentProviderOperation$Builder;
    const-string v5, "event_id=?"

    new-array v6, v7, [Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 2072
    invoke-virtual {v0, v8, p1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 2073
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2075
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2076
    .local v4, values:Landroid/content/ContentValues;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2079
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 2080
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2082
    .local v3, minutes:I
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 2083
    const-string v5, "minutes"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2084
    const-string v5, "method"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2085
    sget-object v5, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 2086
    const-string v5, "event_id"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 2087
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2079
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #minutes:I
    :cond_1
    move v5, v7

    .line 2089
    goto :goto_0
.end method

.method private setDate(Landroid/widget/TextView;J)V
    .locals 9
    .parameter "view"
    .parameter "millis"

    .prologue
    .line 1566
    const v6, 0x18016

    .line 1570
    .local v6, flags:I
    sget-object v0, Lcom/android/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1571
    sget-object v1, Lcom/android/calendar/EditEvent;->mF:Ljava/util/Formatter;

    iget-object v7, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p2

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1573
    .local v8, dateString:Ljava/lang/String;
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1574
    return-void
.end method

.method private setTime(Landroid/widget/TextView;J)V
    .locals 9
    .parameter "view"
    .parameter "millis"

    .prologue
    .line 1577
    const/4 v6, 0x1

    .line 1578
    .local v6, flags:I
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1579
    or-int/lit16 v6, v6, 0x80

    .line 1581
    :cond_0
    sget-object v0, Lcom/android/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1582
    sget-object v1, Lcom/android/calendar/EditEvent;->mF:Ljava/util/Formatter;

    iget-object v7, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p2

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1584
    .local v8, timeString:Ljava/lang/String;
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1585
    return-void
.end method

.method private setTimezone(I)V
    .locals 4
    .parameter "i"

    .prologue
    const/4 v3, 0x1

    .line 1588
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/TimezoneAdapter;->getCount()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 1599
    :cond_0
    :goto_0
    return-void

    .line 1591
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v1, p1}, Lcom/android/calendar/TimezoneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;

    .line 1592
    .local v0, timezone:Lcom/android/calendar/TimezoneAdapter$TimezoneRow;
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezoneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1593
    iget-object v1, v0, Lcom/android/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    .line 1594
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/calendar/TimezoneAdapter;->setCurrentTimezone(Ljava/lang/String;)V

    .line 1595
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1596
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1597
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1598
    iget-object v1, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    goto :goto_0
.end method

.method private showAllTimezone(Landroid/widget/ListView;)V
    .locals 4
    .parameter "listView"

    .prologue
    .line 1308
    move-object v0, p1

    .line 1309
    .local v0, lv:Landroid/widget/ListView;
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezoneFooterView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 1310
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v2}, Lcom/android/calendar/TimezoneAdapter;->showAllTimezones()V

    .line 1311
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v1

    .line 1313
    .local v1, row:I
    new-instance v2, Lcom/android/calendar/EditEvent$6;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/calendar/EditEvent$6;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/ListView;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 1320
    return-void
.end method

.method private showTimezoneDialog()V
    .locals 4

    .prologue
    .line 1323
    new-instance v2, Lcom/android/calendar/TimezoneAdapter;

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    .line 1324
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v1

    .line 1325
    .local v1, row:I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080005

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v2, v3, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezoneDialog:Landroid/app/AlertDialog;

    .line 1329
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1330
    .local v0, lv:Landroid/widget/ListView;
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezoneFooterView:Landroid/widget/TextView;

    new-instance v3, Lcom/android/calendar/EditEvent$7;

    invoke-direct {v3, p0, v0}, Lcom/android/calendar/EditEvent$7;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/ListView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1336
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezoneFooterView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1337
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezoneDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/calendar/EditEvent$8;

    invoke-direct {v3, p0, v0}, Lcom/android/calendar/EditEvent$8;-><init>(Lcom/android/calendar/EditEvent;Landroid/widget/ListView;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1349
    iget-object v2, p0, Lcom/android/calendar/EditEvent;->mTimezoneDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1350
    return-void
.end method

.method private updateHomeTime()V
    .locals 25

    .prologue
    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mUpdateTZ:Ljava/lang/Runnable;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v11

    .line 1241
    .local v11, tz:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v11, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1242
    const/4 v10, 0x1

    .line 1243
    .local v10, flags:I
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v20

    .line 1244
    .local v20, is24Format:Z
    if-eqz v20, :cond_0

    .line 1245
    or-int/lit16 v10, v10, 0x80

    .line 1247
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 1248
    .local v6, millisStart:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v14

    .line 1250
    .local v14, millisEnd:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object v4, v0

    iget v4, v4, Landroid/text/format/Time;->isDst:I

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    move/from16 v22, v4

    .line 1251
    .local v22, isDSTStart:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object v4, v0

    iget v4, v4, Landroid/text/format/Time;->isDst:I

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    move/from16 v21, v4

    .line 1254
    .local v21, isDSTEnd:Z
    :goto_1
    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    move-object v0, v4

    move/from16 v1, v22

    move v2, v5

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    .line 1256
    .local v24, tzDisplay:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 1258
    .local v23, time:Ljava/lang/StringBuilder;
    sget-object v4, Lcom/android/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1259
    sget-object v5, Lcom/android/calendar/EditEvent;->mF:Ljava/util/Formatter;

    move-object/from16 v4, p0

    move-wide v8, v6

    invoke-static/range {v4 .. v11}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTimeHome:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1263
    const v10, 0x80016

    .line 1265
    sget-object v4, Lcom/android/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartDateHome:Landroid/widget/TextView;

    move-object v12, v0

    sget-object v5, Lcom/android/calendar/EditEvent;->mF:Ljava/util/Formatter;

    move-object/from16 v4, p0

    move-wide v8, v6

    invoke-static/range {v4 .. v11}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1270
    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 1271
    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .end local v6           #millisStart:J
    move-object v0, v4

    move/from16 v1, v21

    move v2, v5

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v24

    .line 1274
    :cond_1
    const/4 v10, 0x1

    .line 1275
    if-eqz v20, :cond_2

    .line 1276
    or-int/lit16 v10, v10, 0x80

    .line 1280
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, v23

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1281
    sget-object v4, Lcom/android/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1282
    sget-object v13, Lcom/android/calendar/EditEvent;->mF:Ljava/util/Formatter;

    move-object/from16 v12, p0

    move-wide/from16 v16, v14

    move/from16 v18, v10

    move-object/from16 v19, v11

    invoke-static/range {v12 .. v19}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEndTimeHome:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1286
    const v10, 0x80016

    .line 1288
    sget-object v4, Lcom/android/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEndDateHome:Landroid/widget/TextView;

    move-object v4, v0

    sget-object v13, Lcom/android/calendar/EditEvent;->mF:Ljava/util/Formatter;

    move-object/from16 v12, p0

    move-wide/from16 v16, v14

    move/from16 v18, v10

    move-object/from16 v19, v11

    invoke-static/range {v12 .. v19}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTimeHome:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartDateHome:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEndTimeHome:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEndDateHome:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1302
    .end local v10           #flags:I
    .end local v14           #millisEnd:J
    .end local v20           #is24Format:Z
    .end local v21           #isDSTEnd:Z
    .end local v22           #isDSTStart:Z
    .end local v23           #time:Ljava/lang/StringBuilder;
    .end local v24           #tzDisplay:Ljava/lang/String;
    :goto_2
    return-void

    .line 1250
    .restart local v6       #millisStart:J
    .restart local v10       #flags:I
    .restart local v14       #millisEnd:J
    .restart local v20       #is24Format:Z
    :cond_3
    const/4 v4, 0x0

    move/from16 v22, v4

    goto/16 :goto_0

    .line 1251
    .restart local v22       #isDSTStart:Z
    :cond_4
    const/4 v4, 0x0

    move/from16 v21, v4

    goto/16 :goto_1

    .line 1297
    .end local v6           #millisStart:J
    .end local v10           #flags:I
    .end local v14           #millisEnd:J
    .end local v20           #is24Format:Z
    .end local v22           #isDSTStart:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTimeHome:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartDateHome:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEndTimeHome:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEndDateHome:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updatePastEvents(Ljava/util/ArrayList;Landroid/net/Uri;)V
    .locals 18
    .parameter
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1911
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v16, v0

    const/16 v17, 0x7

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1912
    .local v11, oldStartMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1913
    .local v9, oldDuration:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    if-eqz v16, :cond_1

    const/16 v16, 0x1

    move/from16 v3, v16

    .line 1914
    .local v3, allDay:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v16, v0

    const/16 v17, 0xa

    invoke-interface/range {v16 .. v17}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1915
    .local v10, oldRrule:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/pim/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 1917
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 1918
    .local v15, untilTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    const-string v17, "beginTime"

    invoke-virtual/range {v16 .. v17}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1919
    .local v5, begin:J
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1925
    .local v13, oldValues:Landroid/content/ContentValues;
    const-string v16, "UTC"

    move-object/from16 v0, v16

    move-object v1, v15

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1929
    const-wide/16 v16, 0x3e8

    sub-long v16, v5, v16

    invoke-virtual/range {v15 .. v17}, Landroid/text/format/Time;->set(J)V

    .line 1930
    if-eqz v3, :cond_0

    .line 1931
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 1932
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 1933
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 1934
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object v1, v15

    iput-boolean v0, v1, Landroid/text/format/Time;->allDay:Z

    .line 1935
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/text/format/Time;->normalize(Z)J

    .line 1940
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    .line 1941
    .local v8, len:I
    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x50

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    const/16 v16, 0x1

    sub-int v16, v8, v16

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x53

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 1942
    const/16 v16, 0x1

    const/16 v17, 0x1

    sub-int v17, v8, v17

    move-object v0, v9

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1943
    .local v14, seconds:I
    const v16, 0x15180

    add-int v16, v16, v14

    const/16 v17, 0x1

    sub-int v16, v16, v17

    const v17, 0x15180

    div-int v7, v16, v17

    .line 1944
    .local v7, days:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "P"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "D"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1947
    .end local v7           #days:I
    .end local v8           #len:I
    .end local v14           #seconds:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    move-object/from16 v16, v0

    invoke-virtual {v15}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    .line 1949
    const-string v16, "dtstart"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1950
    const-string v16, "duration"

    move-object v0, v13

    move-object/from16 v1, v16

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    const-string v16, "rrule"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/pim/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v13

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    invoke-static/range {p2 .. p2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 1953
    .local v4, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1954
    return-void

    .line 1913
    .end local v3           #allDay:Z
    .end local v4           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v5           #begin:J
    .end local v10           #oldRrule:Ljava/lang/String;
    .end local v13           #oldValues:Landroid/content/ContentValues;
    .end local v15           #untilTime:Landroid/text/format/Time;
    :cond_1
    const/16 v16, 0x0

    move/from16 v3, v16

    goto/16 :goto_0
.end method

.method private updateRecurrenceRule()V
    .locals 15

    .prologue
    const/4 v14, 0x6

    const/4 v13, 0x4

    const/4 v12, 0x5

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2126
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mRepeatsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    .line 2127
    .local v7, position:I
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mRecurrenceIndexes:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2129
    .local v8, selection:I
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->clearRecurrence()V

    .line 2131
    if-nez v8, :cond_1

    .line 2132
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    .line 2200
    :cond_0
    :goto_0
    return-void

    .line 2134
    :cond_1
    const/4 v9, 0x7

    if-eq v8, v9, :cond_0

    .line 2137
    if-ne v8, v10, :cond_3

    .line 2138
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v13, v9, Landroid/pim/EventRecurrence;->freq:I

    .line 2198
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iget v10, p0, Lcom/android/calendar/EditEvent;->mFirstDayOfWeek:I

    invoke-static {v10}, Landroid/pim/EventRecurrence;->calendarDay2Day(I)I

    move-result v10

    iput v10, v9, Landroid/pim/EventRecurrence;->wkst:I

    .line 2199
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    invoke-virtual {v9}, Landroid/pim/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    goto :goto_0

    .line 2139
    :cond_3
    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 2140
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v12, v9, Landroid/pim/EventRecurrence;->freq:I

    .line 2141
    const/4 v4, 0x5

    .line 2142
    .local v4, dayCount:I
    new-array v0, v4, [I

    .line 2143
    .local v0, byday:[I
    new-array v1, v4, [I

    .line 2145
    .local v1, bydayNum:[I
    const/high16 v9, 0x2

    aput v9, v0, v11

    .line 2146
    const/high16 v9, 0x4

    aput v9, v0, v10

    .line 2147
    const/4 v9, 0x2

    const/high16 v10, 0x8

    aput v10, v0, v9

    .line 2148
    const/4 v9, 0x3

    const/high16 v10, 0x10

    aput v10, v0, v9

    .line 2149
    const/high16 v9, 0x20

    aput v9, v0, v13

    .line 2150
    const/4 v3, 0x0

    .local v3, day:I
    :goto_2
    if-ge v3, v4, :cond_4

    .line 2151
    aput v11, v1, v3

    .line 2150
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2154
    :cond_4
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput-object v0, v9, Landroid/pim/EventRecurrence;->byday:[I

    .line 2155
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput-object v1, v9, Landroid/pim/EventRecurrence;->bydayNum:[I

    .line 2156
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v4, v9, Landroid/pim/EventRecurrence;->bydayCount:I

    goto :goto_1

    .line 2157
    .end local v0           #byday:[I
    .end local v1           #bydayNum:[I
    .end local v3           #day:I
    .end local v4           #dayCount:I
    :cond_5
    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    .line 2158
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v12, v9, Landroid/pim/EventRecurrence;->freq:I

    .line 2159
    new-array v6, v10, [I

    .line 2160
    .local v6, days:[I
    const/4 v4, 0x1

    .line 2161
    .restart local v4       #dayCount:I
    new-array v5, v4, [I

    .line 2163
    .local v5, dayNum:[I
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->weekDay:I

    invoke-static {v9}, Landroid/pim/EventRecurrence;->timeDay2Day(I)I

    move-result v9

    aput v9, v6, v11

    .line 2165
    aput v11, v5, v11

    .line 2167
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput-object v6, v9, Landroid/pim/EventRecurrence;->byday:[I

    .line 2168
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput-object v5, v9, Landroid/pim/EventRecurrence;->bydayNum:[I

    .line 2169
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v4, v9, Landroid/pim/EventRecurrence;->bydayCount:I

    goto :goto_1

    .line 2170
    .end local v4           #dayCount:I
    .end local v5           #dayNum:[I
    .end local v6           #days:[I
    :cond_6
    if-ne v8, v12, :cond_7

    .line 2171
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v14, v9, Landroid/pim/EventRecurrence;->freq:I

    .line 2172
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v11, v9, Landroid/pim/EventRecurrence;->bydayCount:I

    .line 2173
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v10, v9, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    .line 2174
    new-array v2, v10, [I

    .line 2175
    .local v2, bymonthday:[I
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->monthDay:I

    aput v9, v2, v11

    .line 2176
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput-object v2, v9, Landroid/pim/EventRecurrence;->bymonthday:[I

    goto/16 :goto_1

    .line 2177
    .end local v2           #bymonthday:[I
    :cond_7
    if-ne v8, v13, :cond_9

    .line 2178
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v14, v9, Landroid/pim/EventRecurrence;->freq:I

    .line 2179
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v10, v9, Landroid/pim/EventRecurrence;->bydayCount:I

    .line 2180
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput v11, v9, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    .line 2182
    new-array v0, v10, [I

    .line 2183
    .restart local v0       #byday:[I
    new-array v1, v10, [I

    .line 2185
    .restart local v1       #bydayNum:[I
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x7

    add-int/lit8 v4, v9, 0x1

    .line 2186
    .restart local v4       #dayCount:I
    if-ne v4, v12, :cond_8

    .line 2187
    const/4 v4, -0x1

    .line 2189
    :cond_8
    aput v4, v1, v11

    .line 2190
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->weekDay:I

    invoke-static {v9}, Landroid/pim/EventRecurrence;->timeDay2Day(I)I

    move-result v9

    aput v9, v0, v11

    .line 2191
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput-object v0, v9, Landroid/pim/EventRecurrence;->byday:[I

    .line 2192
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    iput-object v1, v9, Landroid/pim/EventRecurrence;->bydayNum:[I

    goto/16 :goto_1

    .line 2193
    .end local v0           #byday:[I
    .end local v1           #bydayNum:[I
    .end local v4           #dayCount:I
    :cond_9
    if-ne v8, v14, :cond_2

    .line 2194
    iget-object v9, p0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    const/4 v10, 0x7

    iput v10, v9, Landroid/pim/EventRecurrence;->freq:I

    goto/16 :goto_1
.end method

.method private updateRemindersVisibility()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1556
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1557
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRemindersSeparator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1558
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRemindersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1563
    :goto_0
    return-void

    .line 1560
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRemindersSeparator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1561
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mRemindersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1199
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->save()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1206
    :goto_0
    return-void

    .line 1205
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mLoadingCalendarsDialog:Landroid/app/ProgressDialog;

    if-ne p1, v0, :cond_1

    .line 502
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/EditEvent;->mSaveAfterQueryComplete:Z

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mNoCalendarsDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mNoCalendarsDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_1

    .line 511
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneDialog:Landroid/app/AlertDialog;

    if-ne p1, v0, :cond_0

    .line 513
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    invoke-virtual {v0}, Lcom/android/calendar/TimezoneAdapter;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 514
    invoke-direct {p0, p2}, Lcom/android/calendar/EditEvent;->setTimezone(I)V

    .line 515
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->updateHomeTime()V

    .line 516
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 455
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mSaveButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 456
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->save()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDeleteButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 463
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 464
    .local v1, begin:J
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 465
    .local v3, end:J
    const/4 v6, -0x1

    .line 466
    .local v6, which:I
    iget v0, p0, Lcom/android/calendar/EditEvent;->mModification:I

    packed-switch v0, :pswitch_data_0

    .line 477
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    iget-object v5, p0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/DeleteEventHelper;->delete(JJLandroid/database/Cursor;I)V

    goto :goto_0

    .line 468
    :pswitch_0
    const/4 v6, 0x0

    .line 469
    goto :goto_1

    .line 471
    :pswitch_1
    const/4 v6, 0x1

    .line 472
    goto :goto_1

    .line 474
    :pswitch_2
    const/4 v6, 0x2

    goto :goto_1

    .line 481
    .end local v1           #begin:J
    .end local v3           #end:J
    .end local v6           #which:I
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mDiscardButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 482
    invoke-virtual {p0}, Lcom/android/calendar/EditEvent;->finish()V

    goto :goto_0

    .line 487
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 488
    .local v8, reminderItem:Landroid/widget/LinearLayout;
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 489
    .local v7, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 490
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 491
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->updateRemindersVisibility()V

    goto :goto_0

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 51
    .parameter "icicle"

    .prologue
    .line 627
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 628
    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->requestWindowFeature(I)Z

    .line 629
    const v6, 0x7f03000f

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->setContentView(I)V

    .line 631
    const/16 v42, 0x0

    .line 633
    .local v42, newEvent:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/EditEvent;->mFirstDayOfWeek:I

    .line 635
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    .line 636
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mUpdateTZ:Ljava/lang/Runnable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    .line 639
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getIntent()Landroid/content/Intent;

    move-result-object v38

    .line 640
    .local v38, intent:Landroid/content/Intent;
    invoke-virtual/range {v38 .. v38}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    move-object v6, v0

    if-eqz v6, :cond_2

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    move-object v5, v0

    sget-object v6, Lcom/android/calendar/EditEvent;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/calendar/EditEvent;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v6, v0

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v6, v0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_2

    .line 646
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->finish()V

    .line 914
    .end local p1
    :cond_1
    :goto_0
    return-void

    .line 651
    .restart local p1
    :cond_2
    const-string v6, "beginTime"

    const-wide/16 v8, 0x0

    move-object/from16 v0, v38

    move-object v1, v6

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v24

    .line 652
    .local v24, begin:J
    const-string v6, "endTime"

    const-wide/16 v8, 0x0

    move-object/from16 v0, v38

    move-object v1, v6

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v31

    .line 654
    .local v31, end:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08003f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 656
    .local v28, domain:Ljava/lang/String;
    const/16 v21, 0x0

    .line 657
    .local v21, allDay:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v6, v0

    if-eqz v6, :cond_a

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v6, v0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v6, v0

    const/16 v7, 0xf

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    :goto_1
    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/EditEvent;->mHasAttendeeData:Z

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v6, v0

    const/4 v7, 0x4

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    move/from16 v21, v6

    .line 662
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v6, v0

    const/16 v7, 0xa

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 663
    .local v48, rrule:Ljava/lang/String;
    if-nez v21, :cond_3

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v6, v0

    const/16 v7, 0x9

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    .line 668
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v6, v0

    const/4 v7, 0x6

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v26, v0

    .line 669
    .local v26, calendarId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v6, v0

    const/16 v7, 0xe

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/calendar/EditEvent;->extractDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 672
    .local v43, ownerDomain:Ljava/lang/String;
    if-eqz v43, :cond_4

    .line 673
    move-object/from16 v28, v43

    .line 678
    .end local v43           #ownerDomain:Ljava/lang/String;
    :cond_4
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object v6, v0

    const-string v7, "beginTime"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object v6, v0

    const-string v7, "endTime"

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object v6, v0

    const-string v7, "allDay"

    if-eqz v21, :cond_9

    const/4 v8, 0x1

    :goto_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object v6, v0

    const-string v7, "rrule"

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object v6, v0

    const-string v7, "eventTimezone"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object v6, v0

    const-string v7, "calendar_id"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 701
    .end local v26           #calendarId:J
    .end local v48           #rrule:Ljava/lang/String;
    :goto_4
    new-instance v6, Lcom/android/calendar/TimezoneAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    move-object v7, v0

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mTimezoneAdapter:Lcom/android/calendar/TimezoneAdapter;

    .line 704
    const-wide/16 v8, 0x0

    cmp-long v6, v24, v8

    if-eqz v6, :cond_5

    .line 705
    if-eqz v21, :cond_b

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object v6, v0

    const-string v7, "UTC"

    iput-object v7, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    move-object v7, v0

    iput-object v7, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->normalize(Z)J

    .line 718
    :cond_5
    :goto_5
    const-wide/16 v8, 0x0

    cmp-long v6, v31, v8

    if-eqz v6, :cond_6

    .line 719
    if-eqz v21, :cond_c

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object v6, v0

    const-string v7, "UTC"

    iput-object v7, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    move-object v7, v0

    iput-object v7, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/format/Time;->normalize(Z)J

    .line 732
    :cond_6
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v37

    .line 735
    .local v37, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f0c0003

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    .line 736
    const v6, 0x7f0c0033

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mLocationTextView:Landroid/widget/TextView;

    .line 737
    const v6, 0x7f0c0035

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mDescriptionTextView:Landroid/widget/TextView;

    .line 738
    const v6, 0x7f0c002f

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mTimezoneTextView:Landroid/widget/TextView;

    .line 739
    const v6, 0x7f030015

    const/4 v7, 0x0

    move-object/from16 v0, v37

    move v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mTimezoneFooterView:Landroid/widget/TextView;

    .line 740
    const v6, 0x7f0c0026

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    .line 741
    const v6, 0x7f0c002b

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    .line 742
    const v6, 0x7f0c0027

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    .line 743
    const v6, 0x7f0c002c

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    .line 744
    const v6, 0x7f0c0029

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mStartTimeHome:Landroid/widget/TextView;

    .line 745
    const v6, 0x7f0c0028

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mStartDateHome:Landroid/widget/TextView;

    .line 746
    const v6, 0x7f0c002e

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mEndTimeHome:Landroid/widget/TextView;

    .line 747
    const v6, 0x7f0c002d

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mEndDateHome:Landroid/widget/TextView;

    .line 748
    const v6, 0x7f0c0031

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    .line 749
    const v6, 0x7f0c0030

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mTimezoneButton:Landroid/widget/Button;

    .line 750
    const v6, 0x7f0c0016

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mCalendarsSpinner:Landroid/widget/Spinner;

    .line 751
    const v6, 0x7f0c003a

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mRepeatsSpinner:Landroid/widget/Spinner;

    .line 752
    const v6, 0x7f0c003d

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mAvailabilitySpinner:Landroid/widget/Spinner;

    .line 753
    const v6, 0x7f0c003f

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mVisibilitySpinner:Landroid/widget/Spinner;

    .line 754
    const v6, 0x7f0c0040

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mRemindersSeparator:Landroid/view/View;

    .line 755
    const v6, 0x7f0c0042

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mRemindersContainer:Landroid/widget/LinearLayout;

    .line 756
    const v6, 0x7f0c003b

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    .line 758
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/EditEvent;->mHasAttendeeData:Z

    move v6, v0

    if-eqz v6, :cond_d

    .line 759
    new-instance v6, Lcom/android/calendar/EmailAddressAdapter;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mAddressAdapter:Lcom/android/calendar/EmailAddressAdapter;

    .line 760
    new-instance v6, Lcom/android/common/Rfc822Validator;

    move-object v0, v6

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    .line 761
    const v6, 0x7f0c0038

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Lcom/android/calendar/EditEvent;->initMultiAutoCompleteTextView(I)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    .line 766
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    move-object v6, v0

    new-instance v7, Lcom/android/calendar/EditEvent$1;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/EditEvent$1;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 803
    if-eqz v21, :cond_e

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 809
    :goto_8
    const v6, 0x7f0c0044

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mSaveButton:Landroid/widget/Button;

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mSaveButton:Landroid/widget/Button;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 812
    const v6, 0x7f0c0046

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mDeleteButton:Landroid/widget/Button;

    .line 813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mDeleteButton:Landroid/widget/Button;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 815
    const v6, 0x7f0c0045

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mDiscardButton:Landroid/widget/Button;

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mDiscardButton:Landroid/widget/Button;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 819
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v45

    .line 820
    .local v45, r:Landroid/content/res/Resources;
    const v6, 0x7f060001

    move-object/from16 v0, v45

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v50

    .line 821
    .local v50, strings:[Ljava/lang/String;
    move-object/from16 v0, v50

    array-length v0, v0

    move/from16 v49, v0

    .line 822
    .local v49, size:I
    new-instance v40, Ljava/util/ArrayList;

    move-object/from16 v0, v40

    move/from16 v1, v49

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 823
    .local v40, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v36, 0x0

    .local v36, i:I
    :goto_9
    move/from16 v0, v36

    move/from16 v1, v49

    if-ge v0, v1, :cond_f

    .line 824
    aget-object v6, v50, v36

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v40

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    add-int/lit8 v36, v36, 0x1

    goto :goto_9

    .line 660
    .end local v36           #i:I
    .end local v37           #inflater:Landroid/view/LayoutInflater;
    .end local v40           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v45           #r:Landroid/content/res/Resources;
    .end local v49           #size:I
    .end local v50           #strings:[Ljava/lang/String;
    .restart local p1
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 661
    :cond_8
    const/4 v6, 0x0

    move/from16 v21, v6

    goto/16 :goto_2

    .line 681
    .restart local v26       #calendarId:J
    .restart local v48       #rrule:Ljava/lang/String;
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 686
    .end local v26           #calendarId:J
    .end local v48           #rrule:Ljava/lang/String;
    :cond_a
    const/16 v42, 0x1

    .line 689
    const-string v6, "allDay"

    const/4 v7, 0x0

    move-object/from16 v0, v38

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 692
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x5

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/view/Window;->setFeatureInt(II)V

    .line 696
    new-instance v6, Lcom/android/calendar/EditEvent$QueryHandler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EditEvent$QueryHandler;-><init>(Lcom/android/calendar/EditEvent;Landroid/content/ContentResolver;)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mQueryHandler:Lcom/android/calendar/EditEvent$QueryHandler;

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mQueryHandler:Lcom/android/calendar/EditEvent$QueryHandler;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/calendar/EditEvent;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v9, "access_level>=500 AND sync_events=1"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/calendar/EditEvent$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 713
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    move-object v7, v0

    iput-object v7, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_5

    .line 727
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    move-object v7, v0

    iput-object v7, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object v6, v0

    move-object v0, v6

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_6

    .line 763
    .end local p1
    .restart local v37       #inflater:Landroid/view/LayoutInflater;
    :cond_d
    const v6, 0x7f0c0037

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 806
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_8

    .line 826
    .restart local v36       #i:I
    .restart local v40       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v45       #r:Landroid/content/res/Resources;
    .restart local v49       #size:I
    .restart local v50       #strings:[Ljava/lang/String;
    :cond_f
    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    .line 827
    const/high16 v6, 0x7f06

    move-object/from16 v0, v45

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v39

    .line 828
    .local v39, labels:[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-static/range {v39 .. v39}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    .line 830
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/CalendarPreferenceActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v44

    .line 831
    .local v44, prefs:Landroid/content/SharedPreferences;
    const-string v6, "preferences_default_reminder"

    const-string v7, "0"

    move-object/from16 v0, v44

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 833
    .local v29, durationString:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/EditEvent;->mDefaultReminderMinutes:I

    .line 835
    if-eqz v42, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/EditEvent;->mDefaultReminderMinutes:I

    move v6, v0

    if-eqz v6, :cond_10

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    move-object v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/EditEvent;->mDefaultReminderMinutes:I

    move v9, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-static/range {v4 .. v9}, Lcom/android/calendar/EditEvent;->addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z

    .line 840
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v6, v0

    if-nez v6, :cond_11

    const-wide/16 v8, -0x1

    move-wide/from16 v33, v8

    .line 841
    .local v33, eventId:J
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 844
    .local v4, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v6, v0

    if-eqz v6, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v6, v0

    const/4 v7, 0x5

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_12

    const/4 v6, 0x1

    move/from16 v35, v6

    .line 846
    .local v35, hasAlarm:Z
    :goto_b
    if-eqz v35, :cond_15

    .line 847
    sget-object v5, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 848
    .local v5, uri:Landroid/net/Uri;
    const-string v6, "event_id=%d AND (method=1 OR method=0)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 849
    .local v7, where:Ljava/lang/String;
    sget-object v6, Lcom/android/calendar/EditEvent;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v46

    .line 853
    .end local v7           #where:Ljava/lang/String;
    .local v46, reminderCursor:Landroid/database/Cursor;
    :goto_c
    :try_start_0
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 854
    const/4 v6, 0x1

    move-object/from16 v0, v46

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 855
    .local v13, minutes:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    move-object v7, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v13

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/EditEvent;->addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_c

    .line 867
    .end local v13           #minutes:I
    :catchall_0
    move-exception v6

    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V

    throw v6

    .line 840
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v5           #uri:Landroid/net/Uri;
    .end local v33           #eventId:J
    .end local v35           #hasAlarm:Z
    .end local v46           #reminderCursor:Landroid/database/Cursor;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-wide/from16 v33, v8

    goto :goto_a

    .line 844
    .restart local v4       #cr:Landroid/content/ContentResolver;
    .restart local v33       #eventId:J
    :cond_12
    const/4 v6, 0x0

    move/from16 v35, v6

    goto :goto_b

    .line 859
    .restart local v5       #uri:Landroid/net/Uri;
    .restart local v35       #hasAlarm:Z
    .restart local v46       #reminderCursor:Landroid/database/Cursor;
    :cond_13
    const/4 v6, -0x1

    :try_start_1
    move-object/from16 v0, v46

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 860
    :goto_d
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 861
    const/4 v6, 0x1

    move-object/from16 v0, v46

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 862
    .restart local v13       #minutes:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    move-object v12, v0

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    invoke-static/range {v8 .. v13}, Lcom/android/calendar/EditEvent;->addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_d

    .line 867
    .end local v13           #minutes:I
    :cond_14
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V

    .line 870
    .end local v5           #uri:Landroid/net/Uri;
    .end local v46           #reminderCursor:Landroid/database/Cursor;
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->updateRemindersVisibility()V

    .line 873
    new-instance v20, Lcom/android/calendar/EditEvent$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/EditEvent$2;-><init>(Lcom/android/calendar/EditEvent;)V

    .line 878
    .local v20, addReminderOnClickListener:Landroid/view/View$OnClickListener;
    const v6, 0x7f0c0043

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/ImageButton;

    .line 879
    .local v47, reminderRemoveButton:Landroid/widget/ImageButton;
    move-object/from16 v0, v47

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 881
    new-instance v6, Lcom/android/calendar/DeleteEventHelper;

    const/4 v7, 0x1

    move-object v0, v6

    move-object/from16 v1, p0

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/app/Activity;Z)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 884
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/EditEvent;->mHasAttendeeData:Z

    move v6, v0

    if-eqz v6, :cond_1a

    const-wide/16 v8, -0x1

    cmp-long v6, v33, v8

    if-eqz v6, :cond_1a

    .line 885
    sget-object v5, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 886
    .restart local v5       #uri:Landroid/net/Uri;
    const/4 v6, 0x1

    move v0, v6

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v6, 0x0

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v18, v6

    .line 887
    .local v18, whereArgs:[Ljava/lang/String;
    sget-object v16, Lcom/android/calendar/EditEvent;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v17, "event_id=? AND attendeeRelationship<>2"

    const/16 v19, 0x0

    move-object v14, v4

    move-object v15, v5

    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 890
    .local v22, attendeeCursor:Landroid/database/Cursor;
    :try_start_2
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 891
    .local v23, b:Ljava/lang/StringBuilder;
    :cond_16
    :goto_e
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 892
    const/4 v6, 0x0

    move-object/from16 v0, v22

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 893
    .local v41, name:Ljava/lang/String;
    const/4 v6, 0x1

    move-object/from16 v0, v22

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 894
    .local v30, email:Ljava/lang/String;
    if-eqz v30, :cond_16

    .line 895
    if-eqz v41, :cond_17

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_17

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 896
    const/16 v6, 0x22

    move-object/from16 v0, v23

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    :cond_17
    const/16 v6, 0x3c

    move-object/from16 v0, v23

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_e

    .line 906
    .end local v23           #b:Ljava/lang/StringBuilder;
    .end local v30           #email:Ljava/lang/String;
    .end local v41           #name:Ljava/lang/String;
    :catchall_1
    move-exception v6

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    throw v6

    .line 901
    .restart local v23       #b:Ljava/lang/StringBuilder;
    :cond_18
    :try_start_3
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_19

    .line 902
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/lang/String;

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mOriginalAttendees:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 906
    :cond_19
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 909
    .end local v5           #uri:Landroid/net/Uri;
    .end local v18           #whereArgs:[Ljava/lang/String;
    .end local v22           #attendeeCursor:Landroid/database/Cursor;
    .end local v23           #b:Ljava/lang/StringBuilder;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v6, v0

    if-nez v6, :cond_1

    .line 912
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/android/calendar/EditEvent;->initFromIntent(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x7f020012

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1128
    const v1, 0x7f08002b

    invoke-interface {p1, v3, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1130
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x7f020011

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1131
    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1133
    const v1, 0x7f080030

    invoke-interface {p1, v4, v4, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1135
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1136
    const v1, 0x7f080031

    invoke-interface {p1, v5, v5, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1138
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 1179
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1190
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1181
    :pswitch_0
    invoke-direct {p0}, Lcom/android/calendar/EditEvent;->addReminder()V

    move v0, v2

    .line 1182
    goto :goto_0

    .line 1184
    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v0, v2

    .line 1185
    goto :goto_0

    .line 1187
    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v0, v2

    .line 1188
    goto :goto_0

    .line 1179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1145
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1146
    invoke-interface {p1, v2, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1147
    invoke-interface {p1, v2, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1153
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1154
    invoke-interface {p1, v4, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1155
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1161
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 1149
    :cond_0
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1150
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_0

    .line 1157
    :cond_1
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1158
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 19

    .prologue
    .line 991
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v16

    if-nez v16, :cond_1

    .line 996
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->finish()V

    .line 1123
    :goto_0
    return-void

    .line 1001
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object v5, v0

    .line 1003
    .local v5, cursor:Landroid/database/Cursor;
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1005
    const/16 v16, 0xa

    move-object v0, v5

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    .line 1006
    const/16 v16, 0x1

    move-object v0, v5

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1007
    .local v14, title:Ljava/lang/String;
    const/16 v16, 0x2

    move-object v0, v5

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1008
    .local v6, description:Ljava/lang/String;
    const/16 v16, 0x3

    move-object v0, v5

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1009
    .local v10, location:Ljava/lang/String;
    const/16 v16, 0xc

    move-object v0, v5

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1010
    .local v3, availability:I
    const/16 v16, 0xd

    move-object v0, v5

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1011
    .local v15, visibility:I
    if-lez v15, :cond_2

    .line 1013
    add-int/lit8 v15, v15, -0x1

    .line 1016
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/EditEvent;->mModification:I

    move/from16 v16, v0

    if-nez v16, :cond_3

    .line 1019
    const/16 v16, 0xb

    move-object v0, v5

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EditEvent;->mSyncId:Ljava/lang/String;

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEventRecurrence:Landroid/pim/EventRecurrence;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mRrule:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/pim/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 1024
    const/4 v7, 0x0

    .line 1026
    .local v7, itemIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mSyncId:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_5

    .line 1027
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->isFirstEventInSeries()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1029
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object v9, v0

    .line 1041
    .local v9, items:[Ljava/lang/CharSequence;
    :goto_1
    add-int/lit8 v8, v7, 0x1

    .end local v7           #itemIndex:I
    .local v8, itemIndex:I
    const v16, 0x7f08005c

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    aput-object v16, v9, v7

    .line 1044
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->isFirstEventInSeries()Z

    move-result v16

    if-nez v16, :cond_b

    .line 1047
    add-int/lit8 v7, v8, 0x1

    .end local v8           #itemIndex:I
    .restart local v7       #itemIndex:I
    const v16, 0x7f08005d

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    aput-object v16, v9, v8

    .line 1051
    :goto_2
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v17, Lcom/android/calendar/EditEvent$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/EditEvent$4;-><init>(Lcom/android/calendar/EditEvent;)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x7f080049

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    new-instance v17, Lcom/android/calendar/EditEvent$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/EditEvent$3;-><init>(Lcom/android/calendar/EditEvent;)V

    move-object/from16 v0, v16

    move-object v1, v9

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1083
    .end local v7           #itemIndex:I
    .end local v9           #items:[Ljava/lang/CharSequence;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mLocationTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mDescriptionTextView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mAvailabilitySpinner:Landroid/widget/Spinner;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mVisibilitySpinner:Landroid/widget/Spinner;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1091
    const v16, 0x7f0c0036

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1092
    .local v4, calendarGroup:Landroid/view/View;
    const/16 v16, 0x8

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1118
    .end local v3           #availability:I
    .end local v4           #calendarGroup:Landroid/view/View;
    .end local v5           #cursor:Landroid/database/Cursor;
    .end local v6           #description:Ljava/lang/String;
    .end local v10           #location:Ljava/lang/String;
    .end local v14           #title:Ljava/lang/String;
    .end local v15           #visibility:I
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->updateRemindersVisibility()V

    .line 1119
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->populateWhen()V

    .line 1120
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->populateTimezone()V

    .line 1121
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->updateHomeTime()V

    .line 1122
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->populateRepeats()V

    goto/16 :goto_0

    .line 1031
    .restart local v3       #availability:I
    .restart local v5       #cursor:Landroid/database/Cursor;
    .restart local v6       #description:Ljava/lang/String;
    .restart local v7       #itemIndex:I
    .restart local v10       #location:Ljava/lang/String;
    .restart local v14       #title:Ljava/lang/String;
    .restart local v15       #visibility:I
    :cond_4
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object v9, v0

    .restart local v9       #items:[Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 1034
    .end local v9           #items:[Ljava/lang/CharSequence;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EditEvent;->isFirstEventInSeries()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1035
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object v9, v0

    .line 1039
    .restart local v9       #items:[Ljava/lang/CharSequence;
    :goto_4
    add-int/lit8 v8, v7, 0x1

    .end local v7           #itemIndex:I
    .restart local v8       #itemIndex:I
    const v16, 0x7f08005b

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    aput-object v16, v9, v7

    move v7, v8

    .end local v8           #itemIndex:I
    .restart local v7       #itemIndex:I
    goto/16 :goto_1

    .line 1037
    .end local v9           #items:[Ljava/lang/CharSequence;
    :cond_6
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object v9, v0

    .restart local v9       #items:[Ljava/lang/CharSequence;
    goto :goto_4

    .line 1095
    .end local v3           #availability:I
    .end local v5           #cursor:Landroid/database/Cursor;
    .end local v6           #description:Ljava/lang/String;
    .end local v7           #itemIndex:I
    .end local v9           #items:[Ljava/lang/CharSequence;
    .end local v10           #location:Ljava/lang/String;
    .end local v14           #title:Ljava/lang/String;
    .end local v15           #visibility:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/format/Time;->isEpoch(Landroid/text/format/Time;)Z

    move-result v16

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/format/Time;->isEpoch(Landroid/text/format/Time;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/text/format/Time;->setToNow()V

    .line 1099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move v11, v0

    .line 1101
    .local v11, minute:I
    if-nez v11, :cond_9

    .line 1110
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v12

    .line 1111
    .local v12, startMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v16, v0

    const-wide/32 v17, 0x36ee80

    add-long v17, v17, v12

    invoke-virtual/range {v16 .. v18}, Landroid/text/format/Time;->set(J)V

    .line 1115
    .end local v11           #minute:I
    .end local v12           #startMillis:J
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mDeleteButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    .line 1103
    .restart local v11       #minute:I
    :cond_9
    if-lez v11, :cond_a

    const/16 v16, 0x1e

    move v0, v11

    move/from16 v1, v16

    if-gt v0, v1, :cond_a

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v16, v0

    const/16 v17, 0x1e

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->minute:I

    goto :goto_5

    .line 1106
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->hour:I

    goto :goto_5

    .end local v11           #minute:I
    .restart local v3       #availability:I
    .restart local v5       #cursor:Landroid/database/Cursor;
    .restart local v6       #description:Ljava/lang/String;
    .restart local v8       #itemIndex:I
    .restart local v9       #items:[Ljava/lang/CharSequence;
    .restart local v10       #location:Ljava/lang/String;
    .restart local v14       #title:Ljava/lang/String;
    .restart local v15       #visibility:I
    :cond_b
    move v7, v8

    .end local v8           #itemIndex:I
    .restart local v7       #itemIndex:I
    goto/16 :goto_2
.end method
