.class public Lcom/android/calendar/EventInfoActivity;
.super Landroid/app/Activity;
.source "EventInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;,
        Lcom/android/calendar/EventInfoActivity$Attendee;,
        Lcom/android/calendar/EventInfoActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final ATTENDEES_INDEX_EMAIL:I = 0x2

.field private static final ATTENDEES_INDEX_ID:I = 0x0

.field private static final ATTENDEES_INDEX_NAME:I = 0x1

.field private static final ATTENDEES_INDEX_RELATIONSHIP:I = 0x3

.field private static final ATTENDEES_INDEX_STATUS:I = 0x4

.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String; = null

.field private static final ATTENDEES_SORT_ORDER:Ljava/lang/String; = "attendeeName ASC, attendeeEmail ASC"

.field private static final ATTENDEES_WHERE:Ljava/lang/String; = "event_id=%d"

.field private static final ATTENDEE_ID_NONE:I = -0x1

.field private static final ATTENDEE_NO_RESPONSE:I = -0x1

.field private static final ATTENDEE_VALUES:[I = null

.field static final CALENDARS_DUPLICATE_NAME_WHERE:Ljava/lang/String; = "displayName=?"

.field static final CALENDARS_INDEX_DISPLAY_NAME:I = 0x1

.field static final CALENDARS_INDEX_OWNER_ACCOUNT:I = 0x2

.field static final CALENDARS_INDEX_OWNER_CAN_RESPOND:I = 0x3

.field static final CALENDARS_PROJECTION:[Ljava/lang/String; = null

.field static final CALENDARS_WHERE:Ljava/lang/String; = "_id=%d"

.field private static final CONTACT_DATA_WITH_PRESENCE_URI:Landroid/net/Uri; = null

.field public static final DEBUG:Z = false

.field private static final EVENT_INDEX_ACCESS_LEVEL:I = 0xb

.field private static final EVENT_INDEX_ALL_DAY:I = 0x3

.field private static final EVENT_INDEX_CALENDAR_ID:I = 0x4

.field private static final EVENT_INDEX_CAN_INVITE_OTHERS:I = 0xf

.field private static final EVENT_INDEX_COLOR:I = 0xc

.field private static final EVENT_INDEX_DESCRIPTION:I = 0x8

.field private static final EVENT_INDEX_EVENT_LOCATION:I = 0x9

.field private static final EVENT_INDEX_EVENT_TIMEZONE:I = 0x7

.field private static final EVENT_INDEX_GUESTS_CAN_MODIFY:I = 0xe

.field private static final EVENT_INDEX_HAS_ALARM:I = 0xa

.field private static final EVENT_INDEX_HAS_ATTENDEE_DATA:I = 0xd

.field private static final EVENT_INDEX_ID:I = 0x0

.field private static final EVENT_INDEX_ORGANIZER:I = 0x10

.field private static final EVENT_INDEX_RRULE:I = 0x2

.field private static final EVENT_INDEX_SYNC_ID:I = 0x6

.field private static final EVENT_INDEX_TITLE:I = 0x1

.field private static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field private static final MAX_REMINDERS:I = 0x5

.field private static final MENU_ADD_REMINDER:I = 0x1

.field private static final MENU_DELETE:I = 0x3

.field private static final MENU_EDIT:I = 0x2

.field private static final MENU_GROUP_DELETE:I = 0x3

.field private static final MENU_GROUP_EDIT:I = 0x2

.field private static final MENU_GROUP_REMINDER:I = 0x1

.field private static final PRESENCE_PROJECTION:[Ljava/lang/String; = null

.field private static final REMINDERS_INDEX_MINUTES:I = 0x1

.field private static final REMINDERS_PROJECTION:[Ljava/lang/String; = null

.field private static final REMINDERS_SORT:Ljava/lang/String; = "minutes"

.field private static final REMINDERS_WHERE:Ljava/lang/String; = "event_id=%d AND (method=1 OR method=0)"

.field public static final TAG:Ljava/lang/String; = "EventInfoActivity"

.field static final UPDATE_ALL:I = 0x1

.field static final UPDATE_SINGLE:I


# instance fields
.field PRESENCE_PROJECTION_CONTACT_ID_INDEX:I

.field PRESENCE_PROJECTION_EMAIL_INDEX:I

.field PRESENCE_PROJECTION_PHOTO_ID_INDEX:I

.field PRESENCE_PROJECTION_PRESENCE_INDEX:I

.field mAcceptedAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/EventInfoActivity$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mAttendeeResponseFromIntent:I

.field private mAttendeesCursor:Landroid/database/Cursor;

.field private mCalendarOwnerAccount:Ljava/lang/String;

.field private mCalendarOwnerAttendeeId:J

.field private mCalendarsCursor:Landroid/database/Cursor;

.field private mCanModifyCalendar:Z

.field private mCanModifyEvent:Z

.field private mColor:I

.field mDeclinedAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/EventInfoActivity$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultReminderMinutes:I

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

.field private mEndMillis:J

.field private mEventCursor:Landroid/database/Cursor;

.field private mEventId:J

.field private mHasAttendeeData:Z

.field private mIsBusyFreeCalendar:Z

.field private mIsDuplicateName:Z

.field private mIsOrganizer:Z

.field private mIsRepeating:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field mNoResponseAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/EventInfoActivity$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mNumOfAttendees:I

.field private mOrganizer:Ljava/lang/String;

.field private mOrganizerCanRespond:Z

.field private mOrganizerContainer:Landroid/widget/LinearLayout;

.field private mOrganizerView:Landroid/widget/TextView;

.field private mOriginalAttendeeResponse:I

.field private mOriginalHasAlarm:Z

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

.field private mPresenceQueryHandler:Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;

.field private mReminderAdder:Landroid/widget/LinearLayout;

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

.field private mResponseOffset:I

.field private mStartMillis:J

.field mTentativeAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/EventInfoActivity$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateCounts:I

.field private mUpdateTZ:Ljava/lang/Runnable;

.field private mUri:Landroid/net/Uri;

.field private mViewHolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/EventInfoActivity$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mWildcardPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "rrule"

    aput-object v1, v0, v5

    const-string v1, "allDay"

    aput-object v1, v0, v7

    const-string v1, "calendar_id"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "access_level"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "color"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hasAttendeeData"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "guestsCanModify"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "guestsCanInviteOthers"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "organizer"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 137
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "attendeeName"

    aput-object v1, v0, v4

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v5

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v7

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 155
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "displayName"

    aput-object v1, v0, v4

    const-string v1, "ownerAccount"

    aput-object v1, v0, v5

    const-string v1, "organizerCanRespond"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 168
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "minutes"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 188
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->ATTENDEE_VALUES:[I

    .line 249
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->CONTACT_DATA_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 256
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "contact_presence"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v5

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION:[Ljava/lang/String;

    return-void

    .line 188
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 210
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalMinutes:Ljava/util/ArrayList;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    .line 231
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeeResponseFromIntent:I

    .line 235
    const-string v0, "^.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mWildcardPattern:Ljava/util/regex/Pattern;

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mViewHolders:Ljava/util/HashMap;

    .line 251
    iput v2, p0, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION_CONTACT_ID_INDEX:I

    .line 252
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION_PRESENCE_INDEX:I

    .line 253
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION_EMAIL_INDEX:I

    .line 254
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION_PHOTO_ID_INDEX:I

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mNoResponseAttendees:Ljava/util/ArrayList;

    .line 270
    new-instance v0, Lcom/android/calendar/EventInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventInfoActivity$1;-><init>(Lcom/android/calendar/EventInfoActivity;)V

    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mUpdateTZ:Ljava/lang/Runnable;

    .line 1093
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/EventInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->updateView()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/calendar/EventInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->addReminder()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/calendar/EventInfoActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mViewHolders:Ljava/util/HashMap;

    return-object v0
.end method

.method private addAttendee(Landroid/content/ContentValues;Ljava/util/ArrayList;ILcom/android/calendar/EventInfoActivity$Attendee;I)V
    .locals 3
    .parameter "values"
    .parameter
    .parameter "eventIdIndex"
    .parameter "attendee"
    .parameter "attendeeStatus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Lcom/android/calendar/EventInfoActivity$Attendee;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 851
    .local p2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 852
    const-string v1, "attendeeName"

    iget-object v2, p4, Lcom/android/calendar/EventInfoActivity$Attendee;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-string v1, "attendeeEmail"

    iget-object v2, p4, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string v1, "attendeeRelationship"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 855
    const-string v1, "attendeeType"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 856
    const-string v1, "attendeeStatus"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 858
    sget-object v1, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 859
    .local v0, b:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 860
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    return-void
.end method

.method private addAttendeesToLayout(Ljava/util/ArrayList;Landroid/widget/LinearLayout;Ljava/lang/CharSequence;)V
    .locals 20
    .parameter
    .parameter "attendeeList"
    .parameter "sectionTitle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/EventInfoActivity$Attendee;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1043
    .local p1, attendees:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/EventInfoActivity$Attendee;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1091
    .end local p3
    :goto_0
    return-void

    .line 1048
    .restart local p3
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object v3, v0

    const v4, 0x7f03000c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1049
    .local v16, titleView:Landroid/widget/TextView;
    const v3, 0x7f080007

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1053
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1054
    .local v14, numOfAttendees:I
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v3, "data1 IN ("

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1055
    .local v15, selection:Ljava/lang/StringBuilder;
    new-array v9, v14, [Ljava/lang/String;

    .line 1057
    .local v9, selectionArgs:[Ljava/lang/String;
    const/4 v12, 0x0

    .end local p3
    .local v12, i:I
    :goto_1
    if-ge v12, v14, :cond_4

    .line 1058
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/calendar/EventInfoActivity$Attendee;

    .line 1059
    .local v11, attendee:Lcom/android/calendar/EventInfoActivity$Attendee;
    iget-object v3, v11, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    aput-object v3, v9, v12

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object v3, v0

    const v4, 0x7f03000d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 1062
    .local v18, v:Landroid/view/View;
    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1065
    const v3, 0x7f0c001c

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1066
    .local v17, tv:Landroid/widget/TextView;
    iget-object v13, v11, Lcom/android/calendar/EventInfoActivity$Attendee;->mName:Ljava/lang/String;

    .line 1067
    .local v13, name:Ljava/lang/String;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 1068
    :cond_1
    iget-object v13, v11, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    .line 1070
    :cond_2
    move-object/from16 v0, v17

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    new-instance v19, Lcom/android/calendar/EventInfoActivity$ViewHolder;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/calendar/EventInfoActivity$ViewHolder;-><init>(Lcom/android/calendar/EventInfoActivity$1;)V

    .line 1073
    .local v19, vh:Lcom/android/calendar/EventInfoActivity$ViewHolder;
    const v3, 0x7f0c001d

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/QuickContactBadge;

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity$ViewHolder;->badge:Landroid/widget/QuickContactBadge;

    .line 1074
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity$ViewHolder;->badge:Landroid/widget/QuickContactBadge;

    move-object v3, v0

    iget-object v4, v11, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 1075
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity$ViewHolder;->badge:Landroid/widget/QuickContactBadge;

    move-object v3, v0

    const v4, 0x10803bc

    invoke-virtual {v3, v4}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    .line 1076
    const v3, 0x7f0c001e

    move-object/from16 v0, v18

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity$ViewHolder;->presence:Landroid/widget/ImageView;

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mViewHolders:Ljava/util/HashMap;

    move-object v3, v0

    iget-object v4, v11, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    if-nez v12, :cond_3

    .line 1080
    const/16 v3, 0x3f

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1085
    :goto_2
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1057
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 1082
    :cond_3
    const-string v3, ", ?"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1087
    .end local v11           #attendee:Lcom/android/calendar/EventInfoActivity$Attendee;
    .end local v13           #name:Ljava/lang/String;
    .end local v17           #tv:Landroid/widget/TextView;
    .end local v18           #v:Landroid/view/View;
    .end local v19           #vh:Lcom/android/calendar/EventInfoActivity$ViewHolder;
    :cond_4
    const/16 v3, 0x29

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mPresenceQueryHandler:Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/EventInfoActivity;->mUpdateCounts:I

    move v4, v0

    sget-object v6, Lcom/android/calendar/EventInfoActivity;->CONTACT_DATA_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/calendar/EventInfoActivity;->PRESENCE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private addReminder()V
    .locals 6

    .prologue
    .line 652
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mDefaultReminderMinutes:I

    if-nez v0, :cond_0

    .line 653
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity;->mReminderLabels:Ljava/util/ArrayList;

    const/16 v5, 0xa

    move-object v0, p0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/EditEvent;->addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z

    .line 659
    :goto_0
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->updateRemindersVisibility()V

    .line 660
    return-void

    .line 656
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity;->mReminderLabels:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/calendar/EventInfoActivity;->mDefaultReminderMinutes:I

    move-object v0, p0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/EditEvent;->addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z

    goto :goto_0
.end method

.method private canAddReminders()Z
    .locals 2

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoActivity;->mIsBusyFreeCalendar:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createExceptionResponse(Landroid/content/ContentResolver;JJI)V
    .locals 21
    .parameter "cr"
    .parameter "eventId"
    .parameter "attendeeId"
    .parameter "status"

    .prologue
    .line 771
    sget-object v3, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v3

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 772
    .local v4, uri:Landroid/net/Uri;
    sget-object v5, Lcom/android/calendar/EventInfoActivity;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 773
    .local v13, cursor:Landroid/database/Cursor;
    if-nez v13, :cond_0

    .line 837
    .end local v4           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 776
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    .line 777
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 782
    :cond_1
    :try_start_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 784
    .local v6, values:Landroid/content/ContentValues;
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 785
    .local v18, title:Ljava/lang/String;
    const/4 v3, 0x7

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 786
    .local v17, timezone:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 787
    .local v12, calendarId:I
    const/4 v3, 0x3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    move v11, v3

    .line 788
    .local v11, allDay:Z
    :goto_1
    const/4 v3, 0x6

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 790
    .local v16, syncId:Ljava/lang/String;
    const-string v3, "title"

    move-object v0, v6

    move-object v1, v3

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const-string v3, "eventTimezone"

    move-object v0, v6

    move-object v1, v3

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v3, "allDay"

    if-eqz v11, :cond_3

    const/4 v4, 0x1

    .end local v4           #uri:Landroid/net/Uri;
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 793
    const-string v3, "calendar_id"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 794
    const-string v3, "dtstart"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 795
    const-string v3, "dtend"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 796
    const-string v3, "originalEvent"

    move-object v0, v6

    move-object v1, v3

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const-string v3, "originalInstanceTime"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 798
    const-string v3, "originalAllDay"

    if-eqz v11, :cond_4

    const/4 v4, 0x1

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 799
    const-string v3, "eventStatus"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 800
    const-string v3, "selfAttendeeStatus"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 802
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 803
    .local v7, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 805
    .local v8, eventIdIndex:I
    sget-object v3, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/EventInfoActivity;->mHasAttendeeData:Z

    move v3, v0

    if-eqz v3, :cond_8

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/EventInfoActivity$Attendee;

    .line 812
    .local v9, attendee:Lcom/android/calendar/EventInfoActivity$Attendee;
    const/4 v10, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/calendar/EventInfoActivity;->addAttendee(Landroid/content/ContentValues;Ljava/util/ArrayList;ILcom/android/calendar/EventInfoActivity$Attendee;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    .line 830
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v7           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v8           #eventIdIndex:I
    .end local v9           #attendee:Lcom/android/calendar/EventInfoActivity$Attendee;
    .end local v11           #allDay:Z
    .end local v12           #calendarId:I
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #syncId:Ljava/lang/String;
    .end local v17           #timezone:Ljava/lang/String;
    .end local v18           #title:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v14, v3

    .line 831
    .local v14, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "EventInfoActivity"

    const-string v4, "Ignoring exception: "

    invoke-static {v3, v4, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 835
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 787
    .end local v14           #e:Landroid/os/RemoteException;
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v6       #values:Landroid/content/ContentValues;
    .restart local v12       #calendarId:I
    .restart local v17       #timezone:Ljava/lang/String;
    .restart local v18       #title:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    move v11, v3

    goto/16 :goto_1

    .line 792
    .restart local v11       #allDay:Z
    .restart local v16       #syncId:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 798
    .end local v4           #uri:Landroid/net/Uri;
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 815
    .restart local v7       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v8       #eventIdIndex:I
    .restart local v15       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/EventInfoActivity$Attendee;

    .line 816
    .restart local v9       #attendee:Lcom/android/calendar/EventInfoActivity$Attendee;
    const/4 v10, 0x2

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/calendar/EventInfoActivity;->addAttendee(Landroid/content/ContentValues;Ljava/util/ArrayList;ILcom/android/calendar/EventInfoActivity$Attendee;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 832
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v7           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v8           #eventIdIndex:I
    .end local v9           #attendee:Lcom/android/calendar/EventInfoActivity$Attendee;
    .end local v11           #allDay:Z
    .end local v12           #calendarId:I
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #syncId:Ljava/lang/String;
    .end local v17           #timezone:Ljava/lang/String;
    .end local v18           #title:Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v14, v3

    .line 833
    .local v14, e:Landroid/content/OperationApplicationException;
    :try_start_3
    const-string v3, "EventInfoActivity"

    const-string v4, "Ignoring exception: "

    invoke-static {v3, v4, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 835
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 819
    .end local v14           #e:Landroid/content/OperationApplicationException;
    .restart local v6       #values:Landroid/content/ContentValues;
    .restart local v7       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v8       #eventIdIndex:I
    .restart local v11       #allDay:Z
    .restart local v12       #calendarId:I
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v16       #syncId:Ljava/lang/String;
    .restart local v17       #timezone:Ljava/lang/String;
    .restart local v18       #title:Ljava/lang/String;
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/EventInfoActivity$Attendee;

    .line 820
    .restart local v9       #attendee:Lcom/android/calendar/EventInfoActivity$Attendee;
    const/4 v10, 0x4

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/calendar/EventInfoActivity;->addAttendee(Landroid/content/ContentValues;Ljava/util/ArrayList;ILcom/android/calendar/EventInfoActivity$Attendee;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    .line 835
    .end local v6           #values:Landroid/content/ContentValues;
    .end local v7           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v8           #eventIdIndex:I
    .end local v9           #attendee:Lcom/android/calendar/EventInfoActivity$Attendee;
    .end local v11           #allDay:Z
    .end local v12           #calendarId:I
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #syncId:Ljava/lang/String;
    .end local v17           #timezone:Ljava/lang/String;
    .end local v18           #title:Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 823
    .restart local v6       #values:Landroid/content/ContentValues;
    .restart local v7       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v8       #eventIdIndex:I
    .restart local v11       #allDay:Z
    .restart local v12       #calendarId:I
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v16       #syncId:Ljava/lang/String;
    .restart local v17       #timezone:Ljava/lang/String;
    .restart local v18       #title:Ljava/lang/String;
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mNoResponseAttendees:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/EventInfoActivity$Attendee;

    .line 824
    .restart local v9       #attendee:Lcom/android/calendar/EventInfoActivity$Attendee;
    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/calendar/EventInfoActivity;->addAttendee(Landroid/content/ContentValues;Ljava/util/ArrayList;ILcom/android/calendar/EventInfoActivity$Attendee;I)V

    goto :goto_7

    .line 829
    .end local v9           #attendee:Lcom/android/calendar/EventInfoActivity$Attendee;
    .end local v15           #i$:Ljava/util/Iterator;
    :cond_8
    const-string v3, "com.android.calendar"

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_5 .. :try_end_5} :catch_1

    .line 835
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private doDelete()V
    .locals 7

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    iget-wide v1, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    iget-wide v3, p0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    iget-object v5, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v6, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/DeleteEventHelper;->delete(JJLandroid/database/Cursor;I)V

    .line 885
    return-void
.end method

.method private doEdit()V
    .locals 5

    .prologue
    .line 874
    sget-object v2, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 875
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 876
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "beginTime"

    iget-wide v3, p0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 877
    const-string v2, "endTime"

    iget-wide v3, p0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 878
    const-class v2, Lcom/android/calendar/EditEvent;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 879
    invoke-virtual {p0, v0}, Lcom/android/calendar/EventInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 880
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->finish()V

    .line 881
    return-void
.end method

.method private findResponseIndexFor(I)I
    .locals 3
    .parameter "response"

    .prologue
    .line 864
    sget-object v2, Lcom/android/calendar/EventInfoActivity;->ATTENDEE_VALUES:[I

    array-length v1, v2

    .line 865
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 866
    sget-object v2, Lcom/android/calendar/EventInfoActivity;->ATTENDEE_VALUES:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    move v2, v0

    .line 870
    :goto_1
    return v2

    .line 865
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 870
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private initAttendeesCursor()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 508
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    .line 509
    iput-wide v8, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    .line 510
    iput v5, p0, Lcom/android/calendar/EventInfoActivity;->mNumOfAttendees:I

    .line 511
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_2

    .line 512
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iput v3, p0, Lcom/android/calendar/EventInfoActivity;->mNumOfAttendees:I

    .line 513
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 514
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 515
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 516
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 517
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mNoResponseAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 520
    :cond_0
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 521
    .local v2, status:I
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, email:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 527
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 528
    iput-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mOrganizer:Ljava/lang/String;

    .line 534
    :cond_1
    :goto_0
    iget-wide v3, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    cmp-long v3, v3, v8

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 536
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    .line 537
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    .line 556
    :goto_1
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 557
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 559
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->updateAttendees()V

    .line 565
    .end local v0           #email:Ljava/lang/String;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #status:I
    :cond_2
    iget-boolean v3, p0, Lcom/android/calendar/EventInfoActivity;->mIsOrganizer:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/calendar/EventInfoActivity;->mHasAttendeeData:Z

    if-eqz v3, :cond_5

    .line 566
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mOrganizerContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 567
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mOrganizerView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity;->mOrganizer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    :goto_2
    return-void

    .line 529
    .restart local v0       #email:Ljava/lang/String;
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #status:I
    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 530
    iput-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mOrganizer:Ljava/lang/String;

    goto :goto_0

    .line 542
    :cond_4
    packed-switch v2, :pswitch_data_0

    .line 553
    :goto_3
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/calendar/EventInfoActivity$Attendee;

    invoke-direct {v4, v1, v0}, Lcom/android/calendar/EventInfoActivity$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 544
    :pswitch_0
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/calendar/EventInfoActivity$Attendee;

    invoke-direct {v4, v1, v0}, Lcom/android/calendar/EventInfoActivity$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 547
    :pswitch_1
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/calendar/EventInfoActivity$Attendee;

    invoke-direct {v4, v1, v0}, Lcom/android/calendar/EventInfoActivity$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 550
    :pswitch_2
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mNoResponseAttendees:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/calendar/EventInfoActivity$Attendee;

    invoke-direct {v4, v1, v0}, Lcom/android/calendar/EventInfoActivity$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 569
    .end local v0           #email:Ljava/lang/String;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #status:I
    :cond_5
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mOrganizerContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 542
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initCalendarsCursor()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 577
    :cond_0
    return-void
.end method

.method private initEventCursor()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 486
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v4

    .line 493
    :goto_0
    return v1

    .line 489
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 490
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    .line 491
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, rRule:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mIsRepeating:Z

    move v1, v3

    .line 493
    goto :goto_0

    :cond_2
    move v1, v3

    .line 492
    goto :goto_1
.end method

.method private saveResponse(Landroid/content/ContentResolver;)Z
    .locals 11
    .parameter "cr"

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 705
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    :cond_0
    move v0, v4

    .line 750
    :goto_0
    return v0

    .line 708
    :cond_1
    const v0, 0x7f0c0055

    invoke-virtual {p0, v0}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 709
    .local v8, spinner:Landroid/widget/Spinner;
    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    sub-int v7, v0, v1

    .line 710
    .local v7, position:I
    if-gtz v7, :cond_2

    move v0, v4

    .line 711
    goto :goto_0

    .line 714
    :cond_2
    sget-object v0, Lcom/android/calendar/EventInfoActivity;->ATTENDEE_VALUES:[I

    aget v6, v0, v7

    .line 717
    .local v6, status:I
    iget v0, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    if-ne v6, v0, :cond_3

    move v0, v4

    .line 718
    goto :goto_0

    .line 722
    :cond_3
    iget-wide v0, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    move v0, v4

    .line 723
    goto :goto_0

    .line 727
    :cond_4
    iput v6, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    iput v6, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeeResponseFromIntent:I

    .line 729
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoActivity;->mIsRepeating:Z

    if-nez v0, :cond_5

    .line 731
    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    iget-wide v4, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/EventInfoActivity;->updateResponse(Landroid/content/ContentResolver;JJI)V

    move v0, v10

    .line 732
    goto :goto_0

    .line 736
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v0}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v9

    .line 737
    .local v9, whichEvents:I
    packed-switch v9, :pswitch_data_0

    .line 747
    const-string v0, "EventInfoActivity"

    const-string v1, "Unexpected choice for updating invitation response"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 750
    goto :goto_0

    :pswitch_0
    move v0, v4

    .line 739
    goto :goto_0

    .line 741
    :pswitch_1
    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    iget-wide v4, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/EventInfoActivity;->createExceptionResponse(Landroid/content/ContentResolver;JJI)V

    move v0, v10

    .line 742
    goto :goto_0

    .line 744
    :pswitch_2
    iget-wide v2, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    iget-wide v4, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/EventInfoActivity;->updateResponse(Landroid/content/ContentResolver;JJI)V

    move v0, v10

    .line 745
    goto :goto_0

    .line 737
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setTextCommon(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "id"
    .parameter "text"

    .prologue
    .line 1198
    invoke-virtual {p0, p1}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1199
    .local v0, textView:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 1202
    :goto_0
    return-void

    .line 1201
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setVisibilityCommon(II)V
    .locals 1
    .parameter "id"
    .parameter "visibility"

    .prologue
    .line 1205
    invoke-virtual {p0, p1}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1206
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1207
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1209
    :cond_0
    return-void
.end method

.method private updateAttendees()V
    .locals 5

    .prologue
    .line 1023
    const v3, 0x7f0c0056

    invoke-virtual {p0, v3}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1024
    .local v0, attendeesLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 1025
    iget v3, p0, Lcom/android/calendar/EventInfoActivity;->mUpdateCounts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/calendar/EventInfoActivity;->mUpdateCounts:I

    .line 1026
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity;->mNoResponseAttendees:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1029
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1030
    .local v2, guestsLabel:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mNoResponseAttendees:Ljava/util/ArrayList;

    invoke-direct {p0, v3, v0, v2}, Lcom/android/calendar/EventInfoActivity;->addAttendeesToLayout(Ljava/util/ArrayList;Landroid/widget/LinearLayout;Ljava/lang/CharSequence;)V

    .line 1039
    .end local v2           #guestsLabel:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 1034
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1035
    .local v1, entries:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mAcceptedAttendees:Ljava/util/ArrayList;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-direct {p0, v3, v0, v4}, Lcom/android/calendar/EventInfoActivity;->addAttendeesToLayout(Ljava/util/ArrayList;Landroid/widget/LinearLayout;Ljava/lang/CharSequence;)V

    .line 1036
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mDeclinedAttendees:Ljava/util/ArrayList;

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-direct {p0, v3, v0, v4}, Lcom/android/calendar/EventInfoActivity;->addAttendeesToLayout(Ljava/util/ArrayList;Landroid/widget/LinearLayout;Ljava/lang/CharSequence;)V

    .line 1037
    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mTentativeAttendees:Ljava/util/ArrayList;

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-direct {p0, v3, v0, v4}, Lcom/android/calendar/EventInfoActivity;->addAttendeesToLayout(Ljava/util/ArrayList;Landroid/widget/LinearLayout;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateRemindersVisibility()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 689
    iget-boolean v0, p0, Lcom/android/calendar/EventInfoActivity;->mIsBusyFreeCalendar:Z

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mRemindersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 695
    :goto_0
    return-void

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mRemindersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 693
    iget-object v0, p0, Lcom/android/calendar/EventInfoActivity;->mReminderAdder:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->canAddReminders()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method private updateResponse(Landroid/content/ContentResolver;JJI)V
    .locals 5
    .parameter "cr"
    .parameter "eventId"
    .parameter "attendeeId"
    .parameter "status"

    .prologue
    const/4 v4, 0x0

    .line 756
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 758
    .local v1, values:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 759
    const-string v2, "attendeeEmail"

    iget-object v3, p0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :cond_0
    const-string v2, "attendeeStatus"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 762
    const-string v2, "event_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 764
    sget-object v2, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 765
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p1, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 766
    return-void
.end method

.method private updateTitle()V
    .locals 2

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 460
    .local v0, res:Landroid/content/res/Resources;
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mIsOrganizer:Z

    if-nez v1, :cond_0

    .line 461
    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/calendar/EventInfoActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 465
    :goto_0
    return-void

    .line 463
    :cond_0
    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/calendar/EventInfoActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateView()V
    .locals 31

    .prologue
    .line 888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    if-nez v3, :cond_0

    .line 1020
    :goto_0
    return-void

    .line 892
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 893
    .local v16, eventName:Ljava/lang/String;
    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 894
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 895
    .local v26, res:Landroid/content/res/Resources;
    const v3, 0x7f080009

    move-object/from16 v0, v26

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 898
    .end local v26           #res:Landroid/content/res/Resources;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    move v9, v3

    .line 899
    .local v9, allDay:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/16 v4, 0x9

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 900
    .local v21, location:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 901
    .local v13, description:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 902
    .local v24, rRule:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/16 v4, 0xa

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    move/from16 v19, v3

    .line 903
    .local v19, hasAlarm:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 904
    .local v18, eventTimezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/16 v4, 0xc

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const v4, -0x44000001

    and-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/EventInfoActivity;->mColor:I

    .line 906
    const v3, 0x7f0c0049

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 907
    .local v10, calBackground:Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/EventInfoActivity;->mColor:I

    move v3, v0

    invoke-virtual {v10, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 909
    const v3, 0x7f0c0003

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 910
    .local v28, title:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/EventInfoActivity;->mColor:I

    move v3, v0

    move-object/from16 v0, v28

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 912
    const v3, 0x7f0c004d

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 913
    .local v15, divider:Landroid/view/View;
    invoke-virtual {v15}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/EventInfoActivity;->mColor:I

    move v4, v0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 916
    if-eqz v16, :cond_3

    .line 917
    const v3, 0x7f0c0003

    move-object/from16 v0, p0

    move v1, v3

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 923
    :cond_3
    if-eqz v9, :cond_e

    .line 924
    const/16 v8, 0x2012

    .line 931
    .local v8, flags:I
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    move-wide v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    move-wide v6, v0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v30

    .line 932
    .local v30, when:Ljava/lang/String;
    const v3, 0x7f0c0004

    move-object/from16 v0, p0

    move v1, v3

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mUpdateTZ:Ljava/lang/Runnable;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v20

    .line 936
    .local v20, localTimezone:Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 937
    const-string v20, "UTC"

    .line 939
    :cond_5
    if-eqz v18, :cond_10

    if-nez v9, :cond_10

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 943
    :cond_6
    invoke-static/range {v20 .. v20}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v29

    .line 944
    .local v29, tz:Ljava/util/TimeZone;
    if-eqz v29, :cond_7

    invoke-virtual/range {v29 .. v29}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GMT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 945
    :cond_7
    move-object/from16 v14, v20

    .line 950
    .local v14, displayName:Ljava/lang/String;
    :goto_4
    const v3, 0x7f0c0030

    move-object/from16 v0, p0

    move v1, v3

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 956
    .end local v14           #displayName:Ljava/lang/String;
    .end local v29           #tz:Ljava/util/TimeZone;
    :goto_5
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 957
    new-instance v17, Landroid/pim/EventRecurrence;

    invoke-direct/range {v17 .. v17}, Landroid/pim/EventRecurrence;-><init>()V

    .line 958
    .local v17, eventRecurrence:Landroid/pim/EventRecurrence;
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/pim/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 959
    new-instance v12, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mUpdateTZ:Ljava/lang/Runnable;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 960
    .local v12, date:Landroid/text/format/Time;
    if-eqz v9, :cond_8

    .line 961
    const-string v3, "UTC"

    iput-object v3, v12, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 963
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    move-wide v3, v0

    invoke-virtual {v12, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 964
    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/pim/EventRecurrence;->setStartDate(Landroid/text/format/Time;)V

    .line 965
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/calendar/EventRecurrenceFormatter;->getRepeatString(Landroid/content/res/Resources;Landroid/pim/EventRecurrence;)Ljava/lang/String;

    move-result-object v25

    .line 967
    .local v25, repeatString:Ljava/lang/String;
    const v3, 0x7f0c0050

    move-object/from16 v0, p0

    move v1, v3

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 973
    .end local v12           #date:Landroid/text/format/Time;
    .end local v17           #eventRecurrence:Landroid/pim/EventRecurrence;
    .end local v25           #repeatString:Ljava/lang/String;
    :goto_6
    if-eqz v21, :cond_9

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_12

    .line 974
    :cond_9
    const v3, 0x7f0c0005

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 998
    :cond_a
    :goto_7
    if-eqz v13, :cond_b

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_14

    .line 999
    :cond_b
    const v3, 0x7f0c0035

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 1005
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    move-object v3, v0

    if-eqz v3, :cond_16

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1007
    .local v11, calendarName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    move-object v3, v0

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1008
    .local v22, ownerAccount:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/EventInfoActivity;->mIsDuplicateName:Z

    move v3, v0

    if-eqz v3, :cond_15

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1009
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    .line 1010
    .restart local v26       #res:Landroid/content/res/Resources;
    const v3, 0x7f0c004c

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 1011
    .local v23, ownerText:Landroid/widget/TextView;
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    const v3, 0x7f070007

    move-object/from16 v0, v26

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move-object/from16 v0, v23

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1016
    .end local v23           #ownerText:Landroid/widget/TextView;
    .end local v26           #res:Landroid/content/res/Resources;
    :goto_9
    const v3, 0x7f0c0014

    move-object/from16 v0, p0

    move v1, v3

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 898
    .end local v8           #flags:I
    .end local v9           #allDay:Z
    .end local v10           #calBackground:Landroid/view/View;
    .end local v11           #calendarName:Ljava/lang/String;
    .end local v13           #description:Ljava/lang/String;
    .end local v15           #divider:Landroid/view/View;
    .end local v18           #eventTimezone:Ljava/lang/String;
    .end local v19           #hasAlarm:Z
    .end local v20           #localTimezone:Ljava/lang/String;
    .end local v21           #location:Ljava/lang/String;
    .end local v22           #ownerAccount:Ljava/lang/String;
    .end local v24           #rRule:Ljava/lang/String;
    .end local v28           #title:Landroid/widget/TextView;
    .end local v30           #when:Ljava/lang/String;
    :cond_c
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_1

    .line 902
    .restart local v9       #allDay:Z
    .restart local v13       #description:Ljava/lang/String;
    .restart local v21       #location:Ljava/lang/String;
    .restart local v24       #rRule:Ljava/lang/String;
    :cond_d
    const/4 v3, 0x0

    move/from16 v19, v3

    goto/16 :goto_2

    .line 926
    .restart local v10       #calBackground:Landroid/view/View;
    .restart local v15       #divider:Landroid/view/View;
    .restart local v18       #eventTimezone:Ljava/lang/String;
    .restart local v19       #hasAlarm:Z
    .restart local v28       #title:Landroid/widget/TextView;
    :cond_e
    const/16 v8, 0x11

    .line 927
    .restart local v8       #flags:I
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 928
    or-int/lit16 v8, v8, 0x80

    goto/16 :goto_3

    .line 947
    .restart local v20       #localTimezone:Ljava/lang/String;
    .restart local v29       #tz:Ljava/util/TimeZone;
    .restart local v30       #when:Ljava/lang/String;
    :cond_f
    invoke-virtual/range {v29 .. v29}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v14

    .restart local v14       #displayName:Ljava/lang/String;
    goto/16 :goto_4

    .line 952
    .end local v14           #displayName:Ljava/lang/String;
    .end local v29           #tz:Ljava/util/TimeZone;
    :cond_10
    const v3, 0x7f0c004e

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    goto/16 :goto_5

    .line 969
    :cond_11
    const v3, 0x7f0c004f

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    goto/16 :goto_6

    .line 976
    :cond_12
    const v3, 0x7f0c0005

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 977
    .local v27, textView:Landroid/widget/TextView;
    if-eqz v27, :cond_a

    .line 978
    const/4 v3, 0x0

    move-object/from16 v0, v27

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 979
    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 980
    const/16 v3, 0xb

    move-object/from16 v0, v27

    move v1, v3

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    move-result v3

    if-nez v3, :cond_13

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mWildcardPattern:Ljava/util/regex/Pattern;

    move-object v3, v0

    const-string v4, "geo:0,0?q="

    move-object/from16 v0, v27

    move-object v1, v3

    move-object v2, v4

    invoke-static {v0, v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 984
    :cond_13
    new-instance v3, Lcom/android/calendar/EventInfoActivity$3;

    move-object v0, v3

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/EventInfoActivity$3;-><init>(Lcom/android/calendar/EventInfoActivity;)V

    move-object/from16 v0, v27

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_7

    .line 1001
    .end local v27           #textView:Landroid/widget/TextView;
    :cond_14
    const v3, 0x7f0c0035

    move-object/from16 v0, p0

    move v1, v3

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 1014
    .restart local v11       #calendarName:Ljava/lang/String;
    .restart local v22       #ownerAccount:Ljava/lang/String;
    :cond_15
    const v3, 0x7f0c004c

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    goto/16 :goto_9

    .line 1018
    .end local v11           #calendarName:Ljava/lang/String;
    .end local v22           #ownerAccount:Ljava/lang/String;
    :cond_16
    const v3, 0x7f0c004a

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    goto/16 :goto_0
.end method


# virtual methods
.method isDuplicateName(Ljava/lang/String;)Z
    .locals 9
    .parameter "displayName"

    .prologue
    const/4 v8, 0x1

    .line 468
    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/calendar/EventInfoActivity;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName=?"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/EventInfoActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 470
    .local v6, dupNameCursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 471
    .local v7, isDuplicateName:Z
    if-eqz v6, :cond_1

    .line 472
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v8, :cond_0

    .line 473
    const/4 v7, 0x1

    .line 475
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 477
    :cond_1
    return v7
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 283
    .local v1, reminderItem:Landroid/widget/LinearLayout;
    if-nez v1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 287
    .local v0, parent:Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 291
    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 292
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->updateRemindersVisibility()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 30
    .parameter "icicle"

    .prologue
    .line 325
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    .line 329
    .local v21, intent:Landroid/content/Intent;
    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 331
    .local v15, cr:Landroid/content/ContentResolver;
    const-string v4, "beginTime"

    const-wide/16 v8, 0x0

    move-object/from16 v0, v21

    move-object v1, v4

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-wide v0, v8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/calendar/EventInfoActivity;->mStartMillis:J

    .line 332
    const-string v4, "endTime"

    const-wide/16 v8, 0x0

    move-object/from16 v0, v21

    move-object v1, v4

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    move-wide v0, v8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/calendar/EventInfoActivity;->mEndMillis:J

    .line 333
    const-string v4, "attendeeStatus"

    const/4 v5, -0x1

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/EventInfoActivity;->mAttendeeResponseFromIntent:I

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    move-object v5, v0

    sget-object v6, Lcom/android/calendar/EventInfoActivity;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/calendar/EventInfoActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    .line 335
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->initEventCursor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->finish()V

    .line 443
    .end local p1
    :goto_0
    return-void

    .line 341
    .restart local p1
    :cond_0
    const v4, 0x7f030011

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->setContentView(I)V

    .line 342
    new-instance v4, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;-><init>(Lcom/android/calendar/EventInfoActivity;Landroid/content/Context;Landroid/content/ContentResolver;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mPresenceQueryHandler:Lcom/android/calendar/EventInfoActivity$PresenceQueryHandler;

    .line 343
    const-string v4, "layout_inflater"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/LayoutInflater;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 344
    const v4, 0x7f0c000f

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mRemindersContainer:Landroid/widget/LinearLayout;

    .line 345
    const v4, 0x7f0c0051

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mOrganizerContainer:Landroid/widget/LinearLayout;

    .line 346
    const v4, 0x7f0c0052

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mOrganizerView:Landroid/widget/TextView;

    .line 349
    sget-object v5, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 350
    .local v5, uri:Landroid/net/Uri;
    const-string v4, "_id=%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v8, v0

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 351
    .local v7, where:Ljava/lang/String;
    sget-object v6, Lcom/android/calendar/EventInfoActivity;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/calendar/EventInfoActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    .line 352
    const-string v4, ""

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    move-object v4, v0

    if-eqz v4, :cond_1

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    move-object v4, v0

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local v5           #uri:Landroid/net/Uri;
    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    move-object v4, v0

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/EventInfoActivity;->mOrganizerCanRespond:Z

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 359
    .local v16, displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->isDuplicateName(Ljava/lang/String;)Z

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/EventInfoActivity;->mIsDuplicateName:Z

    .line 361
    .end local v16           #displayName:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v4, v0

    const/16 v5, 0x10

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 362
    .local v18, eventOrganizer:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/EventInfoActivity;->mIsOrganizer:Z

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v4, v0

    const/16 v5, 0xd

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/EventInfoActivity;->mHasAttendeeData:Z

    .line 365
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->updateView()V

    .line 368
    sget-object v5, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 369
    .restart local v5       #uri:Landroid/net/Uri;
    const-string v4, "event_id=%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    move-wide v8, v0

    .end local v7           #where:Ljava/lang/String;
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 370
    .restart local v7       #where:Ljava/lang/String;
    sget-object v6, Lcom/android/calendar/EventInfoActivity;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "attendeeName ASC, attendeeEmail ASC"

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/calendar/EventInfoActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    .line 372
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->initAttendeesCursor()V

    .line 374
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mOrganizer:Ljava/lang/String;

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v4, v0

    const/16 v6, 0xb

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v6, 0x1f4

    if-lt v4, v6, :cond_5

    const/4 v4, 0x1

    :goto_3
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v4, v0

    const/16 v6, 0xb

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v6, 0x64

    if-ne v4, v6, :cond_6

    const/4 v4, 0x1

    :goto_4
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/EventInfoActivity;->mIsBusyFreeCalendar:Z

    .line 380
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    move v4, v0

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendar/EventInfoActivity;->mIsOrganizer:Z

    move v4, v0

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v4, v0

    const/16 v6, 0xe

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_7

    :cond_2
    const/4 v4, 0x1

    :goto_5
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/EventInfoActivity;->mCanModifyEvent:Z

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 385
    .local v25, r:Landroid/content/res/Resources;
    const v4, 0x7f060001

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v29

    .line 386
    .local v29, strings:[Ljava/lang/String;
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v28, v0

    .line 387
    .local v28, size:I
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 388
    .local v23, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v20, 0x0

    .local v20, i:I
    :goto_6
    move/from16 v0, v20

    move/from16 v1, v28

    if-ge v0, v1, :cond_8

    .line 389
    aget-object v4, v29, v20

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 356
    .end local v5           #uri:Landroid/net/Uri;
    .end local v18           #eventOrganizer:Ljava/lang/String;
    .end local v20           #i:I
    .end local v23           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v25           #r:Landroid/content/res/Resources;
    .end local v28           #size:I
    .end local v29           #strings:[Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 363
    .restart local v18       #eventOrganizer:Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 375
    .restart local v5       #uri:Landroid/net/Uri;
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 377
    :cond_6
    const/4 v4, 0x0

    goto :goto_4

    .line 380
    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    .line 391
    .restart local v20       #i:I
    .restart local v23       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v25       #r:Landroid/content/res/Resources;
    .restart local v28       #size:I
    .restart local v29       #strings:[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    .line 392
    const/high16 v4, 0x7f06

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v22

    .line 393
    .local v22, labels:[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-static/range {v22 .. v22}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mReminderLabels:Ljava/util/ArrayList;

    .line 395
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/CalendarPreferenceActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 396
    .local v24, prefs:Landroid/content/SharedPreferences;
    const-string v4, "preferences_default_reminder"

    const-string v6, "0"

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 398
    .local v17, durationString:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/calendar/EventInfoActivity;->mDefaultReminderMinutes:I

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object v4, v0

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    move/from16 v19, v4

    .line 402
    .local v19, hasAlarm:Z
    :goto_7
    if-eqz v19, :cond_c

    .line 403
    sget-object v5, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 404
    const-string v4, "event_id=%d AND (method=1 OR method=0)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    move-wide v8, v0

    .end local v7           #where:Ljava/lang/String;
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 405
    .restart local v7       #where:Ljava/lang/String;
    sget-object v6, Lcom/android/calendar/EventInfoActivity;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "minutes"

    move-object v4, v15

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 410
    .local v27, reminderCursor:Landroid/database/Cursor;
    :goto_8
    :try_start_0
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 411
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 412
    .local v13, minutes:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mReminderLabels:Ljava/util/ArrayList;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v6

    move v3, v13

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/EditEvent;->addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    .line 424
    .end local v13           #minutes:I
    :catchall_0
    move-exception v4

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    throw v4

    .line 401
    .end local v19           #hasAlarm:Z
    .end local v27           #reminderCursor:Landroid/database/Cursor;
    :cond_9
    const/4 v4, 0x0

    move/from16 v19, v4

    goto :goto_7

    .line 416
    .restart local v19       #hasAlarm:Z
    .restart local v27       #reminderCursor:Landroid/database/Cursor;
    :cond_a
    const/4 v4, -0x1

    :try_start_1
    move-object/from16 v0, v27

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 417
    :goto_9
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 418
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 419
    .restart local v13       #minutes:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mOriginalMinutes:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/EventInfoActivity;->mReminderLabels:Ljava/util/ArrayList;

    move-object v12, v0

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    invoke-static/range {v8 .. v13}, Lcom/android/calendar/EditEvent;->addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    .line 424
    .end local v13           #minutes:I
    :cond_b
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 427
    .end local v27           #reminderCursor:Landroid/database/Cursor;
    :cond_c
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendar/EventInfoActivity;->mOriginalHasAlarm:Z

    .line 430
    new-instance v14, Lcom/android/calendar/EventInfoActivity$2;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/EventInfoActivity$2;-><init>(Lcom/android/calendar/EventInfoActivity;)V

    .line 435
    .local v14, addReminderOnClickListener:Landroid/view/View$OnClickListener;
    const v4, 0x7f0c0043

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageButton;

    .line 436
    .local v26, reminderAddButton:Landroid/widget/ImageButton;
    move-object/from16 v0, v26

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    const v4, 0x7f0c0057

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mReminderAdder:Landroid/widget/LinearLayout;

    .line 439
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/EventInfoActivity;->updateRemindersVisibility()V

    .line 441
    new-instance v4, Lcom/android/calendar/DeleteEventHelper;

    const/4 v5, 0x1

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/app/Activity;Z)V

    .end local v5           #uri:Landroid/net/Uri;
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 442
    new-instance v4, Lcom/android/calendar/EditResponseHelper;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/EditResponseHelper;-><init>(Landroid/app/Activity;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 616
    const v1, 0x7f08002b

    invoke-interface {p1, v3, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 618
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x7f020011

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 619
    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 621
    const v1, 0x7f080049

    invoke-interface {p1, v4, v4, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 622
    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 623
    const/16 v1, 0x65

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 625
    const v1, 0x7f08004b

    invoke-interface {p1, v5, v5, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 626
    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 628
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    if-nez v1, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mIsRepeating:Z

    if-eqz v1, :cond_0

    .line 310
    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    invoke-direct {p0, v1}, Lcom/android/calendar/EventInfoActivity;->findResponseIndexFor(I)I

    move-result v0

    .line 311
    .local v0, index:I
    iget v1, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    add-int/2addr v1, v0

    if-eq p3, v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/android/calendar/EditResponseHelper;

    invoke-virtual {v2}, Lcom/android/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/calendar/EditResponseHelper;->showDialog(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 681
    const/16 v0, 0x43

    if-ne p1, v0, :cond_0

    .line 682
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->doDelete()V

    .line 683
    const/4 v0, 0x1

    .line 685
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 664
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 665
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 676
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 667
    :pswitch_0
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->addReminder()V

    goto :goto_0

    .line 670
    :pswitch_1
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->doEdit()V

    goto :goto_0

    .line 673
    :pswitch_2
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->doDelete()V

    goto :goto_0

    .line 665
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 13

    .prologue
    .line 581
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 583
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 584
    .local v7, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/calendar/EditEvent;->reminderItemsToMinutes(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 586
    .local v3, reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 587
    .local v0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-wide v1, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    iget-object v4, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalMinutes:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/EditEvent;->saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    move-result v6

    .line 591
    .local v6, changed:Z
    :try_start_0
    sget-object v1, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 593
    sget-object v1, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/calendar/EventInfoActivity;->mEventId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 594
    .local v11, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 595
    .local v10, len:I
    if-lez v10, :cond_2

    const/4 v1, 0x1

    move v9, v1

    .line 596
    .local v9, hasAlarm:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalHasAlarm:Z

    if-eq v9, v1, :cond_0

    .line 597
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 598
    .local v12, values:Landroid/content/ContentValues;
    const-string v1, "hasAlarm"

    if-eqz v9, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 599
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v7, v11, v12, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 607
    .end local v9           #hasAlarm:Z
    .end local v10           #len:I
    .end local v11           #uri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_2
    invoke-direct {p0, v7}, Lcom/android/calendar/EventInfoActivity;->saveResponse(Landroid/content/ContentResolver;)Z

    move-result v1

    or-int/2addr v6, v1

    .line 608
    if-eqz v6, :cond_1

    .line 609
    const v1, 0x7f080023

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 611
    :cond_1
    return-void

    .line 595
    .restart local v10       #len:I
    .restart local v11       #uri:Landroid/net/Uri;
    :cond_2
    const/4 v1, 0x0

    move v9, v1

    goto :goto_0

    .line 598
    .restart local v9       #hasAlarm:Z
    .restart local v12       #values:Landroid/content/ContentValues;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 601
    .end local v9           #hasAlarm:Z
    .end local v10           #len:I
    .end local v11           #uri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 602
    .local v8, e:Landroid/os/RemoteException;
    const-string v1, "EventInfoActivity"

    const-string v2, "Ignoring exception: "

    invoke-static {v1, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 603
    .end local v8           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v8, v1

    .line 604
    .local v8, e:Landroid/content/OperationApplicationException;
    const-string v1, "EventInfoActivity"

    const-string v2, "Ignoring exception: "

    invoke-static {v1, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 633
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->canAddReminders()Z

    move-result v0

    .line 634
    .local v0, canAddReminders:Z
    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 635
    invoke-interface {p1, v1, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 637
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mCanModifyEvent:Z

    invoke-interface {p1, v2, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 638
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mCanModifyEvent:Z

    invoke-interface {p1, v2, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 639
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    invoke-interface {p1, v3, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 640
    iget-boolean v1, p0, Lcom/android/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    invoke-interface {p1, v3, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 642
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 447
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 448
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->initEventCursor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->finish()V

    .line 456
    :goto_0
    return-void

    .line 453
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->initCalendarsCursor()V

    .line 454
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->updateResponse()V

    .line 455
    invoke-direct {p0}, Lcom/android/calendar/EventInfoActivity;->updateTitle()V

    goto :goto_0
.end method

.method public showContactInfo(Lcom/android/calendar/EventInfoActivity$Attendee;Landroid/graphics/Rect;)V
    .locals 11
    .parameter "attendee"
    .parameter "rect"

    .prologue
    const/4 v10, 0x0

    .line 1219
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1220
    .local v5, resolver:Landroid/content/ContentResolver;
    iget-object v0, p1, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    .line 1221
    .local v0, address:Ljava/lang/String;
    sget-object v8, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1223
    .local v1, dataUri:Landroid/net/Uri;
    invoke-static {v5, v1}, Landroid/provider/ContactsContract$Data;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 1225
    .local v3, lookupUri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 1227
    const/4 v8, 0x2

    invoke-static {p0, p2, v3, v8, v10}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/graphics/Rect;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 1245
    :goto_0
    return-void

    .line 1230
    :cond_0
    const-string v8, "mailto"

    invoke-static {v8, v0, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1231
    .local v4, mailUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v2, v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1234
    .local v2, intent:Landroid/content/Intent;
    new-instance v6, Landroid/text/util/Rfc822Token;

    iget-object v8, p1, Lcom/android/calendar/EventInfoActivity$Attendee;->mName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/calendar/EventInfoActivity$Attendee;->mEmail:Ljava/lang/String;

    invoke-direct {v6, v8, v9, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    .local v6, sender:Landroid/text/util/Rfc822Token;
    const-string v8, "com.android.contacts.action.CREATE_DESCRIPTION"

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1238
    iget-object v7, p1, Lcom/android/calendar/EventInfoActivity$Attendee;->mName:Ljava/lang/String;

    .line 1239
    .local v7, senderPersonal:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1240
    const-string v8, "name"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1243
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/calendar/EventInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method updateResponse()V
    .locals 9

    .prologue
    const v8, 0x7f0c0053

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1157
    iget-boolean v4, p0, Lcom/android/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/calendar/EventInfoActivity;->mHasAttendeeData:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/calendar/EventInfoActivity;->mIsOrganizer:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/calendar/EventInfoActivity;->mNumOfAttendees:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    :cond_0
    iget-boolean v4, p0, Lcom/android/calendar/EventInfoActivity;->mIsOrganizer:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/calendar/EventInfoActivity;->mOrganizerCanRespond:Z

    if-nez v4, :cond_2

    .line 1159
    :cond_1
    const/16 v4, 0x8

    invoke-direct {p0, v8, v4}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 1195
    :goto_0
    return-void

    .line 1163
    :cond_2
    invoke-direct {p0, v8, v7}, Lcom/android/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 1165
    const v4, 0x7f0c0055

    invoke-virtual {p0, v4}, Lcom/android/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 1167
    .local v3, spinner:Landroid/widget/Spinner;
    iput v7, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    .line 1174
    iget v4, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    if-eq v4, v6, :cond_3

    iget v4, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    if-eqz v4, :cond_3

    .line 1178
    invoke-virtual {p0}, Lcom/android/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1179
    .local v1, entries:[Ljava/lang/CharSequence;
    iput v6, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    .line 1180
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v0, p0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1183
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1184
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1188
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v1           #entries:[Ljava/lang/CharSequence;
    :cond_3
    iget v4, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeeResponseFromIntent:I

    if-eq v4, v6, :cond_4

    .line 1189
    iget v4, p0, Lcom/android/calendar/EventInfoActivity;->mAttendeeResponseFromIntent:I

    invoke-direct {p0, v4}, Lcom/android/calendar/EventInfoActivity;->findResponseIndexFor(I)I

    move-result v2

    .line 1193
    .local v2, index:I
    :goto_1
    iget v4, p0, Lcom/android/calendar/EventInfoActivity;->mResponseOffset:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1194
    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    .line 1191
    .end local v2           #index:I
    :cond_4
    iget v4, p0, Lcom/android/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    invoke-direct {p0, v4}, Lcom/android/calendar/EventInfoActivity;->findResponseIndexFor(I)I

    move-result v2

    .restart local v2       #index:I
    goto :goto_1
.end method
